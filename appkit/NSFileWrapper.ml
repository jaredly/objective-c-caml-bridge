(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSFileWrapper] id) -> object
  inherit Im_NSFileWrapper.methods
  method repr = r
end

(* Class object for NSFileWrapper *)
let c = Classes.find "NSFileWrapper"
let _new()= (Objc.objcnew c : [`NSFileWrapper] id)
let alloc() = (Objc.objcalloc c : [`NSFileWrapper] id)
