(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSetCommand.methods
end

class t = fun (r :[`NSSetCommand] id) -> object
  inherit methods
  inherit NSScriptCommand.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSetCommand *)
let c = Classes.find "NSSetCommand"
let _new()= (Objc.objcnew c : [`NSSetCommand] id)
let alloc() = (Objc.objcalloc c : [`NSSetCommand] id)
