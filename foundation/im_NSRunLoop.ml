(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSRunLoop *)
class virtual methods = object (self)
  method virtual repr : [`NSRunLoop] Objc.id
  method currentMode =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentMode")[])
       : [`NSString] Objc.id))
(*  UNSUPPORTED
  method getCFRunLoop =
    ((*CFRunLoopRef*) unsupported (Objc.invoke (*CFRunLoopRef*) Objc.tag_unsupported self#repr (Selector.find "getCFRunLoop")[])
       : (*CFRunLoopRef*) unsupported)

*)
  method addTimer  ~forMode:(mode : [`NSString] Objc.t ) (timer : [`NSTimer] Objc.t) =
    let sel, args = (
      Objc.arg timer "addTimer" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method addPort  ~forMode:(mode : [`NSString] Objc.t ) (aPort : [`NSPort] Objc.t) =
    let sel, args = (
      Objc.arg aPort "addPort" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removePort  ~forMode:(mode : [`NSString] Objc.t ) (aPort : [`NSPort] Objc.t) =
    let sel, args = (
      Objc.arg aPort "removePort" make_pointer_from_object
      ++ Objc.arg mode "forMode" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method limitDateForMode (mode : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "limitDateForMode:")
      [make_pointer_from_object mode]) : [`NSDate] Objc.id))
  method acceptInputForMode  ~beforeDate:(limitDate : [`NSDate] Objc.t ) (mode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg mode "acceptInputForMode" make_pointer_from_object
      ++ Objc.arg limitDate "beforeDate" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
