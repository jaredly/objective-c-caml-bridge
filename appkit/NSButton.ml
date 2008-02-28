(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSButton] id) -> object
  inherit Cati_NSButtonSoundExtensions.methods_NSButton
  inherit Cati_NSButtonBorder.methods_NSButton
  inherit Cati_NSButtonMixedState.methods_NSButton
  inherit Cati_NSButtonBezelStyles.methods_NSButton
  inherit Cati_NSButtonAttributedStringMethods.methods_NSButton
  inherit Cati_NSKeyboardUI.methods_NSButton
  inherit Im_NSButton.methods
  method repr = r
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
