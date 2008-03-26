(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSearchFieldCell.methods
end

class t = fun (r :[`NSSearchFieldCell] id) -> object
  inherit methods
  inherit NSTextFieldCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSearchFieldCell *)
let c = Classes.find "NSSearchFieldCell"
let _new()= (Objc.objcnew c : [`NSSearchFieldCell] id)
let alloc() = (Objc.objcalloc c : [`NSSearchFieldCell] id)
