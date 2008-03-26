(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMiddleSpecifier.methods
end

class t = fun (r :[`NSMiddleSpecifier] id) -> object
  inherit methods
  inherit NSScriptObjectSpecifier.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMiddleSpecifier *)
let c = Classes.find "NSMiddleSpecifier"
let _new()= (Objc.objcnew c : [`NSMiddleSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSMiddleSpecifier] id)
