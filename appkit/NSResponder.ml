(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSErrorPresentation.methods_NSResponder
  inherit AppKit_cati_NSUndoSupport.methods_NSResponder
  inherit AppKit_cati_NSStandardKeyBindingMethods.methods_NSResponder
  inherit AppKit_cati_NSKeyboardUI.methods_NSResponder
  inherit Im_NSResponder.methods
  inherit AppKit_cati_NSInterfaceStyle.methods_NSResponder
end

class t = fun (r :[`NSResponder] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSResponder *)
let c = Classes.find "NSResponder"
let _new()= (Objc.objcnew c : [`NSResponder] id)
let alloc() = (Objc.objcalloc c : [`NSResponder] id)
(* class methods for category NSErrorPresentation of NSResponder *)
(* class methods for category NSUndoSupport of NSResponder *)
(* class methods for category NSStandardKeyBindingMethods of NSResponder *)
(* class methods for category NSKeyboardUI of NSResponder *)
(* class methods for category NSInterfaceStyle of NSResponder *)
