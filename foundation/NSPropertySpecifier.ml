(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPropertySpecifier.methods
end

class t = fun (r :[`NSPropertySpecifier] id) -> object
  inherit methods
  inherit NSScriptObjectSpecifier.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPropertySpecifier *)
let c = Classes.find "NSPropertySpecifier"
let _new()= (Objc.objcnew c : [`NSPropertySpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSPropertySpecifier] id)
