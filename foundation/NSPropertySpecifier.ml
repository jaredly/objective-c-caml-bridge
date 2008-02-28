(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPropertySpecifier] id) -> object
  inherit Im_NSPropertySpecifier.methods
  method repr = r
end

(* Class object for NSPropertySpecifier *)
let c = Classes.find "NSPropertySpecifier"
let _new()= (Objc.objcnew c : [`NSPropertySpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSPropertySpecifier] id)
