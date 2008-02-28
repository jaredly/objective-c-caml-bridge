open Printf
open Utils
open Ast

let dlvl = 20
(* Dependencies we want to capture
 *    file -> file         from imports (maybe? not strictly necessary if we
 *                         capture at the detail level of types)
 *    class -> superclass  from interface declarations
 *    class -> other class from method types (return and args)
 * Other aspects to capture
 *    protocol generation in different places
 * Note: multiple parsing phases are ok, we're not trying to optimize for
 *       speed here, but rather for clarity
 *)


let deps = object
  val o = Tsort.create()
  method add why n1 n2 = 
    if n1 <> n2 then
      if Tsort.add_relation o n1 n2 then
	Debug.f "%s depends on %s because of %s" n1 n2 why
  method add_category n1 n2 =
    Debug.f "%s is extended by category %s" n1 n2
  method sort = 
    Tsort.sort_with_cycles o
end

let handle_interface header deps name (kind, protos, decls, methods) =
  let method_depends methods = 
    List.iter  (fun (kind, ret_type, selectors) -> 
      begin match Btypes.deps ret_type with
	| None -> ()
	| Some x -> 
	    begin match kind with
	      | ClassMethod -> deps#add "ret_type" ("class_" ^ name) ("instance_" ^ x)
	      | InstanceMethod -> deps#add "ret_type" ("instance_" ^ name) ("instance_" ^ x)
	    end
      end)
      methods
  in
    begin
      match kind with
	| CategoryInterface s -> 
	    deps#add_category name s;
	    if name = header then method_depends methods
	| ClassInterface (Some parent) -> 
	    deps#add "Superclass" ("instance_" ^ name) ("instance_" ^ parent);
	    method_depends methods
	| ClassInterface None ->
	    method_depends methods
    end;
    (* ignoring protos *)
    (* ignoring decls *)
    ()

let handle_phrase header deps = function
  | Interface (name, i) -> handle_interface header deps name i 
  | _ -> ()
(*
  | Comment s -> () (* filtered out at lexing level for now *)
  | Import i -> ()
  | Ignore -> ()
  | Class l -> (* these are forwards *) ()
  | Preproc _ -> ()
  | Protocol _ -> ()
  | Enum _ -> ()
*)

let dependencies_file f = 
  Debug.f ~lvl:dlvl "Parsing: %s" f;
  try
    Utils.with_in_channel (open_in f) 
      (fun ic -> 
	List.iter (handle_phrase (Writing.base f) deps) (Parser.from_channel ic);
	Enum.reset()
      )
  with
    | End_of_file -> ()
