(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPopUpButton] id) -> object
  inherit Im_NSPopUpButton.methods
  method repr = r
end

(* Class object for NSPopUpButton *)
let c = Classes.find "NSPopUpButton"
let _new()= (Objc.objcnew c : [`NSPopUpButton] id)
let alloc() = (Objc.objcalloc c : [`NSPopUpButton] id)
