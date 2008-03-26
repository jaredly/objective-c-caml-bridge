(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCountCommand.methods
end

class t = fun (r :[`NSCountCommand] id) -> object
  inherit methods
  inherit NSScriptCommand.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCountCommand *)
let c = Classes.find "NSCountCommand"
let _new()= (Objc.objcnew c : [`NSCountCommand] id)
let alloc() = (Objc.objcalloc c : [`NSCountCommand] id)
