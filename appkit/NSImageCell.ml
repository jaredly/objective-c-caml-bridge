(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSImageCell.methods
end

class t = fun (r :[`NSImageCell] id) -> object
  inherit methods
  inherit NSCell.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSImageCell *)
let c = Classes.find "NSImageCell"
let _new()= (Objc.objcnew c : [`NSImageCell] id)
let alloc() = (Objc.objcalloc c : [`NSImageCell] id)
