(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSRandomSpecifier.methods
end

class t = fun (r :[`NSRandomSpecifier] id) -> object
  inherit methods
  inherit NSScriptObjectSpecifier.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSRandomSpecifier *)
let c = Classes.find "NSRandomSpecifier"
let _new()= (Objc.objcnew c : [`NSRandomSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSRandomSpecifier] id)
