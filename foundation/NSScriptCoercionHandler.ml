(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScriptCoercionHandler.methods
end

class t = fun (r :[`NSScriptCoercionHandler] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScriptCoercionHandler *)
let c = Classes.find "NSScriptCoercionHandler"
let _new()= (Objc.objcnew c : [`NSScriptCoercionHandler] id)
let alloc() = (Objc.objcalloc c : [`NSScriptCoercionHandler] id)
let sharedCoercionHandler () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedCoercionHandler")[])
       : [`NSScriptCoercionHandler] Objc.id))
