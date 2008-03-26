(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDelayedPerforming of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method performSelector_withObject_afterDelay_inModes  (aSelector : selector) (anArgument : [`NSObject] Objc.t) (delay : float) (modes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg aSelector "performSelector" make_selector
      ++ Objc.arg anArgument "withObject" make_pointer_from_object
      ++ Objc.arg delay "afterDelay" make_float
      ++ Objc.arg modes "inModes" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method performSelector_withObject_afterDelay  (aSelector : selector) (anArgument : [`NSObject] Objc.t) (delay : float) =
    let sel, args = (
      Objc.arg aSelector "performSelector" make_selector
      ++ Objc.arg anArgument "withObject" make_pointer_from_object
      ++ Objc.arg delay "afterDelay" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
