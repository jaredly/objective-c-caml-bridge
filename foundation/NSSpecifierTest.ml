(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSSpecifierTest] id) -> object
  inherit Im_NSSpecifierTest.methods
  method repr = r
end

(* Class object for NSSpecifierTest *)
let c = Classes.find "NSSpecifierTest"
let _new()= (Objc.objcnew c : [`NSSpecifierTest] id)
let alloc() = (Objc.objcalloc c : [`NSSpecifierTest] id)
