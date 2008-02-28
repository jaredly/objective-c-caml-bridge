(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSIndexSpecifier] id) -> object
  inherit Im_NSIndexSpecifier.methods
  method repr = r
end

(* Class object for NSIndexSpecifier *)
let c = Classes.find "NSIndexSpecifier"
let _new()= (Objc.objcnew c : [`NSIndexSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSIndexSpecifier] id)
