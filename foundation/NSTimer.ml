(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSDate


external init : unit -> unit = "caml_init_NSTimer"
let _ = init()
let make_NSObject_of_NSTimer (o : [`NSTimer] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSTimer *)
let class_NSTimer = object
   val repr = Classes.find "NSTimer"
   method _new = (Objc.objcnew repr : [`NSTimer] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTimer] nativeNSObject)
   (* skipping selector timerWithTimeInterval:invocation:repeats *)
   (* skipping selector scheduledTimerWithTimeInterval:invocation:repeats *)
   method timerWithTimeInterval  ~target:(aTarget : [`NSObject] Objc.t ) ~selector:(aSelector : selector ) ~userInfo:(userInfo : [`NSObject] Objc.t ) ~repeats:(yesOrNo : bool ) (ti : float) =
     let sel, args = (
       Objc.arg ti "timerWithTimeInterval" make_float
       ++ Objc.arg aTarget "target" make_pointer_from_object
       ++ Objc.arg aSelector "selector" make_selector
       ++ Objc.arg userInfo "userInfo" make_pointer_from_object
       ++ Objc.arg yesOrNo "repeats" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSTimer] Objc.nativeNSObject)
   method scheduledTimerWithTimeInterval  ~target:(aTarget : [`NSObject] Objc.t ) ~selector:(aSelector : selector ) ~userInfo:(userInfo : [`NSObject] Objc.t ) ~repeats:(yesOrNo : bool ) (ti : float) =
     let sel, args = (
       Objc.arg ti "scheduledTimerWithTimeInterval" make_float
       ++ Objc.arg aTarget "target" make_pointer_from_object
       ++ Objc.arg aSelector "selector" make_selector
       ++ Objc.arg userInfo "userInfo" make_pointer_from_object
       ++ Objc.arg yesOrNo "repeats" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSTimer] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSTimer *)
class native_NSTimer = fun (o : [`NSTimer] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSTimer o) as super
   method initWithFireDate  ~interval:(ti : float ) ~target:(t : [`NSObject] Objc.t ) ~selector:(s : selector ) ~userInfo:(ui : [`NSObject] Objc.t ) ~repeats:(rep : bool ) (date : [`NSDate] Objc.t) =
     let sel, args = (
       Objc.arg date "initWithFireDate" make_pointer_from_object
       ++ Objc.arg ti "interval" make_float
       ++ Objc.arg t "target" make_pointer_from_object
       ++ Objc.arg s "selector" make_selector
       ++ Objc.arg ui "userInfo" make_pointer_from_object
       ++ Objc.arg rep "repeats" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method fire =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "fire:")[]) : unit)
   method fireDate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fireDate:")[]) : [`NSDate] Objc.nativeNSObject)
   method setFireDate (date : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFireDate:")[make_pointer_from_object date]) : unit)
   method timeInterval =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "timeInterval:")[]) : float)
   method invalidate =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "invalidate:")[]) : unit)
   method isValid =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isValid:")[]) : bool)
   method userInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "userInfo:")[]) : [`NSObject] Objc.nativeNSObject)
end
