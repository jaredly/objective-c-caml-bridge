(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSComboBox] id) -> object
  inherit Im_NSComboBox.methods
  method repr = r
end

(* Class object for NSComboBox *)
let c = Classes.find "NSComboBox"
let _new()= (Objc.objcnew c : [`NSComboBox] id)
let alloc() = (Objc.objcalloc c : [`NSComboBox] id)
