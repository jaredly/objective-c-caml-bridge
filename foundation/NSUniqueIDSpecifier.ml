(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSUniqueIDSpecifier.methods
end

class t = fun (r :[`NSUniqueIDSpecifier] id) -> object
  inherit methods
  inherit NSScriptObjectSpecifier.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSUniqueIDSpecifier *)
let c = Classes.find "NSUniqueIDSpecifier"
let _new()= (Objc.objcnew c : [`NSUniqueIDSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSUniqueIDSpecifier] id)
