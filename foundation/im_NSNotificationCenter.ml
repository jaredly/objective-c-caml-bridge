(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNotificationCenter *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method addObserver_selector_name_object  (observer : [`NSObject] Objc.t) (aSelector : selector) (aName : [`NSString] Objc.t) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg observer "addObserver" make_pointer_from_object
      ++ Objc.arg aSelector "selector" make_selector
      ++ Objc.arg aName "name" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postNotification (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "postNotification:")
      [make_pointer_from_object notification]) : unit)
  method postNotificationName_object  (aName : [`NSString] Objc.t) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg aName "postNotificationName" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postNotificationName_object_userInfo  (aName : [`NSString] Objc.t) (anObject : [`NSObject] Objc.t) (aUserInfo : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg aName "postNotificationName" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
      ++ Objc.arg aUserInfo "userInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeObserver (observer : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObserver:")
      [make_pointer_from_object observer]) : unit)
  method removeObserver_name_object  (observer : [`NSObject] Objc.t) (aName : [`NSString] Objc.t) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg observer "removeObserver" make_pointer_from_object
      ++ Objc.arg aName "name" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
