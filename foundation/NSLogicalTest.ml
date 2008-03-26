(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSLogicalTest.methods
end

class t = fun (r :[`NSLogicalTest] id) -> object
  inherit methods
  inherit NSScriptWhoseTest.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSLogicalTest *)
let c = Classes.find "NSLogicalTest"
let _new()= (Objc.objcnew c : [`NSLogicalTest] id)
let alloc() = (Objc.objcalloc c : [`NSLogicalTest] id)
