(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSActionCell.methods
end

class t = fun (r :[`NSActionCell] id) -> object
  inherit methods
  inherit NSCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSActionCell *)
let c = Classes.find "NSActionCell"
let _new()= (Objc.objcnew c : [`NSActionCell] id)
let alloc() = (Objc.objcalloc c : [`NSActionCell] id)
