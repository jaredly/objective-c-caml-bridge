(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSecureTextFieldCell.methods
end

class t = fun (r :[`NSSecureTextFieldCell] id) -> object
  inherit methods
  inherit NSTextFieldCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSecureTextFieldCell *)
let c = Classes.find "NSSecureTextFieldCell"
let _new()= (Objc.objcnew c : [`NSSecureTextFieldCell] id)
let alloc() = (Objc.objcalloc c : [`NSSecureTextFieldCell] id)
