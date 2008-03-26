(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSFormCellAttributedStringMethods.methods_NSFormCell
  inherit AppKit_cati_NSKeyboardUI.methods_NSFormCell
  inherit Im_NSFormCell.methods
end

class t = fun (r :[`NSFormCell] id) -> object
  inherit methods
  inherit NSActionCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSFormCell *)
let c = Classes.find "NSFormCell"
let _new()= (Objc.objcnew c : [`NSFormCell] id)
let alloc() = (Objc.objcalloc c : [`NSFormCell] id)
(* class methods for category NSFormCellAttributedStringMethods of NSFormCell *)
(* class methods for category NSKeyboardUI of NSFormCell *)
