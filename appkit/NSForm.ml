(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSForm.methods
end

class t = fun (r :[`NSForm] id) -> object
  inherit methods
  inherit NSMatrix.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSForm *)
let c = Classes.find "NSForm"
let _new()= (Objc.objcnew c : [`NSForm] id)
let alloc() = (Objc.objcalloc c : [`NSForm] id)
