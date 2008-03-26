(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSAnimation.methods
end

class t = fun (r :[`NSAnimation] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSAnimation *)
let c = Classes.find "NSAnimation"
let _new()= (Objc.objcnew c : [`NSAnimation] id)
let alloc() = (Objc.objcalloc c : [`NSAnimation] id)
