(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMethodSignature] id) -> object
  inherit Im_NSMethodSignature.methods
  method repr = r
end

(* Class object for NSMethodSignature *)
let c = Classes.find "NSMethodSignature"
let _new()= (Objc.objcnew c : [`NSMethodSignature] id)
let alloc() = (Objc.objcalloc c : [`NSMethodSignature] id)
