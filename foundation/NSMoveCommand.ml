(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMoveCommand] id) -> object
  inherit Im_NSMoveCommand.methods
  method repr = r
end

(* Class object for NSMoveCommand *)
let c = Classes.find "NSMoveCommand"
let _new()= (Objc.objcnew c : [`NSMoveCommand] id)
let alloc() = (Objc.objcalloc c : [`NSMoveCommand] id)
