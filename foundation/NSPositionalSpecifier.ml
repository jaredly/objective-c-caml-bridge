(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPositionalSpecifier] id) -> object
  inherit Im_NSPositionalSpecifier.methods
  method repr = r
end

(* Class object for NSPositionalSpecifier *)
let c = Classes.find "NSPositionalSpecifier"
let _new()= (Objc.objcnew c : [`NSPositionalSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSPositionalSpecifier] id)
