(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSAnimation] id) -> object
  inherit Im_NSAnimation.methods
  method repr = r
end

(* Class object for NSAnimation *)
let c = Classes.find "NSAnimation"
let _new()= (Objc.objcnew c : [`NSAnimation] id)
let alloc() = (Objc.objcalloc c : [`NSAnimation] id)
