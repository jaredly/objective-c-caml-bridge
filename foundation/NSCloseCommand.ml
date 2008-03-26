(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCloseCommand.methods
end

class t = fun (r :[`NSCloseCommand] id) -> object
  inherit methods
  inherit NSScriptCommand.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCloseCommand *)
let c = Classes.find "NSCloseCommand"
let _new()= (Objc.objcnew c : [`NSCloseCommand] id)
let alloc() = (Objc.objcalloc c : [`NSCloseCommand] id)
