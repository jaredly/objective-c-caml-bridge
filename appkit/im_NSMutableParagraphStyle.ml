(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableParagraphStyle *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setLineSpacing (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineSpacing:")
      [make_float aFloat]) : unit)
  method setParagraphSpacing (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setParagraphSpacing:")
      [make_float aFloat]) : unit)
  method setAlignment (alignment : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlignment:")
      [make_int alignment]) : unit)
  method setFirstLineHeadIndent (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFirstLineHeadIndent:")
      [make_float aFloat]) : unit)
  method setHeadIndent (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHeadIndent:")
      [make_float aFloat]) : unit)
  method setTailIndent (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTailIndent:")
      [make_float aFloat]) : unit)
  method setLineBreakMode (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineBreakMode:")
      [make_int mode]) : unit)
  method setMinimumLineHeight (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinimumLineHeight:")
      [make_float aFloat]) : unit)
  method setMaximumLineHeight (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaximumLineHeight:")
      [make_float aFloat]) : unit)
  method addTabStop (anObject : [`NSTextTab] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addTabStop:")
      [make_pointer_from_object anObject]) : unit)
  method removeTabStop (anObject : [`NSTextTab] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeTabStop:")
      [make_pointer_from_object anObject]) : unit)
  method setTabStops (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTabStops:")
      [make_pointer_from_object array]) : unit)
  method setParagraphStyle (obj : [`NSParagraphStyle] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setParagraphStyle:")
      [make_pointer_from_object obj]) : unit)
  method setBaseWritingDirection (writingDirection : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBaseWritingDirection:")
      [make_int writingDirection]) : unit)
  method setLineHeightMultiple (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineHeightMultiple:")
      [make_float aFloat]) : unit)
  method setParagraphSpacingBefore (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setParagraphSpacingBefore:")
      [make_float aFloat]) : unit)
  method setDefaultTabInterval (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDefaultTabInterval:")
      [make_float aFloat]) : unit)
  method setTextBlocks (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextBlocks:")
      [make_pointer_from_object array]) : unit)
  method setTextLists (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextLists:")
      [make_pointer_from_object array]) : unit)
  method setHyphenationFactor (aFactor : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHyphenationFactor:")
      [make_float aFactor]) : unit)
  method setTighteningFactorForTruncation (aFactor : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTighteningFactorForTruncation:")
      [make_float aFactor]) : unit)
  method setHeaderLevel (level : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHeaderLevel:")
      [make_int level]) : unit)
end
