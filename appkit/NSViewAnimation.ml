(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSViewAnimation] id) -> object
  inherit Im_NSViewAnimation.methods
  method repr = r
end

(* Class object for NSViewAnimation *)
let c = Classes.find "NSViewAnimation"
let _new()= (Objc.objcnew c : [`NSViewAnimation] id)
let alloc() = (Objc.objcalloc c : [`NSViewAnimation] id)
