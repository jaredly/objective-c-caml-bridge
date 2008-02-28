(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDirectoryEnumerator] id) -> object
  inherit Im_NSDirectoryEnumerator.methods
  method repr = r
end

(* Class object for NSDirectoryEnumerator *)
let c = Classes.find "NSDirectoryEnumerator"
let _new()= (Objc.objcnew c : [`NSDirectoryEnumerator] id)
let alloc() = (Objc.objcalloc c : [`NSDirectoryEnumerator] id)
