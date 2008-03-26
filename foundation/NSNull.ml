(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSNull.methods
end

class t = fun (r :[`NSNull] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNull *)
let c = Classes.find "NSNull"
let _new()= (Objc.objcnew c : [`NSNull] id)
let alloc() = (Objc.objcalloc c : [`NSNull] id)
let null () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "null")[])
       : [`NSNull] Objc.id))
