(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCountedSet] id) -> object
  inherit Im_NSCountedSet.methods
  method repr = r
end

(* Class object for NSCountedSet *)
let c = Classes.find "NSCountedSet"
let _new()= (Objc.objcnew c : [`NSCountedSet] id)
let alloc() = (Objc.objcalloc c : [`NSCountedSet] id)
