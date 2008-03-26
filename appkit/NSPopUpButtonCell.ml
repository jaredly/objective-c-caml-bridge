(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPopUpButtonCell.methods
end

class t = fun (r :[`NSPopUpButtonCell] id) -> object
  inherit methods
  inherit NSMenuItemCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPopUpButtonCell *)
let c = Classes.find "NSPopUpButtonCell"
let _new()= (Objc.objcnew c : [`NSPopUpButtonCell] id)
let alloc() = (Objc.objcalloc c : [`NSPopUpButtonCell] id)
