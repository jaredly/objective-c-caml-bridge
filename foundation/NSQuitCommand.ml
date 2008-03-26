(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSQuitCommand.methods
end

class t = fun (r :[`NSQuitCommand] id) -> object
  inherit methods
  inherit NSScriptCommand.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSQuitCommand *)
let c = Classes.find "NSQuitCommand"
let _new()= (Objc.objcnew c : [`NSQuitCommand] id)
let alloc() = (Objc.objcalloc c : [`NSQuitCommand] id)
