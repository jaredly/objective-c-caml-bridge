(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSColorPicker] id) -> object
  inherit Im_NSColorPicker.methods
  method repr = r
end

(* Class object for NSColorPicker *)
let c = Classes.find "NSColorPicker"
let _new()= (Objc.objcnew c : [`NSColorPicker] id)
let alloc() = (Objc.objcalloc c : [`NSColorPicker] id)
