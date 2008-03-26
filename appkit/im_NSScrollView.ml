(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScrollView *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method documentVisibleRect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "documentVisibleRect")[])
       : NSRect.t)
  method contentSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "contentSize")[])
       : NSSize.t)
  method setDocumentView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocumentView:")
      [make_pointer_from_object aView]) : unit)
  method documentView =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentView")[])
       : [`NSObject] Objc.id)
  method setContentView (contentView : [`NSClipView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentView:")
      [make_pointer_from_object contentView]) : unit)
  method contentView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "contentView")[])
       : [`NSClipView] Objc.id))
  method setDocumentCursor (anObj : [`NSCursor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocumentCursor:")
      [make_pointer_from_object anObj]) : unit)
  method documentCursor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentCursor")[])
       : [`NSCursor] Objc.id))
  method setBorderType (aType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBorderType:")
      [make_int aType]) : unit)
  method borderType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "borderType")[])
       : int)
  method setBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object color]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
  method setDrawsBackground (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDrawsBackground:")
      [make_bool flag]) : unit)
  method drawsBackground =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawsBackground")[])
       : bool)
  method setHasVerticalScroller (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasVerticalScroller:")
      [make_bool flag]) : unit)
  method hasVerticalScroller =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasVerticalScroller")[])
       : bool)
  method setHasHorizontalScroller (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasHorizontalScroller:")
      [make_bool flag]) : unit)
  method hasHorizontalScroller =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasHorizontalScroller")[])
       : bool)
  method setVerticalScroller (anObject : [`NSScroller] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVerticalScroller:")
      [make_pointer_from_object anObject]) : unit)
  method verticalScroller =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "verticalScroller")[])
       : [`NSScroller] Objc.id))
  method setHorizontalScroller (anObject : [`NSScroller] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHorizontalScroller:")
      [make_pointer_from_object anObject]) : unit)
  method horizontalScroller =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "horizontalScroller")[])
       : [`NSScroller] Objc.id))
  method autohidesScrollers =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autohidesScrollers")[])
       : bool)
  method setAutohidesScrollers (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutohidesScrollers:")
      [make_bool flag]) : unit)
  method setHorizontalLineScroll (value : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHorizontalLineScroll:")
      [make_float value]) : unit)
  method setVerticalLineScroll (value : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVerticalLineScroll:")
      [make_float value]) : unit)
  method setLineScroll (value : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineScroll:")
      [make_float value]) : unit)
  method horizontalLineScroll =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "horizontalLineScroll")[])
       : float)
  method verticalLineScroll =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "verticalLineScroll")[])
       : float)
  method lineScroll =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "lineScroll")[])
       : float)
  method setHorizontalPageScroll (value : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHorizontalPageScroll:")
      [make_float value]) : unit)
  method setVerticalPageScroll (value : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVerticalPageScroll:")
      [make_float value]) : unit)
  method setPageScroll (value : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPageScroll:")
      [make_float value]) : unit)
  method horizontalPageScroll =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "horizontalPageScroll")[])
       : float)
  method verticalPageScroll =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "verticalPageScroll")[])
       : float)
  method pageScroll =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "pageScroll")[])
       : float)
  method setScrollsDynamically (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScrollsDynamically:")
      [make_bool flag]) : unit)
  method scrollsDynamically =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scrollsDynamically")[])
       : bool)
  method tile =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "tile")[])
       : unit)
  method reflectScrolledClipView (cView : [`NSClipView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reflectScrolledClipView:")
      [make_pointer_from_object cView]) : unit)
  method scrollWheel (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollWheel:")
      [make_pointer_from_object theEvent]) : unit)
end
