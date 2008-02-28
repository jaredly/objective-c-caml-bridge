(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSButtonCell] id) -> object
  inherit Cati_NSButtonCellSoundExtensions.methods_NSButtonCell
  inherit Cati_NSButtonCellBezelStyles.methods_NSButtonCell
  inherit Cati_NSButtonCellAttributedStringMethods.methods_NSButtonCell
  inherit Cati_NSButtonCellExtensions.methods_NSButtonCell
  inherit Cati_NSKeyboardUI.methods_NSButtonCell
  inherit Im_NSButtonCell.methods
  method repr = r
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
