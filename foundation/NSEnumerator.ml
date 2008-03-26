(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSExtendedEnumerator.methods_NSEnumerator
  inherit Im_NSEnumerator.methods
end

class t = fun (r :[`NSEnumerator] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSEnumerator *)
let c = Classes.find "NSEnumerator"
let _new()= (Objc.objcnew c : [`NSEnumerator] id)
let alloc() = (Objc.objcalloc c : [`NSEnumerator] id)
(* class methods for category NSExtendedEnumerator of NSEnumerator *)
