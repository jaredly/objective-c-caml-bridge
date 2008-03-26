(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDistributedNotificationCenter *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method addObserver_selector_name_object_suspensionBehavior  (observer : [`NSObject] Objc.t) (selector : selector) (name : [`NSString] Objc.t) (_object : [`NSString] Objc.t) (suspensionBehavior : int) =
    let sel, args = (
      Objc.arg observer "addObserver" make_pointer_from_object
      ++ Objc.arg selector "selector" make_selector
      ++ Objc.arg name "name" make_pointer_from_object
      ++ Objc.arg _object "object" make_pointer_from_object
      ++ Objc.arg suspensionBehavior "suspensionBehavior" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postNotificationName_object_userInfo_deliverImmediately  (name : [`NSString] Objc.t) (_object : [`NSString] Objc.t) (userInfo : [`NSDictionary] Objc.t) (deliverImmediately : bool) =
    let sel, args = (
      Objc.arg name "postNotificationName" make_pointer_from_object
      ++ Objc.arg _object "object" make_pointer_from_object
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
      ++ Objc.arg deliverImmediately "deliverImmediately" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postNotificationName_object_userInfo_options  (name : [`NSString] Objc.t) (_object : [`NSString] Objc.t) (userInfo : [`NSDictionary] Objc.t) (options : int) =
    let sel, args = (
      Objc.arg name "postNotificationName" make_pointer_from_object
      ++ Objc.arg _object "object" make_pointer_from_object
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
      ++ Objc.arg options "options" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setSuspended (suspended : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSuspended:")
      [make_bool suspended]) : unit)
  method suspended =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "suspended")[])
       : bool)
  method addObserver_selector_name_object  (observer : [`NSObject] Objc.t) (aSelector : selector) (aName : [`NSString] Objc.t) (anObject : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg observer "addObserver" make_pointer_from_object
      ++ Objc.arg aSelector "selector" make_selector
      ++ Objc.arg aName "name" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postNotificationName_object  (aName : [`NSString] Objc.t) (anObject : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aName "postNotificationName" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postNotificationName_object_userInfo  (aName : [`NSString] Objc.t) (anObject : [`NSString] Objc.t) (aUserInfo : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg aName "postNotificationName" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
      ++ Objc.arg aUserInfo "userInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeObserver_name_object  (observer : [`NSObject] Objc.t) (aName : [`NSString] Objc.t) (anObject : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg observer "removeObserver" make_pointer_from_object
      ++ Objc.arg aName "name" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
