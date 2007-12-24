(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSRulerMarker"
let _ = init()
let make_NSObject_of_NSRulerMarker (o : [`NSRulerMarker] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSRulerMarker *)
let class_NSRulerMarker = object
   val repr = Classes.find "NSRulerMarker"
   method _new = (Objc.objcnew repr : [`NSRulerMarker] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSRulerMarker] nativeNSObject)
end
(* Encapsulation for native instance of NSRulerMarker *)
class native_NSRulerMarker = fun (o : [`NSRulerMarker] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSRulerMarker o) as super
(*  UNSUPPORTED
   method initWithRulerView  ~markerLocation:(location : float ) ~image:(image : [`NSImage] Objc.t ) ~imageOrigin:(imageOrigin : (*NSPoint*) unsupported ) (ruler : [`NSRulerView] Objc.t) =
     let sel, args = (
       Objc.arg ruler "initWithRulerView" make_pointer_from_object
       ++ Objc.arg location "markerLocation" make_float
       ++ Objc.arg image "image" make_pointer_from_object
       ++ Objc.arg imageOrigin "imageOrigin" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method ruler =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "ruler:")[]) : [`NSRulerView] Objc.nativeNSObject)
   method setMarkerLocation (location : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMarkerLocation:")[make_float location]) : unit)
   method markerLocation =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "markerLocation:")[]) : float)
   method setImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImage:")[make_pointer_from_object image]) : unit)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
(*  UNSUPPORTED
   method setImageOrigin (imageOrigin : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImageOrigin:")[(*NSPoint*) unsupported imageOrigin]) : unit)

*)
(*  UNSUPPORTED
   method imageOrigin =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "imageOrigin:")[]) : (*NSPoint*) unsupported)

*)
   method setMovable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMovable:")[make_bool flag]) : unit)
   method setRemovable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRemovable:")[make_bool flag]) : unit)
   method isMovable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isMovable:")[]) : bool)
   method isRemovable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRemovable:")[]) : bool)
   method isDragging =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isDragging:")[]) : bool)
   method setRepresentedObject (representedObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRepresentedObject:")[make_pointer_from_object representedObject]) : unit)
   method representedObject =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "representedObject:")[]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method imageRectInRuler =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "imageRectInRuler:")[]) : (*NSRect*) unsupported)

*)
   method thicknessRequiredInRuler =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "thicknessRequiredInRuler:")[]) : float)
(*  UNSUPPORTED
   method drawRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawRect:")[(*NSRect*) unsupported rect]) : unit)

*)
   method trackMouse  ~adding:(isAdding : bool ) (mouseDownEvent : [`NSEvent] Objc.t) =
     let sel, args = (
       Objc.arg mouseDownEvent "trackMouse" make_pointer_from_object
       ++ Objc.arg isAdding "adding" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
end
