(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSResponder] id) -> object
  inherit Cati_NSErrorPresentation.methods_NSResponder
  inherit Cati_NSUndoSupport.methods_NSResponder
  inherit Cati_NSStandardKeyBindingMethods.methods_NSResponder
  inherit Cati_NSKeyboardUI.methods_NSResponder
  inherit Im_NSResponder.methods
  method repr = r
end

(* Class object for NSResponder *)
let c = Classes.find "NSResponder"
let _new()= (Objc.objcnew c : [`NSResponder] id)
let alloc() = (Objc.objcalloc c : [`NSResponder] id)
(* class methods for category NSErrorPresentation of NSResponder *)
(* class methods for category NSUndoSupport of NSResponder *)
(* class methods for category NSStandardKeyBindingMethods of NSResponder *)
(* class methods for category NSKeyboardUI of NSResponder *)
