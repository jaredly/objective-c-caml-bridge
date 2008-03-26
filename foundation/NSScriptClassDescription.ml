(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScriptClassDescription.methods
end

class t = fun (r :[`NSScriptClassDescription] id) -> object
  inherit methods
  inherit NSClassDescription.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScriptClassDescription *)
let c = Classes.find "NSScriptClassDescription"
let _new()= (Objc.objcnew c : [`NSScriptClassDescription] id)
let alloc() = (Objc.objcalloc c : [`NSScriptClassDescription] id)
