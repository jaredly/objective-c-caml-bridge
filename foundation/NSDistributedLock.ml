open Objc
open NSObject


external init : unit -> unit = "caml_init_NSDistributedLock"
let _ = init()
(* Class object for NSDistributedLock *)
let class_NSDistributedLock = object
   val o = Classes.find "NSDistributedLock"
   method _new = (Objc.objcnew o : [`NSDistributedLock] nativeNSObject)
   method lockWithPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "lockWithPath:")[make_pointer_from_object path]) : [`NSDistributedLock] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDistributedLock *)
class native_NSDistributedLock = fun (o : [`NSDistributedLock] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithPath:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   method tryLock =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "tryLock:")[]) : bool)
   method unlock =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "unlock:")[]) : unit)
   method breakLock =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "breakLock:")[]) : unit)
   method lockDate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "lockDate:")[]) : [`NSDate] Objc.nativeNSObject)
end
