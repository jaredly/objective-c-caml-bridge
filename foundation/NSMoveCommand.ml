(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMoveCommand.methods
end

class t = fun (r :[`NSMoveCommand] id) -> object
  inherit methods
  inherit NSScriptCommand.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMoveCommand *)
let c = Classes.find "NSMoveCommand"
let _new()= (Objc.objcnew c : [`NSMoveCommand] id)
let alloc() = (Objc.objcalloc c : [`NSMoveCommand] id)
