(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTextFieldCell] id) -> object
  inherit Im_NSTextFieldCell.methods
  method repr = r
end

(* Class object for NSTextFieldCell *)
let c = Classes.find "NSTextFieldCell"
let _new()= (Objc.objcnew c : [`NSTextFieldCell] id)
let alloc() = (Objc.objcalloc c : [`NSTextFieldCell] id)
