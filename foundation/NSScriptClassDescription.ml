(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSScriptClassDescription] id) -> object
  inherit Im_NSScriptClassDescription.methods
  method repr = r
end

(* Class object for NSScriptClassDescription *)
let c = Classes.find "NSScriptClassDescription"
let _new()= (Objc.objcnew c : [`NSScriptClassDescription] id)
let alloc() = (Objc.objcalloc c : [`NSScriptClassDescription] id)
