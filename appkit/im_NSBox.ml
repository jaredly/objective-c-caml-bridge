(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSBox *)
class virtual methods = object (self)
  method virtual repr : [`NSBox] Objc.id
(*  UNSUPPORTED
  method borderType =
    ((*NSBorderType*) unsupported (Objc.invoke (*NSBorderType*) Objc.tag_unsupported self#repr (Selector.find "borderType")[])
       : (*NSBorderType*) unsupported)

*)
  method titlePosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "titlePosition")[])
       : int)
(*  UNSUPPORTED
  method setBorderType (aType : (*NSBorderType*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBorderType:")
      [(*NSBorderType*) unsupported aType]) : unit)

*)
  method setBoxType (boxType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBoxType:")
      [make_int boxType]) : unit)
  method boxType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "boxType")[])
       : int)
  method setTitlePosition (aPosition : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitlePosition:")
      [make_int aPosition]) : unit)
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method titleFont =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "titleFont")[])
       : [`NSFont] Objc.id))
  method setTitleFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleFont:")
      [make_pointer_from_object fontObj]) : unit)
(*  UNSUPPORTED
  method borderRect =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "borderRect")[])
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method titleRect =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "titleRect")[])
       : (*NSRect*) unsupported)

*)
  method titleCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "titleCell")[])
       : [`NSObject] Objc.id)
  method sizeToFit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeToFit")[])
       : unit)
(*  UNSUPPORTED
  method contentViewMargins =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "contentViewMargins")[])
       : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
  method setContentViewMargins (offsetSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentViewMargins:")
      [(*NSSize*) unsupported offsetSize]) : unit)

*)
(*  UNSUPPORTED
  method setFrameFromContentFrame (contentFrame : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameFromContentFrame:")
      [(*NSRect*) unsupported contentFrame]) : unit)

*)
  method contentView =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "contentView")[])
       : [`NSObject] Objc.id)
  method setContentView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentView:")
      [make_pointer_from_object aView]) : unit)
end
