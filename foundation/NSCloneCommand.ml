(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCloneCommand.methods
end

class t = fun (r :[`NSCloneCommand] id) -> object
  inherit methods
  inherit NSScriptCommand.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCloneCommand *)
let c = Classes.find "NSCloneCommand"
let _new()= (Objc.objcnew c : [`NSCloneCommand] id)
let alloc() = (Objc.objcalloc c : [`NSCloneCommand] id)
