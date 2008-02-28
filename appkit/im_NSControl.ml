(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSControl *)
class virtual methods = object (self)
  method virtual repr : [`NSControl] Objc.id
(*  UNSUPPORTED
  method initWithFrame (frameRect : (*NSRect*) unsupported) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFrame:")
      [(*NSRect*) unsupported frameRect]) : [`NSObject] Objc.id)

*)
  method sizeToFit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeToFit")[])
       : unit)
  method calcSize =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "calcSize")[])
       : unit)
  method cell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cell")[])
       : [`NSObject] Objc.id)
  method setCell (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCell:")
      [make_pointer_from_object aCell]) : unit)
  method selectedCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedCell")[])
       : [`NSObject] Objc.id)
  method target =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "target")[])
       : [`NSObject] Objc.id)
  method setTarget (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTarget:")
      [make_pointer_from_object anObject]) : unit)
  method action =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "action")[])
       : selector)
  method setAction (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAction:")
      [make_selector aSelector]) : unit)
  method tag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tag")[])
       : int)
  method setTag (anInt : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTag:")
      [make_int anInt]) : unit)
  method selectedTag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectedTag")[])
       : int)
  method setIgnoresMultiClick (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIgnoresMultiClick:")
      [make_bool flag]) : unit)
  method ignoresMultiClick =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "ignoresMultiClick")[])
       : bool)
  method sendActionOn (mask : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "sendActionOn:")
      [make_int mask]) : int)
  method isContinuous =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isContinuous")[])
       : bool)
  method setContinuous (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContinuous:")
      [make_bool flag]) : unit)
  method isEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEnabled")[])
       : bool)
  method setEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEnabled:")
      [make_bool flag]) : unit)
  method setFloatingPointFormat  ~left:(leftDigits : int ) ~right:(rightDigits : int ) (autoRange : bool) =
    let sel, args = (
      Objc.arg autoRange "setFloatingPointFormat" make_bool
      ++ Objc.arg leftDigits "left" make_int
      ++ Objc.arg rightDigits "right" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method alignment =
    ((*NSTextAlignment*) unsupported (Objc.invoke (*NSTextAlignment*) Objc.tag_unsupported self#repr (Selector.find "alignment")[])
       : (*NSTextAlignment*) unsupported)

*)
(*  UNSUPPORTED
  method setAlignment (mode : (*NSTextAlignment*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlignment:")
      [(*NSTextAlignment*) unsupported mode]) : unit)

*)
  method font =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "font")[])
       : [`NSFont] Objc.id))
  method setFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFont:")
      [make_pointer_from_object fontObj]) : unit)
  method setFormatter (newFormatter : [`NSFormatter] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFormatter:")
      [make_pointer_from_object newFormatter]) : unit)
  method formatter =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "formatter")[])
       : [`NSObject] Objc.id)
  method setObjectValue (obj : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setObjectValue:")
      [make_pointer_from_object obj]) : unit)
  method setStringValue (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStringValue:")
      [make_pointer_from_object aString]) : unit)
  method setIntValue (anInt : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIntValue:")
      [make_int anInt]) : unit)
  method setFloatValue (aFloat : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFloatValue:")
      [make_float aFloat]) : unit)
  method setDoubleValue (aDouble : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDoubleValue:")
      [make_float aDouble]) : unit)
  method objectValue =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectValue")[])
       : [`NSObject] Objc.id)
  method stringValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringValue")[])
       : [`NSString] Objc.id))
  method intValue =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "intValue")[])
       : int)
  method floatValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "floatValue")[])
       : float)
  method doubleValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "doubleValue")[])
       : float)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method setNeedsDisplay =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsDisplay")[])
       : unit)

*)
  method updateCell (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateCell:")
      [make_pointer_from_object aCell]) : unit)
  method updateCellInside (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateCellInside:")
      [make_pointer_from_object aCell]) : unit)
  method drawCellInside (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawCellInside:")
      [make_pointer_from_object aCell]) : unit)
  method drawCell (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawCell:")
      [make_pointer_from_object aCell]) : unit)
  method selectCell (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectCell:")
      [make_pointer_from_object aCell]) : unit)
  method sendAction  ~l_to:(theTarget : [`NSObject] Objc.t ) (theAction : selector) =
    let sel, args = (
      Objc.arg theAction "sendAction" make_selector
      ++ Objc.arg theTarget "l_to" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method takeIntValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeIntValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method takeFloatValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeFloatValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method takeDoubleValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeDoubleValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method takeStringValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeStringValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method takeObjectValueFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeObjectValueFrom:")
      [make_pointer_from_object sender]) : unit)
  method currentEditor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentEditor")[])
       : [`NSText] Objc.id))
  method abortEditing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "abortEditing")[])
       : bool)
  method validateEditing =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "validateEditing")[])
       : unit)
  method mouseDown (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseDown:")
      [make_pointer_from_object theEvent]) : unit)
(*  UNSUPPORTED
  method baseWritingDirection =
    ((*NSWritingDirection*) unsupported (Objc.invoke (*NSWritingDirection*) Objc.tag_unsupported self#repr (Selector.find "baseWritingDirection")[])
       : (*NSWritingDirection*) unsupported)

*)
(*  UNSUPPORTED
  method setBaseWritingDirection (writingDirection : (*NSWritingDirection*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBaseWritingDirection:")
      [(*NSWritingDirection*) unsupported writingDirection]) : unit)

*)
end
