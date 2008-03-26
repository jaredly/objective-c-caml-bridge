(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDirectoryEnumerator.methods
end

class t = fun (r :[`NSDirectoryEnumerator] id) -> object
  inherit methods
  inherit NSEnumerator.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDirectoryEnumerator *)
let c = Classes.find "NSDirectoryEnumerator"
let _new()= (Objc.objcnew c : [`NSDirectoryEnumerator] id)
let alloc() = (Objc.objcalloc c : [`NSDirectoryEnumerator] id)
