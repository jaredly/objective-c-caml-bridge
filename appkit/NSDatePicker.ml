(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDatePicker] id) -> object
  inherit Im_NSDatePicker.methods
  method repr = r
end

(* Class object for NSDatePicker *)
let c = Classes.find "NSDatePicker"
let _new()= (Objc.objcnew c : [`NSDatePicker] id)
let alloc() = (Objc.objcalloc c : [`NSDatePicker] id)
