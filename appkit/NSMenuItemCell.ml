(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMenuItemCell.methods
end

class t = fun (r :[`NSMenuItemCell] id) -> object
  inherit methods
  inherit NSButtonCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMenuItemCell *)
let c = Classes.find "NSMenuItemCell"
let _new()= (Objc.objcnew c : [`NSMenuItemCell] id)
let alloc() = (Objc.objcalloc c : [`NSMenuItemCell] id)
