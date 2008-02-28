(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCountCommand] id) -> object
  inherit Im_NSCountCommand.methods
  method repr = r
end

(* Class object for NSCountCommand *)
let c = Classes.find "NSCountCommand"
let _new()= (Objc.objcnew c : [`NSCountCommand] id)
let alloc() = (Objc.objcalloc c : [`NSCountCommand] id)
