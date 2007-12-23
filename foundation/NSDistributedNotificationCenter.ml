open Objc
open NSNotification


external init : unit -> unit = "caml_init_NSDistributedNotificationCenter"
let _ = init()
(* Class object for NSDistributedNotificationCenter *)
let class_NSDistributedNotificationCenter = object
   val o = Classes.find "NSDistributedNotificationCenter"
   method _new = (Objc.objcnew o : [`NSDistributedNotificationCenter] nativeNSObject)
   method notificationCenterForType (notificationCenterType : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "notificationCenterForType:")[make_pointer_from_object notificationCenterType]) : [`NSDistributedNotificationCenter] Objc.nativeNSObject)
   method defaultCenter =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultCenter:")[]) : [`NSDistributedNotificationCenter] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDistributedNotificationCenter *)
class native_NSDistributedNotificationCenter = fun (o : [`NSDistributedNotificationCenter] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method addObserver  ~selector:(selector : selector ) ~name:(name : [`NSString] Objc.t ) ~l_object:(_object : [`NSString] Objc.t ) ?suspensionBehavior:(suspensionBehavior : int option) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "addObserver" make_pointer_from_object
       ++ Objc.arg selector "selector" make_selector
       ++ Objc.arg name "name" make_pointer_from_object
       ++ Objc.arg _object "l_object" make_pointer_from_object
       ++ Objc.opt_arg suspensionBehavior "suspensionBehavior" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method postNotificationName  ?l_object:(_object : [`NSString] Objc.t option) ?userInfo:(userInfo : [`NSDictionary] Objc.t option) ?deliverImmediately:(deliverImmediately : bool option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "postNotificationName" make_pointer_from_object
       ++ Objc.opt_arg _object "l_object" make_pointer_from_object
       ++ Objc.opt_arg userInfo "userInfo" make_pointer_from_object
       ++ Objc.opt_arg deliverImmediately "deliverImmediately" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector postNotificationName:l_object:userInfo:options *)
   method setSuspended (suspended : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSuspended:")[make_bool suspended]) : unit)
   method suspended =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "suspended:")[]) : bool)
   (* skipping selector addObserver:selector:name:l_object *)
   (* skipping selector postNotificationName:l_object *)
   (* skipping selector postNotificationName:l_object:userInfo *)
   method removeObserver  ~name:(aName : [`NSString] Objc.t ) ~l_object:(anObject : [`NSString] Objc.t ) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "removeObserver" make_pointer_from_object
       ++ Objc.arg aName "name" make_pointer_from_object
       ++ Objc.arg anObject "l_object" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
