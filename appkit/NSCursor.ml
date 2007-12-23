open Objc
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSCursor"
let _ = init()
(* Class object for NSCursor *)
let class_NSCursor = object
   val o = Classes.find "NSCursor"
   method _new = (Objc.objcnew o : [`NSCursor] nativeNSObject)
   method currentCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method arrowCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "arrowCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method l_IBeamCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_IBeamCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method pointingHandCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pointingHandCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method closedHandCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "closedHandCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method openHandCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "openHandCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeLeftCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resizeLeftCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeRightCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resizeRightCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeLeftRightCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resizeLeftRightCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeUpCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resizeUpCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeDownCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resizeDownCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeUpDownCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resizeUpDownCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method crosshairCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "crosshairCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method disappearingItemCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "disappearingItemCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method hide =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "hide:")[]) : [`NSCursor] Objc.nativeNSObject)
   method unhide =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "unhide:")[]) : [`NSCursor] Objc.nativeNSObject)
   method setHiddenUntilMouseMoves (flag : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setHiddenUntilMouseMoves:")[make_bool flag]) : [`NSCursor] Objc.nativeNSObject)
   method pop =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pop:")[]) : [`NSCursor] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSCursor *)
class native_NSCursor = fun (o : [`NSCursor] nativeNSObject) -> object (self)
   val o = o
   method o = o
   (* skipping selector initWithImage:hotSpot *)
(*  UNSUPPORTED
   method initWithImage  ~foregroundColorHint:(fg : [`NSColor] Objc.t ) ~backgroundColorHint:(bg : [`NSColor] Objc.t ) ~hotSpot:(hotSpot : (*NSPoint*) unsupported ) (newImage : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg newImage "initWithImage" make_pointer_from_object
       ++ Objc.arg fg "foregroundColorHint" make_pointer_from_object
       ++ Objc.arg bg "backgroundColorHint" make_pointer_from_object
       ++ Objc.arg hotSpot "hotSpot" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
(*  UNSUPPORTED
   method hotSpot =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "hotSpot:")[]) : (*NSPoint*) unsupported)

*)
   method push =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "push:")[]) : unit)
   method pop =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "pop:")[]) : unit)
   method set =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "set:")[]) : unit)
   method setOnMouseExited (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setOnMouseExited:")[make_bool flag]) : unit)
   method setOnMouseEntered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setOnMouseEntered:")[make_bool flag]) : unit)
   method isSetOnMouseExited =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSetOnMouseExited:")[]) : bool)
   method isSetOnMouseEntered =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSetOnMouseEntered:")[]) : bool)
   method mouseEntered (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseEntered:")[make_pointer_from_object theEvent]) : unit)
   method mouseExited (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseExited:")[make_pointer_from_object theEvent]) : unit)
end
