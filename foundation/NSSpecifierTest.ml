(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSpecifierTest.methods
end

class t = fun (r :[`NSSpecifierTest] id) -> object
  inherit methods
  inherit NSScriptWhoseTest.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSpecifierTest *)
let c = Classes.find "NSSpecifierTest"
let _new()= (Objc.objcnew c : [`NSSpecifierTest] id)
let alloc() = (Objc.objcalloc c : [`NSSpecifierTest] id)
