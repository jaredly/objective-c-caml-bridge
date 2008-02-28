(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSWhoseSpecifier] id) -> object
  inherit Im_NSWhoseSpecifier.methods
  method repr = r
end

(* Class object for NSWhoseSpecifier *)
let c = Classes.find "NSWhoseSpecifier"
let _new()= (Objc.objcnew c : [`NSWhoseSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSWhoseSpecifier] id)
