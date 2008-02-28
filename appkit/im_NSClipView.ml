(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSClipView *)
class virtual methods = object (self)
  method virtual repr : [`NSClipView] Objc.id
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
(*  UNSUPPORTED
  method documentRect =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "documentRect")[])
       : (*NSRect*) unsupported)

*)
  method setDocumentCursor (anObj : [`NSCursor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocumentCursor:")
      [make_pointer_from_object anObj]) : unit)
  method documentCursor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "documentCursor")[])
       : [`NSCursor] Objc.id))
(*  UNSUPPORTED
  method documentVisibleRect =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "documentVisibleRect")[])
       : (*NSRect*) unsupported)

*)
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
(*  UNSUPPORTED
  method constrainScrollPoint (newOrigin : (*NSPoint*) unsupported) =
    ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported self#repr (Selector.find "constrainScrollPoint:")
      [(*NSPoint*) unsupported newOrigin]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
  method scrollToPoint (newOrigin : (*NSPoint*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollToPoint:")
      [(*NSPoint*) unsupported newOrigin]) : unit)

*)
end
