(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSButton *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method alternateTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "alternateTitle")[])
       : [`NSString] Objc.id))
  method setAlternateTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternateTitle:")
      [make_pointer_from_object aString]) : unit)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method setImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object image]) : unit)
  method alternateImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "alternateImage")[])
       : [`NSImage] Objc.id))
  method setAlternateImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternateImage:")
      [make_pointer_from_object image]) : unit)
  method imagePosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "imagePosition")[])
       : int)
  method setImagePosition (aPosition : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImagePosition:")
      [make_int aPosition]) : unit)
  method setButtonType (aType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setButtonType:")
      [make_int aType]) : unit)
  method state =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "state")[])
       : int)
  method setState (value : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setState:")
      [make_int value]) : unit)
  method isBordered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBordered")[])
       : bool)
  method setBordered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBordered:")
      [make_bool flag]) : unit)
  method isTransparent =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isTransparent")[])
       : bool)
  method setTransparent (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTransparent:")
      [make_bool flag]) : unit)
  method setPeriodicDelay_interval  (delay : float) (interval : float) =
    let sel, args = (
      Objc.arg delay "setPeriodicDelay" make_float
      ++ Objc.arg interval "interval" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method getPeriodicDelay_interval  (delay : [`float] Objc.t) (interval : [`float] Objc.t) =
    let sel, args = (
      Objc.arg delay "getPeriodicDelay" make_pointer_from_object
      ++ Objc.arg interval "interval" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method keyEquivalent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyEquivalent")[])
       : [`NSString] Objc.id))
  method setKeyEquivalent (charCode : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyEquivalent:")
      [make_pointer_from_object charCode]) : unit)
  method keyEquivalentModifierMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "keyEquivalentModifierMask")[])
       : int)
  method setKeyEquivalentModifierMask (mask : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyEquivalentModifierMask:")
      [make_int mask]) : unit)
  method highlight (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "highlight:")
      [make_bool flag]) : unit)
  method performKeyEquivalent (key : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "performKeyEquivalent:")
      [make_pointer_from_object key]) : bool)
end
