(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSAutoreleasePool] id) -> object
  inherit Im_NSAutoreleasePool.methods
  method repr = r
end

(* Class object for NSAutoreleasePool *)
let c = Classes.find "NSAutoreleasePool"
let _new()= (Objc.objcnew c : [`NSAutoreleasePool] id)
let alloc() = (Objc.objcalloc c : [`NSAutoreleasePool] id)
let addObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "addObject:")
      [make_pointer_from_object anObject]) : unit)
