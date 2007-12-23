open Objc
open NSCell


external init : unit -> unit = "caml_init_NSActionCell"
let _ = init()
(* Class object for NSActionCell *)
let class_NSActionCell = object
   val o = Classes.find "NSActionCell"
   method _new = (Objc.objcnew o : [`NSActionCell] nativeNSObject)
end
(* Encapsulation for native instance of NSActionCell *)
class native_NSActionCell = fun (o : [`NSActionCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method controlView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlView:")[]) : [`NSView] Objc.nativeNSObject)
   method setControlView (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setControlView:")[make_pointer_from_object view]) : unit)
   method setFont (fontObj : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFont:")[make_pointer_from_object fontObj]) : unit)
(*  UNSUPPORTED
   method setAlignment (mode : (*NSTextAlignment*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlignment:")[(*NSTextAlignment*) unsupported mode]) : unit)

*)
   method setBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBordered:")[make_bool flag]) : unit)
   method setBezeled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBezeled:")[make_bool flag]) : unit)
   method setEnabled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEnabled:")[make_bool flag]) : unit)
   method setFloatingPointFormat  ~left:(leftDigits : int ) ~right:(rightDigits : int ) (autoRange : bool) =
     let sel, args = (
       Objc.arg autoRange "setFloatingPointFormat" make_bool
       ++ Objc.arg leftDigits "left" make_int
       ++ Objc.arg rightDigits "right" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method setImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImage:")[make_pointer_from_object image]) : unit)
   method target =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "target:")[]) : [`NSObject] Objc.nativeNSObject)
   method setTarget (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTarget:")[make_pointer_from_object anObject]) : unit)
   method action =
     (get_selector (Objc.invoke Objc.tag_selector o (Selector.find "action:")[]) : selector)
   method setAction (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAction:")[make_selector aSelector]) : unit)
   method tag =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "tag:")[]) : int)
   method setTag (anInt : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTag:")[make_int anInt]) : unit)
   method stringValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringValue:")[]) : [`NSString] Objc.nativeNSObject)
   method intValue =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "intValue:")[]) : int)
   method floatValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "floatValue:")[]) : float)
   method doubleValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "doubleValue:")[]) : float)
   method setObjectValue (obj : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setObjectValue:")[make_pointer_from_object obj]) : unit)
end
