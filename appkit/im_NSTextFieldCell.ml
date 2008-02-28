(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextFieldCell *)
class virtual methods = object (self)
  method virtual repr : [`NSTextFieldCell] Objc.id
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
  method setUpFieldEditorAttributes (textObj : [`NSText] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "setUpFieldEditorAttributes:")
      [make_pointer_from_object textObj]) : [`NSText] Objc.id))
  method setBezelStyle (style : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezelStyle:")
      [make_int style]) : unit)
  method bezelStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "bezelStyle")[])
       : int)
  method setPlaceholderString (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPlaceholderString:")
      [make_pointer_from_object string]) : unit)
  method placeholderString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "placeholderString")[])
       : [`NSString] Objc.id))
  method setPlaceholderAttributedString (string : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPlaceholderAttributedString:")
      [make_pointer_from_object string]) : unit)
  method placeholderAttributedString =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "placeholderAttributedString")[])
       : [`NSAttributedString] Objc.id))
end
