open Printf
open Utils
open Ast
open Btypes

let dlvl=20

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
	  Debug.f "Can't add selector: already one with first component %s" first;
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
let compile_method ml is_class classname uniqueh trimh ((kind, ret_type, selectors) : method_declaration) = 
  let target = if is_class then "c" else "self#repr" in
    try
      let sels = abstract_selector selectors in
      let optargs = trimh#find sels in  (* check if it's allowed *)
	(* methods with unsupported type conversion or other "unsupported" features get commented out *)
	ml#defer; 
	(* filtering out methods with same sets of arguments but different return types *)
	begin
	  let name = List.hd sels in
	    try
	      let _ = uniqueh#find name in
		ml#w "(* unsupported: already have a method with that name compiled *)\n"
	    with
	      | Not_found -> uniqueh#add name true
	end;
	(* filtering out one-offs that we know are broken *)
	begin
	  if Hardcoded.optout (classname, List.map fst sels) 
	  then ml#w "(* unsupported: breaks compilation somewhere *)\n"
	end;
	(* Compile a method *)
	begin match selectors with
	  | [sel, None] -> (* one selector, no named args *)
	      begin if is_class then
		  kprintf ml#w "let %s () =\n" (Hardcoded.rename_method sel)
		else 
		  kprintf (ml#tab 2) "method %s =\n" (Hardcoded.rename_method sel)
	      end;
	      kprintf (ml#tab 4) "(" ; 
	      Btypes.native2caml is_class classname ml#w ret_type;
	      kprintf ml#w " (Objc.invoke %s %s (Selector.find \"%s\")[])\n" 
		(Btypes.tag ret_type) target sel;
	      kprintf (ml#tab 6) " : ";
	      Btypes.ret_type ml#w ret_type;
	      kprintf ml#w ")\n";
	      ()
		
	  | [sel, Some(argt, argn, false)] -> (* one selector w/ named arg *)
	      begin if is_class then
		  kprintf ml#w "let %s " (Hardcoded.rename_method sel)
		  else
		  kprintf (ml#tab 2) "method %s " (Hardcoded.rename_method sel)
	      end;
	      Btypes.typed_expr ml#w argt argn;
	      kprintf ml#w " =\n";
	      kprintf (ml#tab 4) "(" ; 
	      Btypes.native2caml is_class classname ml#w ret_type;
	      kprintf ml#w " (Objc.invoke %s %s (Selector.find \"%s:\")\n" 
		(Btypes.tag ret_type) target sel;
	      kprintf (ml#tab 6) "[%s %s])" (caml2native argt) argn;
	      kprintf ml#w " : ";
	      Btypes.ret_type ml#w ret_type;
	      kprintf ml#w ")\n";
	      ()
		
	  | (sel, Some (argt, argn, false))::rest ->
	      (* method name is first selector *)
	      begin if is_class then
		  kprintf ml#w "let %s " (Hardcoded.rename_method sel)
		  else
		  kprintf (ml#tab 2) "method %s " (Hardcoded.rename_method sel)
	      end;
	      (* all other selectors are assumed to be optional args *)
	      List.iter2 (fun is_needed a ->
		match a with
		  | (sel, Some(argt, argn, false)) -> 
		      kprintf ml#w " %c%s:(%s : " (if is_needed then '~' else '?') sel argn;
		      Btypes.arg_type ml#w argt;
		      kprintf ml#w " %s)" (if is_needed then "" else "option")
		  | _ -> assert false (* TBD *)
			 ) optargs rest;
	      
	      (* name of first selector argument *)
	      kprintf ml#w " ";
	      Btypes.typed_expr ml#w argt argn;
	      kprintf ml#w " =\n";
	      (* building the selector and argument list *)
	      kprintf (ml#tab 4) "let sel, args = (\n";
	      kprintf (ml#tab 6) "Objc.arg %s \"%s\" %s\n" argn sel (caml2native argt);
	      List.iter2 (fun is_needed a ->
		match a with
		  | (sel, Some(argt, argn, false)) ->
		      kprintf (ml#tab 6) "++ Objc.%s %s \"%s\" %s\n" 
			(if is_needed then "arg" else "opt_arg") 
			argn sel (caml2native argt)
		  | _ -> assert false
			 ) optargs rest ;
	      kprintf (ml#tab 4) ") ([],[]) in\n";
	      kprintf (ml#tab 6) "(";
	      Btypes.native2caml is_class classname ml#w ret_type;
	      kprintf ml#w " (Objc.invoke %s %s (Selector.find_list sel) args)\n" 
		(Btypes.tag ret_type) target;
	      kprintf (ml#tab 6) " : ";
	    Btypes.ret_type ml#w ret_type;
	    kprintf ml#w ")\n"
	  | _ -> assert false
	end;
	ml#flush
    with
      | Not_found -> 
	  kprintf (ml#tab 2) "(* skipping selector %s *)\n" 
	    (String.concat ":" (List.map fst selectors))
	    
let compile_phrase todo = function
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
 * the same as the class type. It's mostly true with instance methods as well, but
 * not always - NSArray would be the typicall counter-example.
 * TBD: we could try to hardcode this: anything with "init" in the method name
 * would use the convention that (id) is the class type.
 *)
let fix_class_return_type name m = 
  match m with
    | ClassMethod, NamedType "id", sels -> 
	ClassMethod, Pointer (false, NamedType name), sels
    | m -> m

let only_category = List.for_all (function Ast.CategoryInterface _, _,_,_ -> true | _ -> false) 

(* name is the interface name
   il is a list of interfaces - some are categories, some not
   Here are the pieces that are generated for NSFoo
   - coercion to parent:            make_NSParent_of_NSFoo
   - native instance encapsulation: class n = fun id -> object ... end
   - native class encapsulation:    let c = object ... end
*)
let compile_interface cycles ow name il = 
  (* Determine which methods to compile *)  
  let cm,im = trim_methods il in
  let ucm, uim = new Ohash.t 53, new Ohash.t 53 in (* used for enforcing unicity of method names *)
    (* Doing two passes to get everything in the proper order *)
    List.iter (function
      | Ast.ClassInterface parent, protos, decls, methods ->
	  (fun ml ->
	    kprintf ml#w "(* Encapsulation of methods for native instance of %s *)\n" name;
	    kprintf ml#w "class virtual methods = object (self)\n";
	    kprintf (ml#tab 2) "method virtual repr : [`%s] Objc.id\n" name;
	    List.iter (compile_method ml false name uim im) 
	      (List.filter (fun m -> is_instance_method m && not (has_vararg m)) methods);
	    kprintf ml#w "end\n")
	    (ow#get ("im_" ^ name ^ ".ml"));

      | Ast.CategoryInterface cat, protos, decls, methods ->
	  (* note: the same category name can be used for different classes *)
	  (fun ml ->
	    kprintf ml#w "(* instance methods for category %s of %s *)\n" cat name;
	    kprintf ml#w "class virtual methods_%s = object (self)\n" name;
	    kprintf (ml#tab 2) "method virtual repr : [`%s] Objc.id\n" name;
	    List.iter (compile_method ml false name uim im) 
	      (List.filter (fun m -> is_instance_method m && not (has_vararg m)) methods);
	    kprintf ml#w "end\n")
	    (ow#get ("cati_" ^ cat ^ ".ml"));
	      ) 
    il;

    (* wrap up into one class with all instance methods *)
    (fun ml ->
      kprintf ml#w "class t = fun (r :[`%s] id) -> object\n" name;
      List.iter (function
	| Ast.ClassInterface parent, protos, decls, methods ->
	    kprintf (ml#tab 2) "inherit Im_%s.methods\n" name;
	| Ast.CategoryInterface cat, protos, decls, methods ->
	    kprintf (ml#tab 2) "inherit Cati_%s.methods_%s\n" cat name;
		) il;
      kprintf (ml#tab 2) "method repr = r\n";
      kprintf ml#w "end\n\n")
      (ow#get (name ^ ".ml"));

    (fun ml -> 
      kprintf ml#w "(* Class object for %s *)\n" name;
      kprintf ml#w "let c = Classes.find \"%s\"\n" name;
      kprintf ml#w "let _new()= (Objc.objcnew c : [`%s] id)\n" name;
      kprintf ml#w "let alloc() = (Objc.objcalloc c : [`%s] id)\n" name;
    ) (ow#get (name ^ ".ml"));

    List.iter (function
      | Ast.ClassInterface parent, protos, decls, methods ->
	  (fun ml -> 
	    List.iter (compile_method ml true name ucm cm) 
	      (List.map (fix_class_return_type name) 
		  (List.filter (fun m -> is_class_method m && not (has_vararg m)) methods));
	  )
	    (ow#get (name ^ ".ml"));

      | Ast.CategoryInterface cat, protos, decls, methods ->
	  (fun ml ->
	    kprintf ml#w "(* class methods for category %s of %s *)\n" cat name;
	    List.iter (compile_method ml true name ucm cm) 
	      (List.map (fix_class_return_type name) 
		  (List.filter (fun m -> is_class_method m && not (has_vararg m)) methods);
	      ))
	    (ow#get (name ^ ".ml"));
	      )
      il;

(*
	kprintf coercions#w 
	  "let make_%s_of_%s (o : [`%s] id) = (Obj.magic o : [`%s] id)\n"
	  parent name name parent
*)
    ()
      

(*
let compile_import ow s =
  (* some hard coded voodoo on names *)
  let m = Writing.base s in
    begin match m with
      | s when String.length m > 2 && String.sub m 0 2 = "NS" ->
	  kprintf "open %s\n" m
      | _ -> ()
    end
*)

let compile_phrases todo = List.iter (compile_phrase todo)

(* the todo object collects information at the parsing stage,
   and drives the compilation for a given header
*)
let todo header = object
  val classes = new Ohash.autoinit (fun _ -> ref[]) 499
  val categories = new Ohash.t 499
  val mutable compile_order = []
  val imports = ref []

  method add_interface name i =
    match i with 
      | CategoryInterface _, _,_,_ ->
	  if name = header then
	    Utils.add_hd i (classes#find name)
	  else 
	    categories#add name i
      | ClassInterface _, _,_,_ ->
	  compile_order <- name :: compile_order;
	  Utils.add_hd i (classes#find name)
  method add_import s =
    Utils.add_hd s imports

  method compile_imports base ow = ()
  method compile cycles ow =
    ignore (List.fold_left (fun compiled name ->
      if StringSet.mem name compiled then compiled
      else 
	(* all interfaces for that name *)
	let il = !(classes#find name) in
	  if only_category il then begin
	      Debug.f "COMPILE SKIPPING %s for now" name;
	      compiled (* TBD *)
	    end else begin
		compile_interface cycles ow name il;
		StringSet.add name compiled
	    end)
	       StringSet.empty (List.rev compile_order));
    (* TBD: now compile the categories *)
end
  
let compile_file cycles ow f =
  Debug.f ~lvl:dlvl "Parsing: %s" f;
  try
    Utils.with_in_channel (open_in f) 
      (fun ic -> 
	let todo = todo (Writing.base f) in
	  compile_phrases todo (Parser.from_channel ic);
	  Enum.dump ((ow#get ((Writing.base f) ^ ".ml"))#w);
	  todo#compile cycles ow
      )
  with
    | End_of_file -> ()
