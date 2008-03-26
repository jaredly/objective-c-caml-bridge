(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSController.methods
end

class t = fun (r :[`NSController] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSController *)
let c = Classes.find "NSController"
let _new()= (Objc.objcnew c : [`NSController] id)
let alloc() = (Objc.objcalloc c : [`NSController] id)
