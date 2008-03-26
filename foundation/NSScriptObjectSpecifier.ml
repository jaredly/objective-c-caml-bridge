(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScriptObjectSpecifier.methods
end

class t = fun (r :[`NSScriptObjectSpecifier] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScriptObjectSpecifier *)
let c = Classes.find "NSScriptObjectSpecifier"
let _new()= (Objc.objcnew c : [`NSScriptObjectSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSScriptObjectSpecifier] id)
