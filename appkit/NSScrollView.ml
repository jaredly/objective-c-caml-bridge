(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSDate
open NSView


external init : unit -> unit = "caml_init_NSScrollView"
let _ = init()
let make_NSView_of_NSScrollView (o : [`NSScrollView] nativeNSObject) = (Obj.magic o : [`NSView] nativeNSObject)
(* Class object for NSScrollView *)
let class_NSScrollView = object
   val repr = Classes.find "NSScrollView"
   method _new = (Objc.objcnew repr : [`NSScrollView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScrollView] nativeNSObject)
(* methods for category NSRulerSupport *)
   method setRulerViewClass (rulerViewClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setRulerViewClass:")[make_pointer_from_object rulerViewClass]) : [`NSScrollView] Objc.nativeNSObject)
   method rulerViewClass =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "rulerViewClass:")[]) : [`NSScrollView] Objc.nativeNSObject)
(*  UNSUPPORTED
   method frameSizeForContentSize  ~hasHorizontalScroller:(hFlag : bool ) ~hasVerticalScroller:(vFlag : bool ) ~borderType:(aType : (*NSBorderType*) unsupported ) (cSize : (*NSSize*) unsupported) =
     let sel, args = (
       Objc.arg cSize "frameSizeForContentSize" (*NSSize*) unsupported
       ++ Objc.arg hFlag "hasHorizontalScroller" make_bool
       ++ Objc.arg vFlag "hasVerticalScroller" make_bool
       ++ Objc.arg aType "borderType" (*NSBorderType*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSScrollView] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method contentSizeForFrameSize  ~hasHorizontalScroller:(hFlag : bool ) ~hasVerticalScroller:(vFlag : bool ) ~borderType:(aType : (*NSBorderType*) unsupported ) (fSize : (*NSSize*) unsupported) =
     let sel, args = (
       Objc.arg fSize "contentSizeForFrameSize" (*NSSize*) unsupported
       ++ Objc.arg hFlag "hasHorizontalScroller" make_bool
       ++ Objc.arg vFlag "hasVerticalScroller" make_bool
       ++ Objc.arg aType "borderType" (*NSBorderType*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSScrollView] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSScrollView *)
class native_NSScrollView = fun (o : [`NSScrollView] nativeNSObject) -> object (self)
   inherit native_NSView (make_NSView_of_NSScrollView o) as super
(* methods for category NSRulerSupport *)
   method setRulersVisible (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRulersVisible:")[make_bool flag]) : unit)
   method rulersVisible =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "rulersVisible:")[]) : bool)
   method setHasHorizontalRuler (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHasHorizontalRuler:")[make_bool flag]) : unit)
   method hasHorizontalRuler =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasHorizontalRuler:")[]) : bool)
   method setHasVerticalRuler (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHasVerticalRuler:")[make_bool flag]) : unit)
   method hasVerticalRuler =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasVerticalRuler:")[]) : bool)
   method setHorizontalRulerView (ruler : [`NSRulerView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHorizontalRulerView:")[make_pointer_from_object ruler]) : unit)
   method horizontalRulerView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "horizontalRulerView:")[]) : [`NSRulerView] Objc.nativeNSObject)
   method setVerticalRulerView (ruler : [`NSRulerView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVerticalRulerView:")[make_pointer_from_object ruler]) : unit)
   method verticalRulerView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "verticalRulerView:")[]) : [`NSRulerView] Objc.nativeNSObject)
(*  UNSUPPORTED
   method documentVisibleRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "documentVisibleRect:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method contentSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "contentSize:")[]) : (*NSSize*) unsupported)

*)
   method setDocumentView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDocumentView:")[make_pointer_from_object aView]) : unit)
   method documentView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentView:")[]) : [`NSObject] Objc.nativeNSObject)
   method setContentView (contentView : [`NSClipView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentView:")[make_pointer_from_object contentView]) : unit)
   method contentView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "contentView:")[]) : [`NSClipView] Objc.nativeNSObject)
   method setDocumentCursor (anObj : [`NSCursor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDocumentCursor:")[make_pointer_from_object anObj]) : unit)
   method documentCursor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "documentCursor:")[]) : [`NSCursor] Objc.nativeNSObject)
(*  UNSUPPORTED
   method setBorderType (aType : (*NSBorderType*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBorderType:")[(*NSBorderType*) unsupported aType]) : unit)

*)
(*  UNSUPPORTED
   method borderType =
     ((*NSBorderType*) unsupported (Objc.invoke (*NSBorderType*) Objc.tag_unsupported repr (Selector.find "borderType:")[]) : (*NSBorderType*) unsupported)

*)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "drawsBackground:")[]) : bool)
   method setHasVerticalScroller (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHasVerticalScroller:")[make_bool flag]) : unit)
   method hasVerticalScroller =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasVerticalScroller:")[]) : bool)
   method setHasHorizontalScroller (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHasHorizontalScroller:")[make_bool flag]) : unit)
   method hasHorizontalScroller =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasHorizontalScroller:")[]) : bool)
   method setVerticalScroller (anObject : [`NSScroller] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVerticalScroller:")[make_pointer_from_object anObject]) : unit)
   method verticalScroller =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "verticalScroller:")[]) : [`NSScroller] Objc.nativeNSObject)
   method setHorizontalScroller (anObject : [`NSScroller] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHorizontalScroller:")[make_pointer_from_object anObject]) : unit)
   method horizontalScroller =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "horizontalScroller:")[]) : [`NSScroller] Objc.nativeNSObject)
   method autohidesScrollers =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autohidesScrollers:")[]) : bool)
   method setAutohidesScrollers (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutohidesScrollers:")[make_bool flag]) : unit)
   method setHorizontalLineScroll (value : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHorizontalLineScroll:")[make_float value]) : unit)
   method setVerticalLineScroll (value : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVerticalLineScroll:")[make_float value]) : unit)
   method setLineScroll (value : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLineScroll:")[make_float value]) : unit)
   method horizontalLineScroll =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "horizontalLineScroll:")[]) : float)
   method verticalLineScroll =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "verticalLineScroll:")[]) : float)
   method lineScroll =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "lineScroll:")[]) : float)
   method setHorizontalPageScroll (value : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHorizontalPageScroll:")[make_float value]) : unit)
   method setVerticalPageScroll (value : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVerticalPageScroll:")[make_float value]) : unit)
   method setPageScroll (value : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPageScroll:")[make_float value]) : unit)
   method horizontalPageScroll =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "horizontalPageScroll:")[]) : float)
   method verticalPageScroll =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "verticalPageScroll:")[]) : float)
   method pageScroll =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "pageScroll:")[]) : float)
   method setScrollsDynamically (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setScrollsDynamically:")[make_bool flag]) : unit)
   method scrollsDynamically =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scrollsDynamically:")[]) : bool)
   method tile =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "tile:")[]) : unit)
   method reflectScrolledClipView (cView : [`NSClipView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "reflectScrolledClipView:")[make_pointer_from_object cView]) : unit)
   method scrollWheel (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scrollWheel:")[make_pointer_from_object theEvent]) : unit)
end
