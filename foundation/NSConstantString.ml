(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSConstantString] id) -> object
  inherit Im_NSConstantString.methods
  method repr = r
end

(* Class object for NSConstantString *)
let c = Classes.find "NSConstantString"
let _new()= (Objc.objcnew c : [`NSConstantString] id)
let alloc() = (Objc.objcalloc c : [`NSConstantString] id)
