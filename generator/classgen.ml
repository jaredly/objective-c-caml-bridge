(* Stub generator for OCaml object embedding *)
open Printf
open Ast

let compile_method b name (kind, ret_type, selectors) = 
  let selname = match selectors with
    | [sel, None] -> sel
    | [sel, Some _] -> sel ^ ":"
    | l -> (String.concat ":" (List.map fst l)) ^ ":" 
  in
    kprintf b#w "  strcpy(typebuffer, @encode(";
    Btypes.ctype b#w ret_type;
    kprintf b#w "));\n";
    List.iter (function 
      | (sel, None) -> ()
      | (sel, Some(t,_,_)) ->
	  kprintf b#w "  strcat(typebuffer, @encode("; Btypes.ctype b#w t; kprintf b#w "));\n")
      selectors;
    kprintf b#w "  [%sstubs_sigs setObject:\n" name;
    kprintf b#w "                  [NSMethodSignature signatureWithObjCTypes:typebuffer]\n";
    kprintf b#w "                forKey:\n";
    kprintf b#w "                  CANON_NAME(%s) ];\n" selname
      
let compile_interface name il =
  let bh = new Writing.c_deferred (new Writing.abstract_buffer) 
  and bm = new Writing.c_deferred (new Writing.abstract_buffer) 
  in
    kprintf bh#w "#include <string.h>\n";
    kprintf bh#w "#import \"camlstubs.h\"\n";
    kprintf bh#w "@interface %sStubs : OCamlProxy\n" name;
    kprintf bh#w "+initialize;\n";
    kprintf bh#w "-(NSDictionary *)sigs;\n";
    kprintf bh#w "@end\n";

    kprintf bm#w "#import \"%sStubs.h\"\n" name;
    kprintf bm#w "static NSMutableDictionary *%sstubs_sigs;\n" name;
    kprintf bm#w "\n";
    kprintf bm#w "@implementation %sStubs : OCamlProxy\n" name;
    kprintf bm#w "-(NSDictionary *)sigs\n";
    kprintf bm#w "{\n";
    kprintf bm#w "  return %sstubs_sigs;\n" name;
    kprintf bm#w "}\n";
    kprintf bm#w "+initialize\n";
    kprintf bm#w "{\n";
    kprintf bm#w "  %sstubs_sigs = [NSMutableDictionary dictionaryWithCapacity: %d];\n" name 2;
    kprintf bm#w "  char typebuffer[128];\n";
    
    List.iter (fun (_,_,_,ms)  -> 
      List.iter (compile_method bm name) ms) il;
    kprintf bm#w "}\n";
    kprintf bm#w "@end\n";

    (bm, bh)
	
let compile_file todo f =
  try
    Utils.with_in_channel (open_in f) 
      (fun ic -> 
	Generator.compile_phrases todo (Parser.from_channel ic);
      )
  with
    | End_of_file -> ()



let () = 
  let todo = object
    val classes = new Ohash.autoinit (fun _ -> ref[]) 499
    method add_interface name i =
      match i with 
	| CategoryInterface c, _,_,_ -> 
	    failwith "Categories not supported"
	| ClassInterface _, _,_,ms ->
	    Debug.f "Detected class %s" name;
	    Utils.add_hd i (classes#find name)
	    
    method add_import s = ()
    method compile =
      classes#iter (fun name ilr ->
	let il = !ilr in
	let bm, bh = compile_interface name il in
	  Writing.flush_buffer bm (name ^ "Stubs.m");
	  Writing.flush_buffer bh (name ^ "Stubs.h");
	  ()
		   )
  end in
    Arg.parse ["-d", Arg.Int Debug.set_level, "Debug level"] 
      (fun s -> compile_file todo s)
      "Stub generator";
    todo#compile
  
