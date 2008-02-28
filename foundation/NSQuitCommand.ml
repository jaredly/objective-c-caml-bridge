(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSQuitCommand] id) -> object
  inherit Im_NSQuitCommand.methods
  method repr = r
end

(* Class object for NSQuitCommand *)
let c = Classes.find "NSQuitCommand"
let _new()= (Objc.objcnew c : [`NSQuitCommand] id)
let alloc() = (Objc.objcalloc c : [`NSQuitCommand] id)
