(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCreateCommand] id) -> object
  inherit Im_NSCreateCommand.methods
  method repr = r
end

(* Class object for NSCreateCommand *)
let c = Classes.find "NSCreateCommand"
let _new()= (Objc.objcnew c : [`NSCreateCommand] id)
let alloc() = (Objc.objcalloc c : [`NSCreateCommand] id)
