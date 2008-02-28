(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSScriptCommandDescription] id) -> object
  inherit Im_NSScriptCommandDescription.methods
  method repr = r
end

(* Class object for NSScriptCommandDescription *)
let c = Classes.find "NSScriptCommandDescription"
let _new()= (Objc.objcnew c : [`NSScriptCommandDescription] id)
let alloc() = (Objc.objcalloc c : [`NSScriptCommandDescription] id)
