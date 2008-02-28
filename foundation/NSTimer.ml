(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTimer] id) -> object
  inherit Im_NSTimer.methods
  method repr = r
end

(* Class object for NSTimer *)
let c = Classes.find "NSTimer"
let _new()= (Objc.objcnew c : [`NSTimer] id)
let alloc() = (Objc.objcalloc c : [`NSTimer] id)
  (* skipping selector timerWithTimeInterval:invocation:repeats *)
  (* skipping selector scheduledTimerWithTimeInterval:invocation:repeats *)
let timerWithTimeInterval  ~target:(aTarget : [`NSObject] Objc.t ) ~selector:(aSelector : selector ) ~userInfo:(userInfo : [`NSObject] Objc.t ) ~repeats:(yesOrNo : bool ) (ti : float) =
    let sel, args = (
      Objc.arg ti "timerWithTimeInterval" make_float
      ++ Objc.arg aTarget "target" make_pointer_from_object
      ++ Objc.arg aSelector "selector" make_selector
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
      ++ Objc.arg yesOrNo "repeats" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSTimer] Objc.id))
let scheduledTimerWithTimeInterval  ~target:(aTarget : [`NSObject] Objc.t ) ~selector:(aSelector : selector ) ~userInfo:(userInfo : [`NSObject] Objc.t ) ~repeats:(yesOrNo : bool ) (ti : float) =
    let sel, args = (
      Objc.arg ti "scheduledTimerWithTimeInterval" make_float
      ++ Objc.arg aTarget "target" make_pointer_from_object
      ++ Objc.arg aSelector "selector" make_selector
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
      ++ Objc.arg yesOrNo "repeats" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSTimer] Objc.id))
