open Printf
open NSString

(* this tests: 
   - class objects
   - selector objects
   - basic method invocation
   - ffi for string arg
   - ret type for id
   - ret type for int
*)

let f1 s = 
  let ns = class_NSString#stringWithCString s in
  let os = new native_NSString ns in
  let n = os#length in
    assert (n = String.length s)

let _ = 
  for i = 1 to 10000 do
    if i mod 1000 = 0 then (print_string "."; flush stdout);
    f1 "foobar"
  done;
  prerr_endline "DONE"

(*
Local Variables: 
compile-command: "./make-t1"
End: 
*)
