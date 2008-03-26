(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSKeyboardUI.methods_NSMatrix
  inherit Im_NSMatrix.methods
end

class t = fun (r :[`NSMatrix] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMatrix *)
let c = Classes.find "NSMatrix"
let _new()= (Objc.objcnew c : [`NSMatrix] id)
let alloc() = (Objc.objcalloc c : [`NSMatrix] id)
(* class methods for category NSKeyboardUI of NSMatrix *)
