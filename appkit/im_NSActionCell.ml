(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSActionCell *)
class virtual methods = object (self)
  method virtual repr : [`NSActionCell] Objc.id
  method controlView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "controlView")[])
       : [`NSView] Objc.id))
  method setControlView (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setControlView:")
      [make_pointer_from_object view]) : unit)
  method setFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFont:")
      [make_pointer_from_object fontObj]) : unit)
(*  UNSUPPORTED
  method setAlignment (mode : (*NSTextAlignment*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlignment:")
      [(*NSTextAlignment*) unsupported mode]) : unit)

*)
  method setBordered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBordered:")
      [make_bool flag]) : unit)
  method setBezeled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezeled:")
      [make_bool flag]) : unit)
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
  method setImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object image]) : unit)
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
  method setObjectValue (obj : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setObjectValue:")
      [make_pointer_from_object obj]) : unit)
end
