(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMiddleSpecifier] id) -> object
  inherit Im_NSMiddleSpecifier.methods
  method repr = r
end

(* Class object for NSMiddleSpecifier *)
let c = Classes.find "NSMiddleSpecifier"
let _new()= (Objc.objcnew c : [`NSMiddleSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSMiddleSpecifier] id)
