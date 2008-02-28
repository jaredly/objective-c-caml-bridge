(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSLogicalTest] id) -> object
  inherit Im_NSLogicalTest.methods
  method repr = r
end

(* Class object for NSLogicalTest *)
let c = Classes.find "NSLogicalTest"
let _new()= (Objc.objcnew c : [`NSLogicalTest] id)
let alloc() = (Objc.objcalloc c : [`NSLogicalTest] id)
