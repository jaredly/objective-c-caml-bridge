(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSProxy.methods
end

class t = fun (r :[`NSProxy] id) -> object
  inherit methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSProxy *)
let c = Classes.find "NSProxy"
let _new()= (Objc.objcnew c : [`NSProxy] id)
let alloc() = (Objc.objcalloc c : [`NSProxy] id)
let alloc () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "alloc")[])
       : [`NSProxy] Objc.id))
let allocWithZone (zone : [`NSZone] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "allocWithZone:")
      [make_pointer_from_object zone]) : [`NSProxy] Objc.id))
let class_ () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "class")[])
       : [`NSProxy] Objc.id))
let respondsToSelector (aSelector : selector) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "respondsToSelector:")
      [make_selector aSelector]) : bool)
