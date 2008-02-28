(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSScriptWhoseTest] id) -> object
  inherit Im_NSScriptWhoseTest.methods
  method repr = r
end

(* Class object for NSScriptWhoseTest *)
let c = Classes.find "NSScriptWhoseTest"
let _new()= (Objc.objcnew c : [`NSScriptWhoseTest] id)
let alloc() = (Objc.objcalloc c : [`NSScriptWhoseTest] id)
