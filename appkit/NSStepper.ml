(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSStepper] id) -> object
  inherit Im_NSStepper.methods
  method repr = r
end

(* Class object for NSStepper *)
let c = Classes.find "NSStepper"
let _new()= (Objc.objcnew c : [`NSStepper] id)
let alloc() = (Objc.objcalloc c : [`NSStepper] id)
