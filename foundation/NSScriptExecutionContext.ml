(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSScriptExecutionContext] id) -> object
  inherit Im_NSScriptExecutionContext.methods
  method repr = r
end

(* Class object for NSScriptExecutionContext *)
let c = Classes.find "NSScriptExecutionContext"
let _new()= (Objc.objcnew c : [`NSScriptExecutionContext] id)
let alloc() = (Objc.objcalloc c : [`NSScriptExecutionContext] id)
let sharedScriptExecutionContext () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedScriptExecutionContext")[])
       : [`NSScriptExecutionContext] Objc.id))
