(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCountedSet.methods
end

class t = fun (r :[`NSCountedSet] id) -> object
  inherit methods
  inherit NSMutableSet.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCountedSet *)
let c = Classes.find "NSCountedSet"
let _new()= (Objc.objcnew c : [`NSCountedSet] id)
let alloc() = (Objc.objcalloc c : [`NSCountedSet] id)
