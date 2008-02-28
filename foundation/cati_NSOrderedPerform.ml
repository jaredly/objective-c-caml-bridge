(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSOrderedPerform of NSRunLoop *)
class virtual methods_NSRunLoop = object (self)
  method virtual repr : [`NSRunLoop] Objc.id
  method performSelector  ~target:(target : [`NSObject] Objc.t ) ~argument:(arg : [`NSObject] Objc.t ) ~order:(order : int ) ~modes:(modes : [`NSArray] Objc.t ) (aSelector : selector) =
    let sel, args = (
      Objc.arg aSelector "performSelector" make_selector
      ++ Objc.arg target "target" make_pointer_from_object
      ++ Objc.arg arg "argument" make_pointer_from_object
      ++ Objc.arg order "order" make_int
      ++ Objc.arg modes "modes" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method cancelPerformSelector  ~target:(target : [`NSObject] Objc.t ) ~argument:(arg : [`NSObject] Objc.t ) (aSelector : selector) =
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
