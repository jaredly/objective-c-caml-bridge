(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSFileWrapper.methods
end

class t = fun (r :[`NSFileWrapper] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSFileWrapper *)
let c = Classes.find "NSFileWrapper"
let _new()= (Objc.objcnew c : [`NSFileWrapper] id)
let alloc() = (Objc.objcalloc c : [`NSFileWrapper] id)
