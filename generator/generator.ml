open Printf
open Utils
open Ast
open Btypes

let dlvl=20

(* Filter out: variable number of args (can't use NSInvocation for this) *)
let has_vararg (_,_,sels) =
  List.exists (function (_, Some (_,_,true)) -> true | _ -> false) sels

(* compile a method *)
let compile_method ml is_class classname ((kind, ret_type, selectors) : method_declaration) = 
  let target = if is_class then "c" else "self#repr" in
    (* methods with unsupported type conversion or other "unsupported" features 
       get commented out *)
    ml#defer; 
    (* filtering out one-offs that we know are broken *)
    begin
      if Hardcoded.optout_method (classname, List.map fst selectors) 
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
	    
      | ((sel1, Some(argt, argn, false))::moresels) as selectors ->
	  let sel = String.concat "_" (List.map fst selectors) in
	  begin if is_class then
	      kprintf ml#w "let %s " (Hardcoded.rename_method sel)
	    else
	      kprintf (ml#tab 2) "method %s " (Hardcoded.rename_method sel)
	  end;
	  (* all other selectors are assumed to be optional args *)
	  List.iter (function
	    | (sel, Some(argt, argn, false)) -> 
		kprintf ml#w " (%s : " argn;
		Btypes.arg_type ml#w argt;
		kprintf ml#w ")"
	    | _ -> assert false (* TBD *))
	    selectors;
		    
	  kprintf ml#w " =\n";
	  (* building the selector and argument list *)
	  kprintf (ml#tab 4) "let sel, args = (\n";
	  kprintf (ml#tab 6) "Objc.arg %s \"%s\" %s\n" argn sel1 (caml2native argt);
	  List.iter (function 
	      | (sel, Some(argt, argn, false)) ->
		  kprintf (ml#tab 6) "++ Objc.arg %s \"%s\" %s\n" 
		    argn sel (caml2native argt)
	      | _ -> assert false
		     ) moresels;
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

let only_category l = List.for_all (function Ast.CategoryInterface _, _,_,_ -> true | _ -> false) l

(* name is the interface name
   il is a list of interfaces - some are categories, some not
   Here are the pieces that are generated for NSFoo
   - coercion to parent:            make_NSParent_of_NSFoo
   - native instance encapsulation: class n = fun id -> object ... end
   - native class encapsulation:    let c = object ... end
*)
let compile_interface cycles ow name il = 
  (* Doing two passes to get everything in the proper order *)
  List.iter (function
    | Ast.ClassInterface parent, protos, decls, methods ->
	(fun ml ->
	  kprintf ml#w "(* Encapsulation of methods for native instance of %s *)\n" name;
	  kprintf ml#w "class virtual methods = object (self)\n";
	  kprintf (ml#tab 2) "method virtual repr : [`NSObject] Objc.id\n";
	  List.iter (compile_method ml false name) 
	    (List.filter (fun m -> is_instance_method m && not (has_vararg m)) methods);
	  kprintf ml#w "end\n")
	  (ow#get ("im_" ^ name ^ ".ml"));
	
    | Ast.CategoryInterface cat, protos, decls, methods ->
	(* note: the same category name can be used for different classes *)
	(fun ml ->
	  kprintf ml#w "(* instance methods for category %s of %s *)\n" cat name;
	  kprintf ml#w "class virtual methods_%s = object (self)\n" name;
	  kprintf (ml#tab 2) "method virtual repr : [`NSObject] Objc.id\n";
	  List.iter (compile_method ml false name) 
	    (List.filter (fun m -> is_instance_method m && not (has_vararg m)) methods);
	  kprintf ml#w "end\n")
	  (ow#get (ow#category_prefix ^ cat ^ ".ml"));
	    ) 
    il;
  
  (* wrap up into one class with all instance methods *)
  (fun ml ->
    kprintf ml#w "class virtual methods = object\n";
    List.iter (function
      | Ast.ClassInterface parent, protos, decls, methods ->
	  kprintf (ml#tab 2) "inherit Im_%s.methods\n" name;
      | Ast.CategoryInterface cat, protos, decls, methods ->
	  kprintf (ml#tab 2) "inherit %s%s.methods_%s\n" ow#category_prefix cat name;
	      ) il;
    kprintf ml#w "end\n\n")
    (ow#get (name ^ ".ml"));
  
  (fun ml ->
    kprintf ml#w "class t = fun (r :[`%s] id) -> object\n" name;
    List.iter (function
      | Ast.ClassInterface parent, protos, decls, methods ->
	  kprintf (ml#tab 2) "inherit methods\n";
	  begin match parent with
	    | None -> ()
	    | Some x -> 
		kprintf (ml#tab 2) "inherit %s.methods\n" x
	  end
      | Ast.CategoryInterface cat, protos, decls, methods ->
	  ()
	      ) il;
    kprintf (ml#tab 2) "method repr = Objc.forget_type r \n";
    kprintf (ml#tab 2) "method typed_repr = r\n";
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
	  List.iter (compile_method ml true name) 
	    (List.map (fix_class_return_type name) 
		(List.filter (fun m -> is_class_method m && not (has_vararg m)) methods));
	)
	  (ow#get (name ^ ".ml"));
	
    | Ast.CategoryInterface cat, protos, decls, methods ->
	(fun ml ->
	  kprintf ml#w "(* class methods for category %s of %s *)\n" cat name;
	  List.iter (compile_method ml true name) 
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
let todo () = object
  val classes = new Ohash.autoinit (fun _ -> ref[]) 499
  val imports = ref []

  method add_interface name i =
    match i with 
      | CategoryInterface c, _,_,_ ->
	  if Hardcoded.optout_interface c then ()
	  else Utils.add_hd i (classes#find name)
      | ClassInterface _, _,_,_ ->
	  if Hardcoded.optout_interface name then ()
	  else Utils.add_hd i (classes#find name)

  method add_import s =
    Utils.add_hd s imports

  method compile_imports base ow = ()
  method compile cycles ow =
    classes#iter (fun name ilr ->
      let il = !ilr in
	if only_category il then begin
	    Debug.f "COMPILE SKIPPING %s for now" name;
	  end else begin
	      compile_interface cycles ow name il
	    end)
end
  
let compile_file cycles ow todo f =
  Debug.f ~lvl:dlvl "Parsing: %s" f;
  try
    Utils.with_in_channel (open_in f) 
      (fun ic -> 
	let base = Writing.base f in
	  compile_phrases todo (Parser.from_channel ic);
	  Enum.dump ((ow#get (base ^ ".ml"))#w);
      )
  with
    | End_of_file -> ()
