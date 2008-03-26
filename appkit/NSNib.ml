(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSNib.methods
end

class t = fun (r :[`NSNib] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNib *)
let c = Classes.find "NSNib"
let _new()= (Objc.objcnew c : [`NSNib] id)
let alloc() = (Objc.objcalloc c : [`NSNib] id)
