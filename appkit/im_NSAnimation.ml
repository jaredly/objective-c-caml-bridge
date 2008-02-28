(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAnimation *)
class virtual methods = object (self)
  method virtual repr : [`NSAnimation] Objc.id
  method initWithDuration  ~animationCurve:(animationCurve : int ) (duration : float) =
    let sel, args = (
      Objc.arg duration "initWithDuration" make_float
      ++ Objc.arg animationCurve "animationCurve" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method startAnimation =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "startAnimation")[])
       : unit)
  method stopAnimation =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopAnimation")[])
       : unit)
  method isAnimating =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAnimating")[])
       : bool)
(*  UNSUPPORTED
  method currentProgress =
    ((*NSAnimationProgress*) unsupported (Objc.invoke (*NSAnimationProgress*) Objc.tag_unsupported self#repr (Selector.find "currentProgress")[])
       : (*NSAnimationProgress*) unsupported)

*)
(*  UNSUPPORTED
  method setCurrentProgress (progress : (*NSAnimationProgress*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCurrentProgress:")
      [(*NSAnimationProgress*) unsupported progress]) : unit)

*)
  method setDuration (duration : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDuration:")
      [make_float duration]) : unit)
  method duration =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "duration")[])
       : float)
  method animationBlockingMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "animationBlockingMode")[])
       : int)
  method setAnimationBlockingMode (animationBlockingMode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAnimationBlockingMode:")
      [make_int animationBlockingMode]) : unit)
  method setFrameRate (framesPerSecond : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameRate:")
      [make_float framesPerSecond]) : unit)
  method frameRate =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "frameRate")[])
       : float)
  method setAnimationCurve (curve : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAnimationCurve:")
      [make_int curve]) : unit)
  method animationCurve =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "animationCurve")[])
       : int)
  method currentValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "currentValue")[])
       : float)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method progressMarks =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "progressMarks")[])
       : [`NSArray] Objc.id))
  method setProgressMarks (progressMarks : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setProgressMarks:")
      [make_pointer_from_object progressMarks]) : unit)
(*  UNSUPPORTED
  method addProgressMark (progressMark : (*NSAnimationProgress*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addProgressMark:")
      [(*NSAnimationProgress*) unsupported progressMark]) : unit)

*)
(*  UNSUPPORTED
  method removeProgressMark (progressMark : (*NSAnimationProgress*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeProgressMark:")
      [(*NSAnimationProgress*) unsupported progressMark]) : unit)

*)
(*  UNSUPPORTED
  method startWhenAnimation  ~reachesProgress:(startProgress : (*NSAnimationProgress*) unsupported ) (animation : [`NSAnimation] Objc.t) =
    let sel, args = (
      Objc.arg animation "startWhenAnimation" make_pointer_from_object
      ++ Objc.arg startProgress "reachesProgress" (*NSAnimationProgress*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method stopWhenAnimation  ~reachesProgress:(stopProgress : (*NSAnimationProgress*) unsupported ) (animation : [`NSAnimation] Objc.t) =
    let sel, args = (
      Objc.arg animation "stopWhenAnimation" make_pointer_from_object
      ++ Objc.arg stopProgress "reachesProgress" (*NSAnimationProgress*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method clearStartAnimation =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "clearStartAnimation")[])
       : unit)
  method clearStopAnimation =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "clearStopAnimation")[])
       : unit)
  method runLoopModesForAnimating =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "runLoopModesForAnimating")[])
       : [`NSArray] Objc.id))
end
