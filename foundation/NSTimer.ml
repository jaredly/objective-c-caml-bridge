(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTimer.methods
end

class t = fun (r :[`NSTimer] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTimer *)
let c = Classes.find "NSTimer"
let _new()= (Objc.objcnew c : [`NSTimer] id)
let alloc() = (Objc.objcalloc c : [`NSTimer] id)
let timerWithTimeInterval_invocation_repeats  (ti : float) (invocation : [`NSInvocation] Objc.t) (yesOrNo : bool) =
    let sel, args = (
      Objc.arg ti "timerWithTimeInterval" make_float
      ++ Objc.arg invocation "invocation" make_pointer_from_object
      ++ Objc.arg yesOrNo "repeats" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSTimer] Objc.id))
let scheduledTimerWithTimeInterval_invocation_repeats  (ti : float) (invocation : [`NSInvocation] Objc.t) (yesOrNo : bool) =
    let sel, args = (
      Objc.arg ti "scheduledTimerWithTimeInterval" make_float
      ++ Objc.arg invocation "invocation" make_pointer_from_object
      ++ Objc.arg yesOrNo "repeats" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSTimer] Objc.id))
let timerWithTimeInterval_target_selector_userInfo_repeats  (ti : float) (aTarget : [`NSObject] Objc.t) (aSelector : selector) (userInfo : [`NSObject] Objc.t) (yesOrNo : bool) =
    let sel, args = (
      Objc.arg ti "timerWithTimeInterval" make_float
      ++ Objc.arg aTarget "target" make_pointer_from_object
      ++ Objc.arg aSelector "selector" make_selector
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
      ++ Objc.arg yesOrNo "repeats" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSTimer] Objc.id))
let scheduledTimerWithTimeInterval_target_selector_userInfo_repeats  (ti : float) (aTarget : [`NSObject] Objc.t) (aSelector : selector) (userInfo : [`NSObject] Objc.t) (yesOrNo : bool) =
    let sel, args = (
      Objc.arg ti "scheduledTimerWithTimeInterval" make_float
      ++ Objc.arg aTarget "target" make_pointer_from_object
      ++ Objc.arg aSelector "selector" make_selector
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
      ++ Objc.arg yesOrNo "repeats" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSTimer] Objc.id))
