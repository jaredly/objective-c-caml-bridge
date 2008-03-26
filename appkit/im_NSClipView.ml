(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSClipView *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
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
  method setDocumentView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocumentView:")
      [make_pointer_from_object aView]) : unit)
  method documentView =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentView")[])
       : [`NSObject] Objc.id)
  method documentRect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "documentRect")[])
       : NSRect.t)
  method setDocumentCursor (anObj : [`NSCursor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocumentCursor:")
      [make_pointer_from_object anObj]) : unit)
  method documentCursor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentCursor")[])
       : [`NSCursor] Objc.id))
  method documentVisibleRect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "documentVisibleRect")[])
       : NSRect.t)
  method viewFrameChanged (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewFrameChanged:")
      [make_pointer_from_object notification]) : unit)
  method viewBoundsChanged (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewBoundsChanged:")
      [make_pointer_from_object notification]) : unit)
  method setCopiesOnScroll (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCopiesOnScroll:")
      [make_bool flag]) : unit)
  method copiesOnScroll =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "copiesOnScroll")[])
       : bool)
  method autoscroll (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autoscroll:")
      [make_pointer_from_object theEvent]) : bool)
  method constrainScrollPoint (newOrigin : NSPoint.t) =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "constrainScrollPoint:")
      [make_point newOrigin]) : NSPoint.t)
  method scrollToPoint (newOrigin : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollToPoint:")
      [make_point newOrigin]) : unit)
end
