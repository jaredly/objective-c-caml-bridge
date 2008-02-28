(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSUniqueIDSpecifier] id) -> object
  inherit Im_NSUniqueIDSpecifier.methods
  method repr = r
end

(* Class object for NSUniqueIDSpecifier *)
let c = Classes.find "NSUniqueIDSpecifier"
let _new()= (Objc.objcnew c : [`NSUniqueIDSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSUniqueIDSpecifier] id)
