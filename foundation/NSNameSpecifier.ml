(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSNameSpecifier.methods
end

class t = fun (r :[`NSNameSpecifier] id) -> object
  inherit methods
  inherit NSScriptObjectSpecifier.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNameSpecifier *)
let c = Classes.find "NSNameSpecifier"
let _new()= (Objc.objcnew c : [`NSNameSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSNameSpecifier] id)
