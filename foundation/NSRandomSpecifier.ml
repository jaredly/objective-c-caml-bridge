(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSRandomSpecifier] id) -> object
  inherit Im_NSRandomSpecifier.methods
  method repr = r
end

(* Class object for NSRandomSpecifier *)
let c = Classes.find "NSRandomSpecifier"
let _new()= (Objc.objcnew c : [`NSRandomSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSRandomSpecifier] id)
