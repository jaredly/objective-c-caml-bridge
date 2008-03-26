(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSConstantString.methods
end

class t = fun (r :[`NSConstantString] id) -> object
  inherit methods
  inherit NSSimpleCString.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSConstantString *)
let c = Classes.find "NSConstantString"
let _new()= (Objc.objcnew c : [`NSConstantString] id)
let alloc() = (Objc.objcalloc c : [`NSConstantString] id)
