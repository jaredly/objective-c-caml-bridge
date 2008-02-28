(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNameSpecifier] id) -> object
  inherit Im_NSNameSpecifier.methods
  method repr = r
end

(* Class object for NSNameSpecifier *)
let c = Classes.find "NSNameSpecifier"
let _new()= (Objc.objcnew c : [`NSNameSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSNameSpecifier] id)
