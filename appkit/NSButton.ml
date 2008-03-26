(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSButtonSoundExtensions.methods_NSButton
  inherit AppKit_cati_NSButtonBorder.methods_NSButton
  inherit AppKit_cati_NSButtonMixedState.methods_NSButton
  inherit AppKit_cati_NSButtonBezelStyles.methods_NSButton
  inherit AppKit_cati_NSButtonAttributedStringMethods.methods_NSButton
  inherit AppKit_cati_NSKeyboardUI.methods_NSButton
  inherit Im_NSButton.methods
end

class t = fun (r :[`NSButton] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSButton *)
let c = Classes.find "NSButton"
let _new()= (Objc.objcnew c : [`NSButton] id)
let alloc() = (Objc.objcalloc c : [`NSButton] id)
(* class methods for category NSButtonSoundExtensions of NSButton *)
(* class methods for category NSButtonBorder of NSButton *)
(* class methods for category NSButtonMixedState of NSButton *)
(* class methods for category NSButtonBezelStyles of NSButton *)
(* class methods for category NSButtonAttributedStringMethods of NSButton *)
(* class methods for category NSKeyboardUI of NSButton *)
