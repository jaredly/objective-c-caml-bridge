(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSDistributedLock"
let _ = init()
let make_NSObject_of_NSDistributedLock (o : [`NSDistributedLock] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSDistributedLock *)
let class_NSDistributedLock = object
   val repr = Classes.find "NSDistributedLock"
   method _new = (Objc.objcnew repr : [`NSDistributedLock] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDistributedLock] nativeNSObject)
   method lockWithPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "lockWithPath:")[make_pointer_from_object path]) : [`NSDistributedLock] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDistributedLock *)
class native_NSDistributedLock = fun (o : [`NSDistributedLock] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSDistributedLock o) as super
   method initWithPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithPath:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   method tryLock =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "tryLock:")[]) : bool)
   method unlock =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unlock:")[]) : unit)
   method breakLock =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "breakLock:")[]) : unit)
   method lockDate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "lockDate:")[]) : [`NSDate] Objc.nativeNSObject)
end
