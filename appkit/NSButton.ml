open Objc
open NSControl
open NSButtonCell


external init : unit -> unit = "caml_init_NSButton"
let _ = init()
(* Class object for NSButton *)
let class_NSButton = object
   val o = Classes.find "NSButton"
   method _new = (Objc.objcnew o : [`NSButton] nativeNSObject)
(* methods for category NSButtonSoundExtensions *)
(* methods for category NSButtonBorder *)
(* methods for category NSButtonMixedState *)
(* methods for category NSButtonBezelStyles *)
(* methods for category NSButtonAttributedStringMethods *)
(* methods for category NSKeyboardUI *)
end
(* Encapsulation for native instance of NSButton *)
class native_NSButton = fun (o : [`NSButton] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSButtonSoundExtensions *)
   method setSound (aSound : [`NSSound] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSound:")[make_pointer_from_object aSound]) : unit)
   method sound =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sound:")[]) : [`NSSound] Objc.nativeNSObject)
(* methods for category NSButtonBorder *)
   method setShowsBorderOnlyWhileMouseInside (show : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setShowsBorderOnlyWhileMouseInside:")[make_bool show]) : unit)
   method showsBorderOnlyWhileMouseInside =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "showsBorderOnlyWhileMouseInside:")[]) : bool)
(* methods for category NSButtonMixedState *)
   method setAllowsMixedState (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsMixedState:")[make_bool flag]) : unit)
   method allowsMixedState =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsMixedState:")[]) : bool)
   method setNextState =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNextState:")[]) : unit)
(* methods for category NSButtonBezelStyles *)
(*  UNSUPPORTED
   method setBezelStyle (bezelStyle : (*NSBezelStyle*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBezelStyle:")[(*NSBezelStyle*) unsupported bezelStyle]) : unit)

*)
(*  UNSUPPORTED
   method bezelStyle =
     ((*NSBezelStyle*) unsupported (Objc.invoke (*NSBezelStyle*) Objc.tag_unsupported o (Selector.find "bezelStyle:")[]) : (*NSBezelStyle*) unsupported)

*)
(* methods for category NSButtonAttributedStringMethods *)
   method attributedTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributedTitle:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method setAttributedTitle (aString : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAttributedTitle:")[make_pointer_from_object aString]) : unit)
   method attributedAlternateTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributedAlternateTitle:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method setAttributedAlternateTitle (obj : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAttributedAlternateTitle:")[make_pointer_from_object obj]) : unit)
(* methods for category NSKeyboardUI *)
   method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitleWithMnemonic:")[make_pointer_from_object stringWithAmpersand]) : unit)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method alternateTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "alternateTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method setAlternateTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlternateTitle:")[make_pointer_from_object aString]) : unit)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method setImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImage:")[make_pointer_from_object image]) : unit)
   method alternateImage =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "alternateImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method setAlternateImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlternateImage:")[make_pointer_from_object image]) : unit)
(*  UNSUPPORTED
   method imagePosition =
     ((*NSCellImagePosition*) unsupported (Objc.invoke (*NSCellImagePosition*) Objc.tag_unsupported o (Selector.find "imagePosition:")[]) : (*NSCellImagePosition*) unsupported)

*)
(*  UNSUPPORTED
   method setImagePosition (aPosition : (*NSCellImagePosition*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImagePosition:")[(*NSCellImagePosition*) unsupported aPosition]) : unit)

*)
(*  UNSUPPORTED
   method setButtonType (aType : (*NSButtonType*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setButtonType:")[(*NSButtonType*) unsupported aType]) : unit)

*)
   method state =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "state:")[]) : int)
   method setState (value : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setState:")[make_int value]) : unit)
   method isBordered =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isBordered:")[]) : bool)
   method setBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBordered:")[make_bool flag]) : unit)
   method isTransparent =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isTransparent:")[]) : bool)
   method setTransparent (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTransparent:")[make_bool flag]) : unit)
   method setPeriodicDelay  ~interval:(interval : float ) (delay : float) =
     let sel, args = (
       Objc.arg delay "setPeriodicDelay" make_float
       ++ Objc.arg interval "interval" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method getPeriodicDelay  ~interval:(interval : [`float] Objc.t ) (delay : [`float] Objc.t) =
     let sel, args = (
       Objc.arg delay "getPeriodicDelay" make_pointer_from_object
       ++ Objc.arg interval "interval" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method keyEquivalent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keyEquivalent:")[]) : [`NSString] Objc.nativeNSObject)
   method setKeyEquivalent (charCode : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setKeyEquivalent:")[make_pointer_from_object charCode]) : unit)
   method keyEquivalentModifierMask =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "keyEquivalentModifierMask:")[]) : int)
   method setKeyEquivalentModifierMask (mask : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setKeyEquivalentModifierMask:")[make_int mask]) : unit)
   method highlight (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "highlight:")[make_bool flag]) : unit)
   method performKeyEquivalent (key : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "performKeyEquivalent:")[make_pointer_from_object key]) : bool)
end
