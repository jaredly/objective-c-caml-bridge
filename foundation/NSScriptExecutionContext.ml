(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScriptExecutionContext.methods
end

class t = fun (r :[`NSScriptExecutionContext] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScriptExecutionContext *)
let c = Classes.find "NSScriptExecutionContext"
let _new()= (Objc.objcnew c : [`NSScriptExecutionContext] id)
let alloc() = (Objc.objcalloc c : [`NSScriptExecutionContext] id)
let sharedScriptExecutionContext () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedScriptExecutionContext")[])
       : [`NSScriptExecutionContext] Objc.id))
