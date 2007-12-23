open Printf
open NSString

(* this tests:
   arg type for pointers
   ret type for string
*)

let ns_of_string (s : string) = new native_NSString (class_NSString#stringWithCString s)
let string_of_ns (ns : NSString.native_NSString) = ns#cStringUsingEncoding 4L

let f2 () =
  Debug.f "create NSCalendarDate";
  let nc = NSCalendarDate.class_NSCalendarDate#calendarDate in
  let c = new NSCalendarDate.native_NSCalendarDate nc in
    Debug.f "making format";
    let format = ((ns_of_string "foo %Y-%m-%d %H:%M:%S %z") :> [`NSString] Objc.t) in
      Debug.f "getting description";
      let ns = c#descriptionWithCalendarFormat format in
	Debug.f "getting back a string";
	let s = (string_of_ns (new native_NSString ns)) in
	  Debug.f "%s" s

let () = 
  f2();
  prerr_endline "DONE"
