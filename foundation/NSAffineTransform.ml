(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSAffineTransform"
let _ = init()
let make_NSObject_of_NSAffineTransform (o : [`NSAffineTransform] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSAffineTransform *)
let class_NSAffineTransform = object
   val repr = Classes.find "NSAffineTransform"
   method _new = (Objc.objcnew repr : [`NSAffineTransform] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAffineTransform] nativeNSObject)
   method transform =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "transform:")[]) : [`NSAffineTransform] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAffineTransform *)
class native_NSAffineTransform = fun (o : [`NSAffineTransform] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSAffineTransform o) as super
   method initWithTransform (transform : [`NSAffineTransform] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithTransform:")[make_pointer_from_object transform]) : [`NSObject] Objc.nativeNSObject)
   method translateXBy  ~yBy:(deltaY : float ) (deltaX : float) =
     let sel, args = (
       Objc.arg deltaX "translateXBy" make_float
       ++ Objc.arg deltaY "yBy" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method rotateByDegrees (angle : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "rotateByDegrees:")[make_float angle]) : unit)
   method rotateByRadians (angle : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "rotateByRadians:")[make_float angle]) : unit)
   method scaleBy (scale : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scaleBy:")[make_float scale]) : unit)
   method scaleXBy  ~yBy:(scaleY : float ) (scaleX : float) =
     let sel, args = (
       Objc.arg scaleX "scaleXBy" make_float
       ++ Objc.arg scaleY "yBy" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method invert =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "invert:")[]) : unit)
   method appendTransform (transform : [`NSAffineTransform] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "appendTransform:")[make_pointer_from_object transform]) : unit)
   method prependTransform (transform : [`NSAffineTransform] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "prependTransform:")[make_pointer_from_object transform]) : unit)
(*  UNSUPPORTED
   method transformPoint (aPoint : (*NSPoint*) unsupported) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "transformPoint:")[(*NSPoint*) unsupported aPoint]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method transformSize (aSize : (*NSSize*) unsupported) =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "transformSize:")[(*NSSize*) unsupported aSize]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method transformStruct =
     ((*NSAffineTransformStruct*) unsupported (Objc.invoke (*NSAffineTransformStruct*) Objc.tag_unsupported repr (Selector.find "transformStruct:")[]) : (*NSAffineTransformStruct*) unsupported)

*)
(*  UNSUPPORTED
   method setTransformStruct (transformStruct : (*NSAffineTransformStruct*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTransformStruct:")[(*NSAffineTransformStruct*) unsupported transformStruct]) : unit)

*)
end
