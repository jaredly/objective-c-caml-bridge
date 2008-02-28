(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSController] id) -> object
  inherit Im_NSController.methods
  method repr = r
end

(* Class object for NSController *)
let c = Classes.find "NSController"
let _new()= (Objc.objcnew c : [`NSController] id)
let alloc() = (Objc.objcalloc c : [`NSController] id)
