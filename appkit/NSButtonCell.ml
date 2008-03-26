(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSButtonCellSoundExtensions.methods_NSButtonCell
  inherit AppKit_cati_NSButtonCellBezelStyles.methods_NSButtonCell
  inherit AppKit_cati_NSButtonCellAttributedStringMethods.methods_NSButtonCell
  inherit AppKit_cati_NSButtonCellExtensions.methods_NSButtonCell
  inherit AppKit_cati_NSKeyboardUI.methods_NSButtonCell
  inherit Im_NSButtonCell.methods
end

class t = fun (r :[`NSButtonCell] id) -> object
  inherit methods
  inherit NSActionCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSButtonCell *)
let c = Classes.find "NSButtonCell"
let _new()= (Objc.objcnew c : [`NSButtonCell] id)
let alloc() = (Objc.objcalloc c : [`NSButtonCell] id)
(* class methods for category NSButtonCellSoundExtensions of NSButtonCell *)
(* class methods for category NSButtonCellBezelStyles of NSButtonCell *)
(* class methods for category NSButtonCellAttributedStringMethods of NSButtonCell *)
(* class methods for category NSButtonCellExtensions of NSButtonCell *)
(* class methods for category NSKeyboardUI of NSButtonCell *)
