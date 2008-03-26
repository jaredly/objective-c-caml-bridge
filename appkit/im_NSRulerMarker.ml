(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSRulerMarker *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithRulerView_markerLocation_image_imageOrigin  (ruler : [`NSRulerView] Objc.t) (location : float) (image : [`NSImage] Objc.t) (imageOrigin : NSPoint.t) =
    let sel, args = (
      Objc.arg ruler "initWithRulerView" make_pointer_from_object
      ++ Objc.arg location "markerLocation" make_float
      ++ Objc.arg image "image" make_pointer_from_object
      ++ Objc.arg imageOrigin "imageOrigin" make_point
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method ruler =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "ruler")[])
       : [`NSRulerView] Objc.id))
  method setMarkerLocation (location : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMarkerLocation:")
      [make_float location]) : unit)
  method markerLocation =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "markerLocation")[])
       : float)
  method setImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object image]) : unit)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method setImageOrigin (imageOrigin : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImageOrigin:")
      [make_point imageOrigin]) : unit)
  method imageOrigin =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "imageOrigin")[])
       : NSPoint.t)
  method setMovable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMovable:")
      [make_bool flag]) : unit)
  method setRemovable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRemovable:")
      [make_bool flag]) : unit)
  method isMovable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isMovable")[])
       : bool)
  method isRemovable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRemovable")[])
       : bool)
  method isDragging =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDragging")[])
       : bool)
  method setRepresentedObject (representedObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRepresentedObject:")
      [make_pointer_from_object representedObject]) : unit)
  method representedObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "representedObject")[])
       : [`NSObject] Objc.id)
  method imageRectInRuler =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "imageRectInRuler")[])
       : NSRect.t)
  method thicknessRequiredInRuler =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "thicknessRequiredInRuler")[])
       : float)
  method drawRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawRect:")
      [make_rect rect]) : unit)
  method trackMouse_adding  (mouseDownEvent : [`NSEvent] Objc.t) (isAdding : bool) =
    let sel, args = (
      Objc.arg mouseDownEvent "trackMouse" make_pointer_from_object
      ++ Objc.arg isAdding "adding" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
