(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSocketPort] id) -> object
  inherit Im_NSSocketPort.methods
  method repr = r
end

(* Class object for NSSocketPort *)
let c = Classes.find "NSSocketPort"
let _new()= (Objc.objcnew c : [`NSSocketPort] id)
let alloc() = (Objc.objcalloc c : [`NSSocketPort] id)
