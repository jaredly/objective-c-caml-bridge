(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableSet] id) -> object
  inherit Im_NSMutableSet.methods
  method repr = r
end

(* Class object for NSMutableSet *)
let c = Classes.find "NSMutableSet"
let _new()= (Objc.objcnew c : [`NSMutableSet] id)
let alloc() = (Objc.objcalloc c : [`NSMutableSet] id)
