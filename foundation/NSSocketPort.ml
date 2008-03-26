(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSocketPort.methods
end

class t = fun (r :[`NSSocketPort] id) -> object
  inherit methods
  inherit NSPort.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSocketPort *)
let c = Classes.find "NSSocketPort"
let _new()= (Objc.objcnew c : [`NSSocketPort] id)
let alloc() = (Objc.objcalloc c : [`NSSocketPort] id)
