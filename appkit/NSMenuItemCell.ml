(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMenuItemCell] id) -> object
  inherit Im_NSMenuItemCell.methods
  method repr = r
end

(* Class object for NSMenuItemCell *)
let c = Classes.find "NSMenuItemCell"
let _new()= (Objc.objcnew c : [`NSMenuItemCell] id)
let alloc() = (Objc.objcalloc c : [`NSMenuItemCell] id)
