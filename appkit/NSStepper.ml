(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSStepper.methods
end

class t = fun (r :[`NSStepper] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSStepper *)
let c = Classes.find "NSStepper"
let _new()= (Objc.objcnew c : [`NSStepper] id)
let alloc() = (Objc.objcalloc c : [`NSStepper] id)
