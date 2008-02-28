(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSAssertionHandler] id) -> object
  inherit Im_NSAssertionHandler.methods
  method repr = r
end

(* Class object for NSAssertionHandler *)
let c = Classes.find "NSAssertionHandler"
let _new()= (Objc.objcnew c : [`NSAssertionHandler] id)
let alloc() = (Objc.objcalloc c : [`NSAssertionHandler] id)
let currentHandler () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentHandler")[])
       : [`NSAssertionHandler] Objc.id))
