open Objc


external init : unit -> unit = "caml_init_NSAnimation"
let _ = init()
(* Class object for NSViewAnimation *)
let class_NSViewAnimation = object
   val o = Classes.find "NSViewAnimation"
   method _new = (Objc.objcnew o : [`NSViewAnimation] nativeNSObject)
end
(* Encapsulation for native instance of NSViewAnimation *)
class native_NSViewAnimation = fun (o : [`NSViewAnimation] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithViewAnimations (viewAnimations : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithViewAnimations:")[make_pointer_from_object viewAnimations]) : [`NSObject] Objc.nativeNSObject)
   method viewAnimations =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "viewAnimations:")[]) : [`NSArray] Objc.nativeNSObject)
   method setViewAnimations (viewAnimations : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setViewAnimations:")[make_pointer_from_object viewAnimations]) : unit)
end
(* Class object for NSAnimation *)
let class_NSAnimation = object
   val o = Classes.find "NSAnimation"
   method _new = (Objc.objcnew o : [`NSAnimation] nativeNSObject)
end
(* Encapsulation for native instance of NSAnimation *)
class native_NSAnimation = fun (o : [`NSAnimation] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithDuration  ~animationCurve:(animationCurve : int ) (duration : float) =
     let sel, args = (
       Objc.arg duration "initWithDuration" make_float
       ++ Objc.arg animationCurve "animationCurve" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method startAnimation =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "startAnimation:")[]) : unit)
   method stopAnimation =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "stopAnimation:")[]) : unit)
   method isAnimating =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isAnimating:")[]) : bool)
(*  UNSUPPORTED
   method currentProgress =
     ((*NSAnimationProgress*) unsupported (Objc.invoke (*NSAnimationProgress*) Objc.tag_unsupported o (Selector.find "currentProgress:")[]) : (*NSAnimationProgress*) unsupported)

*)
(*  UNSUPPORTED
   method setCurrentProgress (progress : (*NSAnimationProgress*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCurrentProgress:")[(*NSAnimationProgress*) unsupported progress]) : unit)

*)
   method setDuration (duration : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDuration:")[make_float duration]) : unit)
   method duration =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "duration:")[]) : float)
   method animationBlockingMode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "animationBlockingMode:")[]) : int)
   method setAnimationBlockingMode (animationBlockingMode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAnimationBlockingMode:")[make_int animationBlockingMode]) : unit)
   method setFrameRate (framesPerSecond : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFrameRate:")[make_float framesPerSecond]) : unit)
   method frameRate =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "frameRate:")[]) : float)
   method setAnimationCurve (curve : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAnimationCurve:")[make_int curve]) : unit)
   method animationCurve =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "animationCurve:")[]) : int)
   method currentValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "currentValue:")[]) : float)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method progressMarks =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "progressMarks:")[]) : [`NSArray] Objc.nativeNSObject)
   method setProgressMarks (progressMarks : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setProgressMarks:")[make_pointer_from_object progressMarks]) : unit)
(*  UNSUPPORTED
   method addProgressMark (progressMark : (*NSAnimationProgress*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addProgressMark:")[(*NSAnimationProgress*) unsupported progressMark]) : unit)

*)
(*  UNSUPPORTED
   method removeProgressMark (progressMark : (*NSAnimationProgress*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeProgressMark:")[(*NSAnimationProgress*) unsupported progressMark]) : unit)

*)
(*  UNSUPPORTED
   method startWhenAnimation  ~reachesProgress:(startProgress : (*NSAnimationProgress*) unsupported ) (animation : [`NSAnimation] Objc.t) =
     let sel, args = (
       Objc.arg animation "startWhenAnimation" make_pointer_from_object
       ++ Objc.arg startProgress "reachesProgress" (*NSAnimationProgress*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method stopWhenAnimation  ~reachesProgress:(stopProgress : (*NSAnimationProgress*) unsupported ) (animation : [`NSAnimation] Objc.t) =
     let sel, args = (
       Objc.arg animation "stopWhenAnimation" make_pointer_from_object
       ++ Objc.arg stopProgress "reachesProgress" (*NSAnimationProgress*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method clearStartAnimation =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "clearStartAnimation:")[]) : unit)
   method clearStopAnimation =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "clearStopAnimation:")[]) : unit)
   method runLoopModesForAnimating =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "runLoopModesForAnimating:")[]) : [`NSArray] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSAnimationDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSAnimationDelegate *)
   method animationShouldStart (animation : [`NSAnimation] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "animationShouldStart:")[make_pointer_from_object animation]) : bool)
   method animationDidStop (animation : [`NSAnimation] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "animationDidStop:")[make_pointer_from_object animation]) : unit)
   method animationDidEnd (animation : [`NSAnimation] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "animationDidEnd:")[make_pointer_from_object animation]) : unit)
(*  UNSUPPORTED
   method animation  ~valueForProgress:(progress : (*NSAnimationProgress*) unsupported ) (animation : [`NSAnimation] Objc.t) =
     let sel, args = (
       Objc.arg animation "animation" make_pointer_from_object
       ++ Objc.arg progress "valueForProgress" (*NSAnimationProgress*) unsupported
     ) ([],[]) in
       (get_float (Objc.invoke Objc.tag_float o (Selector.find_list sel) args) : float)

*)
   (* skipping selector animation:didReachProgressMark *)
end
