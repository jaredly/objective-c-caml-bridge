open Objc
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSAffineTransform"
let _ = init()
(* Class object for NSAffineTransform *)
let class_NSAffineTransform = object
   val o = Classes.find "NSAffineTransform"
   method _new = (Objc.objcnew o : [`NSAffineTransform] nativeNSObject)
   method transform =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "transform:")[]) : [`NSAffineTransform] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAffineTransform *)
class native_NSAffineTransform = fun (o : [`NSAffineTransform] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithTransform (transform : [`NSAffineTransform] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithTransform:")[make_pointer_from_object transform]) : [`NSObject] Objc.nativeNSObject)
   method translateXBy  ~yBy:(deltaY : float ) (deltaX : float) =
     let sel, args = (
       Objc.arg deltaX "translateXBy" make_float
       ++ Objc.arg deltaY "yBy" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method rotateByDegrees (angle : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "rotateByDegrees:")[make_float angle]) : unit)
   method rotateByRadians (angle : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "rotateByRadians:")[make_float angle]) : unit)
   method scaleBy (scale : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scaleBy:")[make_float scale]) : unit)
   method scaleXBy  ~yBy:(scaleY : float ) (scaleX : float) =
     let sel, args = (
       Objc.arg scaleX "scaleXBy" make_float
       ++ Objc.arg scaleY "yBy" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method invert =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "invert:")[]) : unit)
   method appendTransform (transform : [`NSAffineTransform] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "appendTransform:")[make_pointer_from_object transform]) : unit)
   method prependTransform (transform : [`NSAffineTransform] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "prependTransform:")[make_pointer_from_object transform]) : unit)
(*  UNSUPPORTED
   method transformPoint (aPoint : (*NSPoint*) unsupported) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "transformPoint:")[(*NSPoint*) unsupported aPoint]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method transformSize (aSize : (*NSSize*) unsupported) =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "transformSize:")[(*NSSize*) unsupported aSize]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method transformStruct =
     ((*NSAffineTransformStruct*) unsupported (Objc.invoke (*NSAffineTransformStruct*) Objc.tag_unsupported o (Selector.find "transformStruct:")[]) : (*NSAffineTransformStruct*) unsupported)

*)
(*  UNSUPPORTED
   method setTransformStruct (transformStruct : (*NSAffineTransformStruct*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTransformStruct:")[(*NSAffineTransformStruct*) unsupported transformStruct]) : unit)

*)
end
