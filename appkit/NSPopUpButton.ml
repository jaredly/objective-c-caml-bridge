(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPopUpButton.methods
end

class t = fun (r :[`NSPopUpButton] id) -> object
  inherit methods
  inherit NSButton.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPopUpButton *)
let c = Classes.find "NSPopUpButton"
let _new()= (Objc.objcnew c : [`NSPopUpButton] id)
let alloc() = (Objc.objcalloc c : [`NSPopUpButton] id)
