(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNotificationQueue *)
class virtual methods = object (self)
  method virtual repr : [`NSNotificationQueue] Objc.id
  method initWithNotificationCenter (notificationCenter : [`NSNotificationCenter] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithNotificationCenter:")
      [make_pointer_from_object notificationCenter]) : [`NSObject] Objc.id)
  (* skipping selector enqueueNotification:postingStyle *)
  method enqueueNotification  ~postingStyle:(postingStyle : int ) ?coalesceMask:(coalesceMask : int option) ?forModes:(modes : [`NSArray] Objc.t option) (notification : [`NSNotification] Objc.t) =
    let sel, args = (
      Objc.arg notification "enqueueNotification" make_pointer_from_object
      ++ Objc.arg postingStyle "postingStyle" make_int
      ++ Objc.opt_arg coalesceMask "coalesceMask" make_int
      ++ Objc.opt_arg modes "forModes" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method dequeueNotificationsMatching  ~coalesceMask:(coalesceMask : int ) (notification : [`NSNotification] Objc.t) =
    let sel, args = (
      Objc.arg notification "dequeueNotificationsMatching" make_pointer_from_object
      ++ Objc.arg coalesceMask "coalesceMask" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
