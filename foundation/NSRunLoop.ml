open Objc
open NSObject
open NSDate


external init : unit -> unit = "caml_init_NSRunLoop"
let _ = init()
(* Class object for NSRunLoop *)
let class_NSRunLoop = object
   val o = Classes.find "NSRunLoop"
   method _new = (Objc.objcnew o : [`NSRunLoop] nativeNSObject)
(* methods for category NSOrderedPerform *)
(* methods for category NSRunLoopConveniences *)
   method currentRunLoop =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentRunLoop:")[]) : [`NSRunLoop] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSRunLoop *)
class native_NSRunLoop = fun (o : [`NSRunLoop] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSOrderedPerform *)
   method performSelector  ~target:(target : [`NSObject] Objc.t ) ~argument:(arg : [`NSObject] Objc.t ) ~order:(order : int ) ~modes:(modes : [`NSArray] Objc.t ) (aSelector : selector) =
     let sel, args = (
       Objc.arg aSelector "performSelector" make_selector
       ++ Objc.arg target "target" make_pointer_from_object
       ++ Objc.arg arg "argument" make_pointer_from_object
       ++ Objc.arg order "order" make_int
       ++ Objc.arg modes "modes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method cancelPerformSelector  ~target:(target : [`NSObject] Objc.t ) ~argument:(arg : [`NSObject] Objc.t ) (aSelector : selector) =
     let sel, args = (
       Objc.arg aSelector "cancelPerformSelector" make_selector
       ++ Objc.arg target "target" make_pointer_from_object
       ++ Objc.arg arg "argument" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method cancelPerformSelectorsWithTarget (target : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "cancelPerformSelectorsWithTarget:")[make_pointer_from_object target]) : unit)
(* methods for category NSRunLoopConveniences *)
   method run =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "run:")[]) : unit)
   method runUntilDate (limitDate : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "runUntilDate:")[make_pointer_from_object limitDate]) : unit)
   method runMode  ~beforeDate:(limitDate : [`NSDate] Objc.t ) (mode : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg mode "runMode" make_pointer_from_object
       ++ Objc.arg limitDate "beforeDate" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method configureAsServer =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "configureAsServer:")[]) : unit)
   method currentMode =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentMode:")[]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method getCFRunLoop =
     ((*CFRunLoopRef*) unsupported (Objc.invoke (*CFRunLoopRef*) Objc.tag_unsupported o (Selector.find "getCFRunLoop:")[]) : (*CFRunLoopRef*) unsupported)

*)
   method addTimer  ~forMode:(mode : [`NSString] Objc.t ) (timer : [`NSTimer] Objc.t) =
     let sel, args = (
       Objc.arg timer "addTimer" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method addPort  ~forMode:(mode : [`NSString] Objc.t ) (aPort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg aPort "addPort" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removePort  ~forMode:(mode : [`NSString] Objc.t ) (aPort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg aPort "removePort" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method limitDateForMode (mode : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "limitDateForMode:")[make_pointer_from_object mode]) : [`NSDate] Objc.nativeNSObject)
   method acceptInputForMode  ~beforeDate:(limitDate : [`NSDate] Objc.t ) (mode : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg mode "acceptInputForMode" make_pointer_from_object
       ++ Objc.arg limitDate "beforeDate" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSDelayedPerforming *)
   method cancelPreviousPerformRequestsWithTarget  ?selector:(aSelector : selector option) ?l_object:(anArgument : [`NSObject] Objc.t option) (aTarget : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg aTarget "cancelPreviousPerformRequestsWithTarget" make_pointer_from_object
       ++ Objc.opt_arg aSelector "selector" make_selector
       ++ Objc.opt_arg anArgument "l_object" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector cancelPreviousPerformRequestsWithTarget *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSDelayedPerforming *)
   method performSelector  ~withObject:(anArgument : [`NSObject] Objc.t ) ~afterDelay:(delay : float ) ?inModes:(modes : [`NSArray] Objc.t option) (aSelector : selector) =
     let sel, args = (
       Objc.arg aSelector "performSelector" make_selector
       ++ Objc.arg anArgument "withObject" make_pointer_from_object
       ++ Objc.arg delay "afterDelay" make_float
       ++ Objc.opt_arg modes "inModes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector performSelector:withObject:afterDelay *)
end
