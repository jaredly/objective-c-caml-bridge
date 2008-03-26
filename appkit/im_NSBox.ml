(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSBox *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method borderType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "borderType")[])
       : int)
  method titlePosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "titlePosition")[])
       : int)
  method setBorderType (aType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBorderType:")
      [make_int aType]) : unit)
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
  method borderRect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "borderRect")[])
       : NSRect.t)
  method titleRect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "titleRect")[])
       : NSRect.t)
  method titleCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "titleCell")[])
       : [`NSObject] Objc.id)
  method sizeToFit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeToFit")[])
       : unit)
  method contentViewMargins =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "contentViewMargins")[])
       : NSSize.t)
  method setContentViewMargins (offsetSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentViewMargins:")
      [make_size offsetSize]) : unit)
  method setFrameFromContentFrame (contentFrame : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameFromContentFrame:")
      [make_rect contentFrame]) : unit)
  method contentView =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "contentView")[])
       : [`NSObject] Objc.id)
  method setContentView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentView:")
      [make_pointer_from_object aView]) : unit)
end
