(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCursor *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithImage_hotSpot  (newImage : [`NSImage] Objc.t) (aPoint : NSPoint.t) =
    let sel, args = (
      Objc.arg newImage "initWithImage" make_pointer_from_object
      ++ Objc.arg aPoint "hotSpot" make_point
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithImage_foregroundColorHint_backgroundColorHint_hotSpot  (newImage : [`NSImage] Objc.t) (fg : [`NSColor] Objc.t) (bg : [`NSColor] Objc.t) (hotSpot : NSPoint.t) =
    let sel, args = (
      Objc.arg newImage "initWithImage" make_pointer_from_object
      ++ Objc.arg fg "foregroundColorHint" make_pointer_from_object
      ++ Objc.arg bg "backgroundColorHint" make_pointer_from_object
      ++ Objc.arg hotSpot "hotSpot" make_point
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method hotSpot =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "hotSpot")[])
       : NSPoint.t)
  method push =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "push")[])
       : unit)
  method pop =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "pop")[])
       : unit)
  method set =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "set")[])
       : unit)
  method setOnMouseExited (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOnMouseExited:")
      [make_bool flag]) : unit)
  method setOnMouseEntered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOnMouseEntered:")
      [make_bool flag]) : unit)
  method isSetOnMouseExited =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSetOnMouseExited")[])
       : bool)
  method isSetOnMouseEntered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSetOnMouseEntered")[])
       : bool)
  method mouseEntered (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseEntered:")
      [make_pointer_from_object theEvent]) : unit)
  method mouseExited (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseExited:")
      [make_pointer_from_object theEvent]) : unit)
end
