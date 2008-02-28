(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPort] id) -> object
  inherit Im_NSPort.methods
  method repr = r
end

(* Class object for NSPort *)
let c = Classes.find "NSPort"
let _new()= (Objc.objcnew c : [`NSPort] id)
let alloc() = (Objc.objcalloc c : [`NSPort] id)
let allocWithZone (zone : [`NSZone] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "allocWithZone:")
      [make_pointer_from_object zone]) : [`NSPort] Objc.id))
let port () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "port")[])
       : [`NSPort] Objc.id))
