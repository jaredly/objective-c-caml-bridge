(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextField *)
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
  method setTextColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextColor:")
      [make_pointer_from_object color]) : unit)
  method textColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textColor")[])
       : [`NSColor] Objc.id))
  method isBordered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBordered")[])
       : bool)
  method setBordered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBordered:")
      [make_bool flag]) : unit)
  method isBezeled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBezeled")[])
       : bool)
  method setBezeled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezeled:")
      [make_bool flag]) : unit)
  method isEditable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEditable")[])
       : bool)
  method setEditable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEditable:")
      [make_bool flag]) : unit)
  method isSelectable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSelectable")[])
       : bool)
  method setSelectable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSelectable:")
      [make_bool flag]) : unit)
  method selectText (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectText:")
      [make_pointer_from_object sender]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method textShouldBeginEditing (textObject : [`NSText] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "textShouldBeginEditing:")
      [make_pointer_from_object textObject]) : bool)
  method textShouldEndEditing (textObject : [`NSText] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "textShouldEndEditing:")
      [make_pointer_from_object textObject]) : bool)
  method textDidBeginEditing (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "textDidBeginEditing:")
      [make_pointer_from_object notification]) : unit)
  method textDidEndEditing (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "textDidEndEditing:")
      [make_pointer_from_object notification]) : unit)
  method textDidChange (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "textDidChange:")
      [make_pointer_from_object notification]) : unit)
  method acceptsFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsFirstResponder")[])
       : bool)
  method setBezelStyle (style : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezelStyle:")
      [make_int style]) : unit)
  method bezelStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "bezelStyle")[])
       : int)
end
