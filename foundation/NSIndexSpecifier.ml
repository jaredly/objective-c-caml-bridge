(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSIndexSpecifier.methods
end

class t = fun (r :[`NSIndexSpecifier] id) -> object
  inherit methods
  inherit NSScriptObjectSpecifier.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSIndexSpecifier *)
let c = Classes.find "NSIndexSpecifier"
let _new()= (Objc.objcnew c : [`NSIndexSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSIndexSpecifier] id)
