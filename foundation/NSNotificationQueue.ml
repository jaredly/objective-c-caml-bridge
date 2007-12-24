(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSNotificationQueue"
let _ = init()
let make_NSObject_of_NSNotificationQueue (o : [`NSNotificationQueue] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSNotificationQueue *)
let class_NSNotificationQueue = object
   val repr = Classes.find "NSNotificationQueue"
   method _new = (Objc.objcnew repr : [`NSNotificationQueue] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNotificationQueue] nativeNSObject)
   method defaultQueue =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultQueue:")[]) : [`NSNotificationQueue] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSNotificationQueue *)
class native_NSNotificationQueue = fun (o : [`NSNotificationQueue] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSNotificationQueue o) as super
   method initWithNotificationCenter (notificationCenter : [`NSNotificationCenter] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithNotificationCenter:")[make_pointer_from_object notificationCenter]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector enqueueNotification:postingStyle *)
   method enqueueNotification  ~postingStyle:(postingStyle : int ) ?coalesceMask:(coalesceMask : int option) ?forModes:(modes : [`NSArray] Objc.t option) (notification : [`NSNotification] Objc.t) =
     let sel, args = (
       Objc.arg notification "enqueueNotification" make_pointer_from_object
       ++ Objc.arg postingStyle "postingStyle" make_int
       ++ Objc.opt_arg coalesceMask "coalesceMask" make_int
       ++ Objc.opt_arg modes "forModes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method dequeueNotificationsMatching  ~coalesceMask:(coalesceMask : int ) (notification : [`NSNotification] Objc.t) =
     let sel, args = (
       Objc.arg notification "dequeueNotificationsMatching" make_pointer_from_object
       ++ Objc.arg coalesceMask "coalesceMask" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
