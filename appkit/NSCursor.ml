(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSGeometry


external init : unit -> unit = "caml_init_NSCursor"
let _ = init()
let make_NSObject_of_NSCursor (o : [`NSCursor] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSCursor *)
let class_NSCursor = object
   val repr = Classes.find "NSCursor"
   method _new = (Objc.objcnew repr : [`NSCursor] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSCursor] nativeNSObject)
   method currentCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method arrowCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arrowCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method l_IBeamCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_IBeamCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method pointingHandCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pointingHandCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method closedHandCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "closedHandCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method openHandCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "openHandCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeLeftCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resizeLeftCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeRightCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resizeRightCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeLeftRightCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resizeLeftRightCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeUpCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resizeUpCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeDownCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resizeDownCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method resizeUpDownCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resizeUpDownCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method crosshairCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "crosshairCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method disappearingItemCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "disappearingItemCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
   method hide =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "hide:")[]) : [`NSCursor] Objc.nativeNSObject)
   method unhide =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "unhide:")[]) : [`NSCursor] Objc.nativeNSObject)
   method setHiddenUntilMouseMoves (flag : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setHiddenUntilMouseMoves:")[make_bool flag]) : [`NSCursor] Objc.nativeNSObject)
   method pop =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pop:")[]) : [`NSCursor] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSCursor *)
class native_NSCursor = fun (o : [`NSCursor] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSCursor o) as super
   (* skipping selector initWithImage:hotSpot *)
(*  UNSUPPORTED
   method initWithImage  ~foregroundColorHint:(fg : [`NSColor] Objc.t ) ~backgroundColorHint:(bg : [`NSColor] Objc.t ) ~hotSpot:(hotSpot : (*NSPoint*) unsupported ) (newImage : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg newImage "initWithImage" make_pointer_from_object
       ++ Objc.arg fg "foregroundColorHint" make_pointer_from_object
       ++ Objc.arg bg "backgroundColorHint" make_pointer_from_object
       ++ Objc.arg hotSpot "hotSpot" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
(*  UNSUPPORTED
   method hotSpot =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "hotSpot:")[]) : (*NSPoint*) unsupported)

*)
   method push =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "push:")[]) : unit)
   method pop =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "pop:")[]) : unit)
   method set =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "set:")[]) : unit)
   method setOnMouseExited (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOnMouseExited:")[make_bool flag]) : unit)
   method setOnMouseEntered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOnMouseEntered:")[make_bool flag]) : unit)
   method isSetOnMouseExited =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSetOnMouseExited:")[]) : bool)
   method isSetOnMouseEntered =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSetOnMouseEntered:")[]) : bool)
   method mouseEntered (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "mouseEntered:")[make_pointer_from_object theEvent]) : unit)
   method mouseExited (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "mouseExited:")[make_pointer_from_object theEvent]) : unit)
end
