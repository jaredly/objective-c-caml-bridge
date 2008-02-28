(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNotificationCenter *)
class virtual methods = object (self)
  method virtual repr : [`NSNotificationCenter] Objc.id
  method addObserver  ~selector:(aSelector : selector ) ~name:(aName : [`NSString] Objc.t ) ~l_object:(anObject : [`NSObject] Objc.t ) (observer : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg observer "addObserver" make_pointer_from_object
      ++ Objc.arg aSelector "selector" make_selector
      ++ Objc.arg aName "name" make_pointer_from_object
      ++ Objc.arg anObject "l_object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postNotification (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "postNotification:")
      [make_pointer_from_object notification]) : unit)
  (* skipping selector postNotificationName:l_object *)
  method postNotificationName  ~l_object:(anObject : [`NSObject] Objc.t ) ?userInfo:(aUserInfo : [`NSDictionary] Objc.t option) (aName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aName "postNotificationName" make_pointer_from_object
      ++ Objc.arg anObject "l_object" make_pointer_from_object
      ++ Objc.opt_arg aUserInfo "userInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector removeObserver *)
  method removeObserver  ?name:(aName : [`NSString] Objc.t option) ?l_object:(anObject : [`NSObject] Objc.t option) (observer : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg observer "removeObserver" make_pointer_from_object
      ++ Objc.opt_arg aName "name" make_pointer_from_object
      ++ Objc.opt_arg anObject "l_object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
