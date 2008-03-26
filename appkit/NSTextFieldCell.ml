(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSTextFieldCell.methods
end

class t = fun (r :[`NSTextFieldCell] id) -> object
  inherit methods
  inherit NSActionCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTextFieldCell *)
let c = Classes.find "NSTextFieldCell"
let _new()= (Objc.objcnew c : [`NSTextFieldCell] id)
let alloc() = (Objc.objcalloc c : [`NSTextFieldCell] id)
