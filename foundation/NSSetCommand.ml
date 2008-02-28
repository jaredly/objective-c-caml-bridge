(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSetCommand] id) -> object
  inherit Im_NSSetCommand.methods
  method repr = r
end

(* Class object for NSSetCommand *)
let c = Classes.find "NSSetCommand"
let _new()= (Objc.objcnew c : [`NSSetCommand] id)
let alloc() = (Objc.objcalloc c : [`NSSetCommand] id)
