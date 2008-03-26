(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSTextFieldAttributedStringMethods.methods_NSTextField
  inherit AppKit_cati_NSKeyboardUI.methods_NSTextField
  inherit Im_NSTextField.methods
end

class t = fun (r :[`NSTextField] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextField *)
let c = Classes.find "NSTextField"
let _new()= (Objc.objcnew c : [`NSTextField] id)
let alloc() = (Objc.objcalloc c : [`NSTextField] id)
(* class methods for category NSTextFieldAttributedStringMethods of NSTextField *)
(* class methods for category NSKeyboardUI of NSTextField *)
