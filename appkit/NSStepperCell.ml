(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSStepperCell.methods
end

class t = fun (r :[`NSStepperCell] id) -> object
  inherit methods
  inherit NSActionCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSStepperCell *)
let c = Classes.find "NSStepperCell"
let _new()= (Objc.objcnew c : [`NSStepperCell] id)
let alloc() = (Objc.objcalloc c : [`NSStepperCell] id)
