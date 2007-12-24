(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSNotification"
let _ = init()
let make_NSObject_of_NSNotification (o : [`NSNotification] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSNotification *)
let class_NSNotification = object
   val repr = Classes.find "NSNotification"
   method _new = (Objc.objcnew repr : [`NSNotification] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNotification] nativeNSObject)
(* methods for category NSNotificationCreation *)
   (* skipping selector notificationWithName:l_object *)
   method notificationWithName  ~l_object:(anObject : [`NSObject] Objc.t ) ?userInfo:(aUserInfo : [`NSDictionary] Objc.t option) (aName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aName "notificationWithName" make_pointer_from_object
       ++ Objc.arg anObject "l_object" make_pointer_from_object
       ++ Objc.opt_arg aUserInfo "userInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSNotification] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSNotification *)
class native_NSNotification = fun (o : [`NSNotification] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSNotification o) as super
(* methods for category NSNotificationCreation *)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method l_object =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_object:")[]) : [`NSObject] Objc.nativeNSObject)
   method userInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "userInfo:")[]) : [`NSDictionary] Objc.nativeNSObject)
end
let make_NSObject_of_NSNotificationCenter (o : [`NSNotificationCenter] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSNotificationCenter *)
let class_NSNotificationCenter = object
   val repr = Classes.find "NSNotificationCenter"
   method _new = (Objc.objcnew repr : [`NSNotificationCenter] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNotificationCenter] nativeNSObject)
   method defaultCenter =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultCenter:")[]) : [`NSNotificationCenter] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSNotificationCenter *)
class native_NSNotificationCenter = fun (o : [`NSNotificationCenter] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSNotificationCenter o) as super
   method addObserver  ~selector:(aSelector : selector ) ~name:(aName : [`NSString] Objc.t ) ~l_object:(anObject : [`NSObject] Objc.t ) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "addObserver" make_pointer_from_object
       ++ Objc.arg aSelector "selector" make_selector
       ++ Objc.arg aName "name" make_pointer_from_object
       ++ Objc.arg anObject "l_object" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method postNotification (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "postNotification:")[make_pointer_from_object notification]) : unit)
   (* skipping selector postNotificationName:l_object *)
   method postNotificationName  ~l_object:(anObject : [`NSObject] Objc.t ) ?userInfo:(aUserInfo : [`NSDictionary] Objc.t option) (aName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aName "postNotificationName" make_pointer_from_object
       ++ Objc.arg anObject "l_object" make_pointer_from_object
       ++ Objc.opt_arg aUserInfo "userInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector removeObserver *)
   method removeObserver  ?name:(aName : [`NSString] Objc.t option) ?l_object:(anObject : [`NSObject] Objc.t option) (observer : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg observer "removeObserver" make_pointer_from_object
       ++ Objc.opt_arg aName "name" make_pointer_from_object
       ++ Objc.opt_arg anObject "l_object" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
