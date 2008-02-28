open Printf
open NSString
open NSError

let ns_of_string (s : string) = NSString.stringWithCString s
let string_of_ns (ns : NSString.t) = ns#cStringUsingEncoding _NSUTF8StringEncoding

let _ = Objc.debug_invoke true

let f s =
  try
    let fname = ns_of_string s in
    let fs = NSString.stringWithContentsOfFile ~encoding:_NSUTF8StringEncoding ~error:true (fname :> [`NSString] Objc.t) in
      printf "Length of %s: %d\n" s fs#length;
      let (l1, l2) = fs#lineRangeForRange (1, 10) in
	printf "%d, %d\n" l1 l2
  with
    | Objc.NSError e ->
	let e = new NSError.t e in
	  Debug.f "Error code: %d description: %s"
	    e#code 
	    (string_of_ns (new NSString.t e#localizedDescription))

let _ =
  Arg.parse [] f "Load files in string, calculate length"
