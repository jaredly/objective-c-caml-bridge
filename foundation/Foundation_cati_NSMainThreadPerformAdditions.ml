(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSMainThreadPerformAdditions of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method performSelectorOnMainThread_withObject_waitUntilDone_modes  (aSelector : selector) (arg : [`NSObject] Objc.t) (wait : bool) (array : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg aSelector "performSelectorOnMainThread" make_selector
      ++ Objc.arg arg "withObject" make_pointer_from_object
      ++ Objc.arg wait "waitUntilDone" make_bool
      ++ Objc.arg array "modes" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method performSelectorOnMainThread_withObject_waitUntilDone  (aSelector : selector) (arg : [`NSObject] Objc.t) (wait : bool) =
    let sel, args = (
      Objc.arg aSelector "performSelectorOnMainThread" make_selector
      ++ Objc.arg arg "withObject" make_pointer_from_object
      ++ Objc.arg wait "waitUntilDone" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
