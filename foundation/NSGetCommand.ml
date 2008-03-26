(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSGetCommand.methods
end

class t = fun (r :[`NSGetCommand] id) -> object
  inherit methods
  inherit NSScriptCommand.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSGetCommand *)
let c = Classes.find "NSGetCommand"
let _new()= (Objc.objcnew c : [`NSGetCommand] id)
let alloc() = (Objc.objcalloc c : [`NSGetCommand] id)
