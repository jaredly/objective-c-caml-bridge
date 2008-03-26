(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSearchField.methods
end

class t = fun (r :[`NSSearchField] id) -> object
  inherit methods
  inherit NSTextField.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSearchField *)
let c = Classes.find "NSSearchField"
let _new()= (Objc.objcnew c : [`NSSearchField] id)
let alloc() = (Objc.objcalloc c : [`NSSearchField] id)
