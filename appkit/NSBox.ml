(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSKeyboardUI.methods_NSBox
  inherit Im_NSBox.methods
end

class t = fun (r :[`NSBox] id) -> object
  inherit methods
  inherit NSView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSBox *)
let c = Classes.find "NSBox"
let _new()= (Objc.objcnew c : [`NSBox] id)
let alloc() = (Objc.objcalloc c : [`NSBox] id)
(* class methods for category NSKeyboardUI of NSBox *)
