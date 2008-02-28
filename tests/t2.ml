open Printf
open NSString

(* this tests:
   arg type for pointers
   ret type for string
*)
let _ = Objc.debug_invoke true

let ns_of_string (s : string) = NSString.stringWithCString s
let string_of_ns (ns : NSString.t) = ns#cStringUsingEncoding _NSUTF8StringEncoding

let f2 () =
  Debug.f "create NSCalendarDate";
  let c = NSCalendarDate.calendarDate() in
    Debug.f "making format";
    let format = ((ns_of_string "foo %Y-%m-%d %H:%M:%S %z") :> [`NSString] Objc.t) in
      Debug.f "getting description";
      let ns = new NSString.t (c#descriptionWithCalendarFormat format) in
	Debug.f "getting back a string";
	let s = (string_of_ns ns) in
	  Debug.f "%s" s

let () = 
  f2();
  prerr_endline "DONE"
