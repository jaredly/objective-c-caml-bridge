(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSScriptObjectSpecifier] id) -> object
  inherit Im_NSScriptObjectSpecifier.methods
  method repr = r
end

(* Class object for NSScriptObjectSpecifier *)
let c = Classes.find "NSScriptObjectSpecifier"
let _new()= (Objc.objcnew c : [`NSScriptObjectSpecifier] id)
let alloc() = (Objc.objcalloc c : [`NSScriptObjectSpecifier] id)
