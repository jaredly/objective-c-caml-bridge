open Objc
open NSActionCell


external init : unit -> unit = "caml_init_NSTextFieldCell"
let _ = init()
(* Class object for NSTextFieldCell *)
let class_NSTextFieldCell = object
   val o = Classes.find "NSTextFieldCell"
   method _new = (Objc.objcnew o : [`NSTextFieldCell] nativeNSObject)
end
(* Encapsulation for native instance of NSTextFieldCell *)
class native_NSTextFieldCell = fun (o : [`NSTextFieldCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "drawsBackground:")[]) : bool)
   method setTextColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextColor:")[make_pointer_from_object color]) : unit)
   method textColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setUpFieldEditorAttributes (textObj : [`NSText] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setUpFieldEditorAttributes:")[make_pointer_from_object textObj]) : [`NSText] Objc.nativeNSObject)
   method setBezelStyle (style : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBezelStyle:")[make_int style]) : unit)
   method bezelStyle =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "bezelStyle:")[]) : int)
   method setPlaceholderString (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPlaceholderString:")[make_pointer_from_object string]) : unit)
   method placeholderString =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "placeholderString:")[]) : [`NSString] Objc.nativeNSObject)
   method setPlaceholderAttributedString (string : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPlaceholderAttributedString:")[make_pointer_from_object string]) : unit)
   method placeholderAttributedString =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "placeholderAttributedString:")[]) : [`NSAttributedString] Objc.nativeNSObject)
end
