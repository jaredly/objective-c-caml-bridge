(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSView


external init : unit -> unit = "caml_init_NSClipView"
let _ = init()
let make_NSView_of_NSClipView (o : [`NSClipView] nativeNSObject) = (Obj.magic o : [`NSView] nativeNSObject)
(* Class object for NSClipView *)
let class_NSClipView = object
   val repr = Classes.find "NSClipView"
   method _new = (Objc.objcnew repr : [`NSClipView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSClipView] nativeNSObject)
end
(* Encapsulation for native instance of NSClipView *)
class native_NSClipView = fun (o : [`NSClipView] nativeNSObject) -> object (self)
   inherit native_NSView (make_NSView_of_NSClipView o) as super
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "drawsBackground:")[]) : bool)
   method setDocumentView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDocumentView:")[make_pointer_from_object aView]) : unit)
   method documentView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentView:")[]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method documentRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "documentRect:")[]) : (*NSRect*) unsupported)

*)
   method setDocumentCursor (anObj : [`NSCursor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDocumentCursor:")[make_pointer_from_object anObj]) : unit)
   method documentCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
(*  UNSUPPORTED
   method documentVisibleRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "documentVisibleRect:")[]) : (*NSRect*) unsupported)

*)
   method viewFrameChanged (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewFrameChanged:")[make_pointer_from_object notification]) : unit)
   method viewBoundsChanged (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewBoundsChanged:")[make_pointer_from_object notification]) : unit)
   method setCopiesOnScroll (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCopiesOnScroll:")[make_bool flag]) : unit)
   method copiesOnScroll =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "copiesOnScroll:")[]) : bool)
   method autoscroll (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autoscroll:")[make_pointer_from_object theEvent]) : bool)
(*  UNSUPPORTED
   method constrainScrollPoint (newOrigin : (*NSPoint*) unsupported) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "constrainScrollPoint:")[(*NSPoint*) unsupported newOrigin]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method scrollToPoint (newOrigin : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scrollToPoint:")[(*NSPoint*) unsupported newOrigin]) : unit)

*)
end
(* Class object for NSView *)
let class_NSView = object
   val repr = Classes.find "NSView"
   method _new = (Objc.objcnew repr : [`NSView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSView] nativeNSObject)
(* methods for category NSClipViewSuperview *)
end
(* Encapsulation for native instance of NSView *)
class native_NSView = fun (o : [`NSView] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSClipViewSuperview *)
   method reflectScrolledClipView (aClipView : [`NSClipView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "reflectScrolledClipView:")[make_pointer_from_object aClipView]) : unit)
(*  UNSUPPORTED
   method scrollClipView  ~toPoint:(aPoint : (*NSPoint*) unsupported ) (aClipView : [`NSClipView] Objc.t) =
     let sel, args = (
       Objc.arg aClipView "scrollClipView" make_pointer_from_object
       ++ Objc.arg aPoint "toPoint" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
