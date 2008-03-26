(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSColorPicker.methods
end

class t = fun (r :[`NSColorPicker] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSColorPicker *)
let c = Classes.find "NSColorPicker"
let _new()= (Objc.objcnew c : [`NSColorPicker] id)
let alloc() = (Objc.objcalloc c : [`NSColorPicker] id)
