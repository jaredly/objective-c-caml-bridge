(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSOrderedPerform of NSRunLoop *)
class virtual methods_NSRunLoop = object (self)
  method virtual repr : [`NSObject] Objc.id
  method performSelector_target_argument_order_modes  (aSelector : selector) (target : [`NSObject] Objc.t) (arg : [`NSObject] Objc.t) (order : int) (modes : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg aSelector "performSelector" make_selector
      ++ Objc.arg target "target" make_pointer_from_object
      ++ Objc.arg arg "argument" make_pointer_from_object
      ++ Objc.arg order "order" make_int
      ++ Objc.arg modes "modes" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method cancelPerformSelector_target_argument  (aSelector : selector) (target : [`NSObject] Objc.t) (arg : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg aSelector "cancelPerformSelector" make_selector
      ++ Objc.arg target "target" make_pointer_from_object
      ++ Objc.arg arg "argument" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method cancelPerformSelectorsWithTarget (target : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cancelPerformSelectorsWithTarget:")
      [make_pointer_from_object target]) : unit)
end
