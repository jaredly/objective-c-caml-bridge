(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAffineTransform *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithTransform (transform : [`NSAffineTransform] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithTransform:")
      [make_pointer_from_object transform]) : [`NSObject] Objc.id)
  method translateXBy_yBy  (deltaX : float) (deltaY : float) =
    let sel, args = (
      Objc.arg deltaX "translateXBy" make_float
      ++ Objc.arg deltaY "yBy" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rotateByDegrees (angle : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "rotateByDegrees:")
      [make_float angle]) : unit)
  method rotateByRadians (angle : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "rotateByRadians:")
      [make_float angle]) : unit)
  method scaleBy (scale : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scaleBy:")
      [make_float scale]) : unit)
  method scaleXBy_yBy  (scaleX : float) (scaleY : float) =
    let sel, args = (
      Objc.arg scaleX "scaleXBy" make_float
      ++ Objc.arg scaleY "yBy" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method invert =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invert")[])
       : unit)
  method appendTransform (transform : [`NSAffineTransform] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "appendTransform:")
      [make_pointer_from_object transform]) : unit)
  method prependTransform (transform : [`NSAffineTransform] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "prependTransform:")
      [make_pointer_from_object transform]) : unit)
  method transformPoint (aPoint : NSPoint.t) =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "transformPoint:")
      [make_point aPoint]) : NSPoint.t)
  method transformSize (aSize : NSSize.t) =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "transformSize:")
      [make_size aSize]) : NSSize.t)
(*  UNSUPPORTED
  method transformStruct =
    ((*NSAffineTransformStruct*) unsupported (Objc.invoke (*NSAffineTransformStruct*) Objc.tag_unsupported self#repr (Selector.find "transformStruct")[])
       : (*NSAffineTransformStruct*) unsupported)

*)
(*  UNSUPPORTED
  method setTransformStruct (transformStruct : (*NSAffineTransformStruct*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTransformStruct:")
      [(*NSAffineTransformStruct*) unsupported transformStruct]) : unit)

*)
end
