(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSComboBoxCell] id) -> object
  inherit Im_NSComboBoxCell.methods
  method repr = r
end

(* Class object for NSComboBoxCell *)
let c = Classes.find "NSComboBoxCell"
let _new()= (Objc.objcnew c : [`NSComboBoxCell] id)
let alloc() = (Objc.objcalloc c : [`NSComboBoxCell] id)
