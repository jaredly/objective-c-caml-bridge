(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPort.methods
end

class t = fun (r :[`NSPort] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
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
