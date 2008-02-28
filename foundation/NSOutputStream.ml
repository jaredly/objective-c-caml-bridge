(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSOutputStream] id) -> object
  inherit Im_NSOutputStream.methods
  method repr = r
end

(* Class object for NSOutputStream *)
let c = Classes.find "NSOutputStream"
let _new()= (Objc.objcnew c : [`NSOutputStream] id)
let alloc() = (Objc.objcalloc c : [`NSOutputStream] id)
