(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSearchFieldCell] id) -> object
  inherit Im_NSSearchFieldCell.methods
  method repr = r
end

(* Class object for NSSearchFieldCell *)
let c = Classes.find "NSSearchFieldCell"
let _new()= (Objc.objcnew c : [`NSSearchFieldCell] id)
let alloc() = (Objc.objcalloc c : [`NSSearchFieldCell] id)
