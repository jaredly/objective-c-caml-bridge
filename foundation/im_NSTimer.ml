(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTimer *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithFireDate_interval_target_selector_userInfo_repeats  (date : [`NSDate] Objc.t) (ti : float) (t : [`NSObject] Objc.t) (s : selector) (ui : [`NSObject] Objc.t) (rep : bool) =
    let sel, args = (
      Objc.arg date "initWithFireDate" make_pointer_from_object
      ++ Objc.arg ti "interval" make_float
      ++ Objc.arg t "target" make_pointer_from_object
      ++ Objc.arg s "selector" make_selector
      ++ Objc.arg ui "userInfo" make_pointer_from_object
      ++ Objc.arg rep "repeats" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method fire =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "fire")[])
       : unit)
  method fireDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fireDate")[])
       : [`NSDate] Objc.id))
  method setFireDate (date : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFireDate:")
      [make_pointer_from_object date]) : unit)
  method timeInterval =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "timeInterval")[])
       : float)
  method invalidate =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invalidate")[])
       : unit)
  method isValid =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isValid")[])
       : bool)
  method userInfo =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "userInfo")[])
       : [`NSObject] Objc.id)
end
