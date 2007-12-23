open Objc
open NSObject


external init : unit -> unit = "caml_init_NSAutoreleasePool"
let _ = init()
(* Class object for NSAutoreleasePool *)
let class_NSAutoreleasePool = object
   val o = Classes.find "NSAutoreleasePool"
   method _new = (Objc.objcnew o : [`NSAutoreleasePool] nativeNSObject)
   method addObject (anObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "addObject:")[make_pointer_from_object anObject]) : [`NSAutoreleasePool] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAutoreleasePool *)
class native_NSAutoreleasePool = fun (o : [`NSAutoreleasePool] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method addObject (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addObject:")[make_pointer_from_object anObject]) : unit)
   method drain =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "drain:")[]) : unit)
end
