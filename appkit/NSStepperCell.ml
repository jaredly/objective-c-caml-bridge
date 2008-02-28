(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSStepperCell] id) -> object
  inherit Im_NSStepperCell.methods
  method repr = r
end

(* Class object for NSStepperCell *)
let c = Classes.find "NSStepperCell"
let _new()= (Objc.objcnew c : [`NSStepperCell] id)
let alloc() = (Objc.objcalloc c : [`NSStepperCell] id)
