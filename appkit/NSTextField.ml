open Objc
open NSControl
open NSTextFieldCell


external init : unit -> unit = "caml_init_NSTextField"
let _ = init()
(* Class object for NSTextField *)
let class_NSTextField = object
   val o = Classes.find "NSTextField"
   method _new = (Objc.objcnew o : [`NSTextField] nativeNSObject)
(* methods for category NSTextFieldAttributedStringMethods *)
(* methods for category NSKeyboardUI *)
end
(* Encapsulation for native instance of NSTextField *)
class native_NSTextField = fun (o : [`NSTextField] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSTextFieldAttributedStringMethods *)
   method allowsEditingTextAttributes =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsEditingTextAttributes:")[]) : bool)
   method setAllowsEditingTextAttributes (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsEditingTextAttributes:")[make_bool flag]) : unit)
   method importsGraphics =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "importsGraphics:")[]) : bool)
   method setImportsGraphics (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImportsGraphics:")[make_bool flag]) : unit)
(* methods for category NSKeyboardUI *)
   method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitleWithMnemonic:")[make_pointer_from_object stringWithAmpersand]) : unit)
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
   method isBordered =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isBordered:")[]) : bool)
   method setBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBordered:")[make_bool flag]) : unit)
   method isBezeled =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isBezeled:")[]) : bool)
   method setBezeled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBezeled:")[make_bool flag]) : unit)
   method isEditable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEditable:")[]) : bool)
   method setEditable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEditable:")[make_bool flag]) : unit)
   method isSelectable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSelectable:")[]) : bool)
   method setSelectable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSelectable:")[make_bool flag]) : unit)
   method selectText (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectText:")[make_pointer_from_object sender]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method textShouldBeginEditing (textObject : [`NSText] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "textShouldBeginEditing:")[make_pointer_from_object textObject]) : bool)
   method textShouldEndEditing (textObject : [`NSText] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "textShouldEndEditing:")[make_pointer_from_object textObject]) : bool)
   method textDidBeginEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidBeginEditing:")[make_pointer_from_object notification]) : unit)
   method textDidEndEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidEndEditing:")[make_pointer_from_object notification]) : unit)
   method textDidChange (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidChange:")[make_pointer_from_object notification]) : unit)
   method acceptsFirstResponder =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "acceptsFirstResponder:")[]) : bool)
(*  UNSUPPORTED
   method setBezelStyle (style : (*NSTextFieldBezelStyle*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBezelStyle:")[(*NSTextFieldBezelStyle*) unsupported style]) : unit)

*)
(*  UNSUPPORTED
   method bezelStyle =
     ((*NSTextFieldBezelStyle*) unsupported (Objc.invoke (*NSTextFieldBezelStyle*) Objc.tag_unsupported o (Selector.find "bezelStyle:")[]) : (*NSTextFieldBezelStyle*) unsupported)

*)
end
