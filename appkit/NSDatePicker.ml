(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDatePicker.methods
end

class t = fun (r :[`NSDatePicker] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDatePicker *)
let c = Classes.find "NSDatePicker"
let _new()= (Objc.objcnew c : [`NSDatePicker] id)
let alloc() = (Objc.objcalloc c : [`NSDatePicker] id)
