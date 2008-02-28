(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTextField] id) -> object
  inherit Cati_NSTextFieldAttributedStringMethods.methods_NSTextField
  inherit Cati_NSKeyboardUI.methods_NSTextField
  inherit Im_NSTextField.methods
  method repr = r
end

(* Class object for NSTextField *)
let c = Classes.find "NSTextField"
let _new()= (Objc.objcnew c : [`NSTextField] id)
let alloc() = (Objc.objcalloc c : [`NSTextField] id)
(* class methods for category NSTextFieldAttributedStringMethods of NSTextField *)
(* class methods for category NSKeyboardUI of NSTextField *)
