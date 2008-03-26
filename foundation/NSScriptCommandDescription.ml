(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScriptCommandDescription.methods
end

class t = fun (r :[`NSScriptCommandDescription] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScriptCommandDescription *)
let c = Classes.find "NSScriptCommandDescription"
let _new()= (Objc.objcnew c : [`NSScriptCommandDescription] id)
let alloc() = (Objc.objcalloc c : [`NSScriptCommandDescription] id)
