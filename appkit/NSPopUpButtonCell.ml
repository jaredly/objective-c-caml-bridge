(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPopUpButtonCell] id) -> object
  inherit Im_NSPopUpButtonCell.methods
  method repr = r
end

(* Class object for NSPopUpButtonCell *)
let c = Classes.find "NSPopUpButtonCell"
let _new()= (Objc.objcnew c : [`NSPopUpButtonCell] id)
let alloc() = (Objc.objcalloc c : [`NSPopUpButtonCell] id)
