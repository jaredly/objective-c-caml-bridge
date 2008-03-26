(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSComboBoxCell.methods
end

class t = fun (r :[`NSComboBoxCell] id) -> object
  inherit methods
  inherit NSTextFieldCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSComboBoxCell *)
let c = Classes.find "NSComboBoxCell"
let _new()= (Objc.objcnew c : [`NSComboBoxCell] id)
let alloc() = (Objc.objcalloc c : [`NSComboBoxCell] id)
