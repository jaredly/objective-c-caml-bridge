(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSGetCommand] id) -> object
  inherit Im_NSGetCommand.methods
  method repr = r
end

(* Class object for NSGetCommand *)
let c = Classes.find "NSGetCommand"
let _new()= (Objc.objcnew c : [`NSGetCommand] id)
let alloc() = (Objc.objcalloc c : [`NSGetCommand] id)
