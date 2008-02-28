(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSEnumerator] id) -> object
  inherit Cati_NSExtendedEnumerator.methods_NSEnumerator
  inherit Im_NSEnumerator.methods
  method repr = r
end

(* Class object for NSEnumerator *)
let c = Classes.find "NSEnumerator"
let _new()= (Objc.objcnew c : [`NSEnumerator] id)
let alloc() = (Objc.objcalloc c : [`NSEnumerator] id)
(* class methods for category NSExtendedEnumerator of NSEnumerator *)
