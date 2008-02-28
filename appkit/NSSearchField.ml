(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSearchField] id) -> object
  inherit Im_NSSearchField.methods
  method repr = r
end

(* Class object for NSSearchField *)
let c = Classes.find "NSSearchField"
let _new()= (Objc.objcnew c : [`NSSearchField] id)
let alloc() = (Objc.objcalloc c : [`NSSearchField] id)
