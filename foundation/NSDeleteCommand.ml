(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDeleteCommand.methods
end

class t = fun (r :[`NSDeleteCommand] id) -> object
  inherit methods
  inherit NSScriptCommand.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDeleteCommand *)
let c = Classes.find "NSDeleteCommand"
let _new()= (Objc.objcnew c : [`NSDeleteCommand] id)
let alloc() = (Objc.objcalloc c : [`NSDeleteCommand] id)
