(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSAutoreleasePool"
let _ = init()
let make_NSObject_of_NSAutoreleasePool (o : [`NSAutoreleasePool] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSAutoreleasePool *)
let class_NSAutoreleasePool = object
   val repr = Classes.find "NSAutoreleasePool"
   method _new = (Objc.objcnew repr : [`NSAutoreleasePool] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAutoreleasePool] nativeNSObject)
   method addObject (anObject : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "addObject:")[make_pointer_from_object anObject]) : [`NSAutoreleasePool] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAutoreleasePool *)
class native_NSAutoreleasePool = fun (o : [`NSAutoreleasePool] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSAutoreleasePool o) as super
   method addObject (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addObject:")[make_pointer_from_object anObject]) : unit)
   method drain =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drain:")[]) : unit)
end
