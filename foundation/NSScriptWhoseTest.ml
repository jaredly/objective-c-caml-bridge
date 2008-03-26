(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSScriptWhoseTest.methods
end

class t = fun (r :[`NSScriptWhoseTest] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSScriptWhoseTest *)
let c = Classes.find "NSScriptWhoseTest"
let _new()= (Objc.objcnew c : [`NSScriptWhoseTest] id)
let alloc() = (Objc.objcalloc c : [`NSScriptWhoseTest] id)
