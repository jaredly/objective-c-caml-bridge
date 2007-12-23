open Printf
open Ast
open Parser
open Btypes

let dlvl=20

(* Filtering out some constructs for now *)
let rec filtered_stream lexer n =
  match Lexobjc.objc_dot_h lexer with
    | Lexobjc.EOF -> None
    | Lexobjc.Preproc s -> filtered_stream lexer (succ n)
    | Lexobjc.Comment s -> filtered_stream lexer (succ n)
    | t -> Some t

let from_channel ic =
  let lexer = Lexing.from_channel ic in
  let token_stream = Stream.from (filtered_stream lexer) in
  Parser.dot_h token_stream

(* Filter out: variable number of args (can't use NSInvocation for this) *)
let has_vararg (_,_,sels) =
  List.exists (function (_, Some (_,_,true)) -> true | _ -> false) sels

(* trim method version w/o optional args 
 * a: isn't needed if a:b: exists and b: can be made optional
 * in a:b:, b: can be made optional if a: exists
 *)
(* dump arg name from selector description *)
let abstract_selector = List.map (function 
  | (s, Some (t,a,_)) -> (s, Some t)
  | (s, None) -> (s, None))

(* figure out whether we can use opt labelled args, depending on versions of the arguments *)
(* note: this ignores return type as well as type of first argument *)
let reduce_prefix compile sel = function
  | [] -> (* no version of the selector? *)
      assert false
  | [x] -> (* only one version of the selector, all args are needed *)
      compile#add_selector (sel::x) (List.map (fun _ -> true) x)
  | [long; small] -> (* two versions *)
	let n = List.length small in
	if Utils.hdn n long = small then begin (* small is prefix of long *)
	  let a = Array.make (List.length long) false in
	    for i = 0 to n -1 do a.(i) <- true done;
	    compile#add_selector (sel::long) (Array.to_list a)
	  end 
	else begin (* not redundant - not that we can't compile both then, due to method naming *)
	    Debug.f ~lvl:dlvl "GENERATOR_DEBUG: can't resolve duplicate selector, using random one: %s" (fst sel);
	    compile#add_selector (sel::long) (List.map (fun _ -> true) long);
	    (* compile#add_selector (sel::small) (List.map (fun _ -> true) small) *)
	  end
  | long::rest -> (* more than 2 versions *)
      (* compile the long form w/ all optional args *)
      Debug.f ~lvl:dlvl "GENERATOR_DEBUG: unsupported prefix reduction, using longest form : %s" (fst sel);
      compile#add_selector (sel::long) (List.map (fun _ -> false) long)

(* Overloading (multiple version of a selector w/ different types) is not supported *)
class ['a, 'b] unique_selectors n = object (self)
  inherit ['a, 'b] Ohash.t n  as super
  val firsts = new Ohash.t n
  method add_selector k v =
    let first = fst (List.hd k) in
      try
	let _ = firsts#find first in
	  false (* can't add, already have one w/ that first sel *)
      with
	| Not_found ->
	    super#add k v;
	    firsts#add first true;
	    true
end

(* Two-pass trimming of methods with redundant sets of arguments *)
let trim_methods il =
  let im = new Ohash.autoinit (fun _ -> ref[]) 53   (* argument variations for a selector - instance methods *)
  and cm = new Ohash.autoinit (fun _ -> ref[]) 53   (* argument variations for a selector - class methods *)
  and imc = new unique_selectors 53 (* instance methods: we'll compile these *)
  and cmc = new unique_selectors 53 (* class methods: we'll compile these *)
  in
    (* first pass: collect selectors, keyed by first part of selector *)
    List.iter (function (_,_,_,methods) ->
      List.iter (function (k , _, selectors) ->
	  let h = match k with ClassMethod -> cm | InstanceMethod -> im in
	  match abstract_selector selectors with
	    | [] -> assert false
	    | x::l -> Utils.add_hd l (h#find x))
	methods)
      il;
    (* invoking the prefix logic, passing sorted list of selector versions *)
    let trim_selector compile sel versions =
      if not (reduce_prefix compile sel (Sort.list (fun l1 l2 -> List.length l1 > List.length l2) !versions)) then
	Debug.f ~lvl:dlvl "GENERATOR_DEBUG: can't resolve duplicate first selector %s, skipping" (fst sel)
    (* second pass: build the hashes of what we want to compile *)
    in 
      im#iter (trim_selector imc) ;
      cm#iter (trim_selector cmc);
      (cmc, imc)

(* compile a method *)
let compile_method uniqueh trimh ow ((kind, ret_type, selectors) : method_declaration) = 
  try
    let sels = abstract_selector selectors in
    let optargs = trimh#find sels in  (* check if it's allowed *)
      ow#ml_defer; (* methods with unsupported type conversion or other "unsupported" features will be commented out *)
      (* filtering out methods with same sets of arguments but different return types *)
      begin
	let name = List.hd sels in
	  try
	    let _ = uniqueh#find name in
	      ow#ml "(* unsupported: already have a method with that name compiled *)\n"
	  with
	    | Not_found -> uniqueh#add name true
      end;
      begin match selectors with
	| [sel, None] -> (* one selector, no named args *)
	    kprintf (ow#mltab 2) "method %s =\n" (Hardcoded.rename_method sel);
	    kprintf (ow#mltab 4) "(" ; native2caml ow#ml ret_type;
	    kprintf ow#ml " (Objc.invoke %s o (Selector.find \"%s:\")[])" (Btypes.tag ret_type) sel;
	    kprintf ow#ml " : ";
	    Btypes.ret_type ow#ml ret_type;
	    kprintf ow#ml ")\n";
	    ()

	| [sel, Some(argt, argn, false)] -> (* one selector w/ named arg *)
	    kprintf (ow#mltab 2) "method %s " (Hardcoded.rename_method sel);
	    Btypes.typed_expr ow#ml argt argn;
	    kprintf ow#ml " =\n";
	    kprintf (ow#mltab 4) "(" ; native2caml ow#ml ret_type;
	    kprintf ow#ml " (Objc.invoke %s o (Selector.find \"%s:\")[%s %s])" 
	      (Btypes.tag ret_type) sel (caml2native argt) argn;
	    kprintf ow#ml " : ";
	    Btypes.ret_type ow#ml ret_type;
	    kprintf ow#ml ")\n";
	    ()

	| (sel, Some (argt, argn, false))::rest ->
	    (* method name is first selector *)
	    kprintf (ow#mltab 2) "method %s " (Hardcoded.rename_method sel);
	    (* all other selectors are assumed to be optional args *)
	    List.iter2 (fun is_needed a ->
	      match a with
		| (sel, Some(argt, argn, false)) -> 
		    kprintf ow#ml " %c%s:(%s : " (if is_needed then '~' else '?') sel argn;
		    Btypes.arg_type ow#ml argt;
		    kprintf ow#ml " %s)" (if is_needed then "" else "option")
		| _ -> assert false (* TBD *)
		       ) optargs rest;
	    
	    (* name of first selector argument *)
	    kprintf ow#ml " ";
	    Btypes.typed_expr ow#ml argt argn;
	    kprintf ow#ml " =\n";
	    (* building the selector and argument list *)
	    kprintf (ow#mltab 4) "let sel, args = (\n";
	    kprintf (ow#mltab 6) "Objc.arg %s \"%s\" %s\n" argn sel (caml2native argt);
	    List.iter2 (fun is_needed a ->
	      match a with
		| (sel, Some(argt, argn, false)) ->
		    kprintf (ow#mltab 6) "++ Objc.%s %s \"%s\" %s\n" 
		      (if is_needed then "arg" else "opt_arg") 
		      argn sel (caml2native argt)
		| _ -> assert false
		       ) optargs rest ;
	    kprintf (ow#mltab 4) ") ([],[]) in\n";
	    kprintf (ow#mltab 6) "(";
	    native2caml ow#ml ret_type;
	    kprintf ow#ml " (Objc.invoke %s o (Selector.find_list sel) args)" (Btypes.tag ret_type);
	    kprintf ow#ml " : ";
	    Btypes.ret_type ow#ml ret_type;
	    kprintf ow#ml ")\n"
	| _ -> assert false
      end;
      ow#ml_flush
  with
    | Not_found -> 
	kprintf (ow#mltab 2) "(* skipping selector %s *)\n" 
	  (String.concat ":" (List.map fst selectors))

let handle_phrase todo = function
  | Comment s -> () (* filtered out at lexing level for now *)
  | Interface (name, i) -> todo#add_interface name i
  | Import i -> todo#add_import i
  | Ignore -> ()
  | Class _ -> ()
  | Preproc _ -> ()
  | Protocol _ -> ()
  | Enum _ -> ()

let is_class_method = function
  | (ClassMethod, _ , _) -> true
  | (InstanceMethod, _ ,_) -> false
let is_instance_method m = not (is_class_method m)

(* When a class method has a return type (id), it must be (?)
 * the same as the class type
 *)
let fix_class_return_type name = function
  | ClassMethod, NamedType id, sels -> ClassMethod, Pointer (false, NamedType name), sels
  | m -> m

(* All categories for a name are merged into one class;
 * Obviously this is limited to categories declared within the same
 * file, so not all of the Objective-C allowed use-cases are supported 
 *)
let compile_interface ow name il = 
  (* register the class object *)
  kprintf (ow#ctab 2) "arg1 = caml_copy_string(\"%s\");\n" name;
  kprintf (ow#ctab 2) "arg2 = caml_wrap_id([%s class]);\n" name; 
  kprintf (ow#ctab 2) "caml_callback2(*register_class,arg1,arg2);\n";
  (* the class methods *)
  kprintf ow#ml "(* Class object for %s *)\n" name;
  kprintf ow#ml "let class_%s = object\n" name;
  kprintf (ow#mltab 2) "val o = Classes.find \"%s\"\n" name;
  kprintf (ow#mltab 2) "method _new = (Objc.objcnew o : [`%s] nativeNSObject)\n" name;
  kprintf (ow#mltab 2) "method _alloc = (Objc.objcalloc o : [`%s] nativeNSObject)\n" name;

  (* register all selectors *)
  List.iter (function (_,_,_,methods) ->
    List.iter (function (k , _, selectors) ->
      let sels = List.map fst selectors in
      let selname = String.concat ":" sels in
	kprintf (ow#ctab 2) "arg1 = caml_copy_string(\"%s:\");\n" selname;
	(* it's a little bit unclear what @selector expects *)
	kprintf (ow#ctab 2) "arg2 = caml_wrap_pointer(@selector(%s%c));\n" selname 
	  (match selectors with [x,None] -> ' ' | _ -> ':'); 
  	kprintf (ow#ctab 2) "caml_callback2(*register_selector, arg1, arg2);\n"
	      )
      methods)
    il;
  
  (* Determine which methods to compile *)  
  let cm,im = trim_methods il in
  let ucm, uim = new Ohash.t 53, new Ohash.t 53 in (* used for enforcing unicity of method names *)
  List.iter (function
    | Ast.ClassInterface parent, protos, decls, methods ->
	List.iter (compile_method ucm cm ow) 
	  (List.map (fix_class_return_type name) (List.filter (fun m -> is_class_method m && not (has_vararg m)) methods))
    | Ast.CategoryInterface cat, protos, decls, methods ->
	kprintf ow#ml "(* methods for category %s *)\n" cat;
	List.iter (compile_method ucm cm ow) 
	  (List.map (fix_class_return_type name) (List.filter (fun m -> is_class_method m && not (has_vararg m)) methods))
	    ) il;
  kprintf ow#ml "end\n";

  (* the instance methods *)
  kprintf ow#ml "(* Encapsulation for native instance of %s *)\n" name;
  kprintf ow#ml "class native_%s = fun (o : [`%s] nativeNSObject) -> object (self)\n" name name;
  kprintf (ow#mltab 2) "val o = o\n";
  kprintf (ow#mltab 2) "method o = o\n";
  List.iter (function
    | Ast.ClassInterface parent, protos, decls, methods ->
	List.iter (compile_method uim im ow) 
	  (List.filter (fun m -> is_instance_method m && not (has_vararg m)) methods)
    | Ast.CategoryInterface cat, protos, decls, methods ->
	kprintf ow#ml "(* methods for category %s *)\n" cat;
	List.iter (compile_method uim im ow) 
	  (List.filter (fun m -> is_instance_method m && not (has_vararg m)) methods)
	    ) il;
  kprintf ow#ml "end\n"

let compile_import ow s =
  (* some hard coded voodoo on names *)
  let m = Filename.chop_suffix (Filename.basename s) ".h" in
    begin match m with
      | s when String.length m > 2 && String.sub m 0 2 = "NS" ->
	  kprintf ow#ml "open %s\n" m
      | _ -> ()
    end


let handle_phrases todo = List.iter (handle_phrase todo)

(* we want to generate phrases, but be able to easily comment them out if we detect something
 * in the output
 *)
let deferred oc (c_start, c_end) = object (self)
  val buffer = Buffer.create 256
  val mutable defer_mode = false
  method output_string s =
    if defer_mode then Buffer.add_string buffer s
    else output_string oc s
  method output_char c =
    if defer_mode then Buffer.add_char buffer c
    else output_char oc c
  method defer = defer_mode <- true

  val r = Str.regexp_string "unsupported"

  method flush = 
    let finally() = defer_mode <- false; Buffer.clear buffer in
    let s = Buffer.contents buffer in 
      try 
	let _ = Str.search_forward r s 0 in
	  output_string oc c_start;
	  output_string oc s;
	  output_string oc c_end;
	  finally()
      with
	| Not_found -> 
	    output_string oc s;
	    finally()

  method close =
    close_out oc

end


let default_out_dir = ref "./lib"
let outfiles ?(out_dir = !default_out_dir)  f = 
  let base = Filename.chop_suffix (Filename.basename f) ".h" in
  let f_ml = Filename.concat out_dir (base ^ ".ml")
  and f_m = Filename.concat out_dir ("caml" ^ base ^ ".m")
  in
  let oc_ml = open_out f_ml
  and oc_m = open_out f_m
  in object (self)
    val d_ml = deferred oc_ml ("(*  UNSUPPORTED\n", "\n*)\n")
    val d_m = deferred oc_m ("/* UNSUPPORTED\n", "\n*/\n")
    method ml s = d_ml#output_string s
    method c s = d_m#output_string s
    method mltab lvl s =
      for i = 0 to lvl do d_ml#output_char ' ' done;
      self#ml s
    method ctab lvl s = 
      for i = 0 to lvl do d_m#output_char ' ' done;
      self#c s
    method close = d_ml#close; d_m#close

    method ml_defer = d_ml#defer
    method ml_flush = d_ml#flush
  end

let preludes ow todo f =
  let base = Filename.chop_suffix (Filename.basename f) ".h" in
    kprintf ow#c "// THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD\n";
    kprintf ow#c "#include <caml/mlvalues.h>\n";
    kprintf ow#c "#include <caml/memory.h>\n";
    kprintf ow#c "#include <caml/callback.h>\n";
    kprintf ow#c "#import <%s>\n" f;

    kprintf ow#ml "(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)\n";
    kprintf ow#ml "open Objc\n";
    todo#compile_imports ow;

    kprintf ow#c "value caml_init_%s(value unit)\n" base;
    kprintf ow#c "{\n";
    kprintf (ow#ctab 2) "CAMLparam0();\n";
    kprintf (ow#ctab 2) "CAMLlocal2(arg1, arg2);\n";
    kprintf (ow#ctab 2) "value *register_class = caml_named_value(\"register_class\");\n";
    kprintf (ow#ctab 2) "value *register_selector = caml_named_value(\"register_selector\");\n";

    kprintf ow#ml "\n\n";
    kprintf ow#ml "external init : unit -> unit = \"caml_init_%s\"\n" base;
    kprintf ow#ml "let _ = init()\n"


let postludes ow f =    
  kprintf (ow#ctab 2) "CAMLreturn(Val_int(0));\n";
  kprintf ow#c "}\n"


  

let todo() = object
  val classes = new Ohash.autoinit (fun _ -> ref[]) 499
  val imports = ref []
  method add_interface name i =
    Utils.add_hd i (classes#find name)
  method add_import s =
    Utils.add_hd s imports

  method compile_imports ow = 
    List.iter (compile_import ow) (List.rev !imports)

  method compile ow =
    (* BROKEN? this doesn't print them in the same order as the .h *)
    classes#iter (fun k r -> compile_interface ow k !r)
end

let compile_file ?out_dir f =
  Debug.f ~lvl:dlvl "Parsing: %s" f;
  try
    Utils.with_in_channel (open_in f) 
      (fun ic -> 
	let ow = outfiles ?out_dir f 
	and todo = todo() in
	  handle_phrases todo (from_channel ic);
	  preludes ow todo f;
	  todo#compile ow;
	  postludes ow f;
	  ow#close
      )
  with
    | End_of_file -> ()
