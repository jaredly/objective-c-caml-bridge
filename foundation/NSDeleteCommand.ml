(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDeleteCommand] id) -> object
  inherit Im_NSDeleteCommand.methods
  method repr = r
end

(* Class object for NSDeleteCommand *)
let c = Classes.find "NSDeleteCommand"
let _new()= (Objc.objcnew c : [`NSDeleteCommand] id)
let alloc() = (Objc.objcalloc c : [`NSDeleteCommand] id)
