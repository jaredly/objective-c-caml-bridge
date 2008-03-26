(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSViewAnimation.methods
end

class t = fun (r :[`NSViewAnimation] id) -> object
  inherit methods
  inherit NSAnimation.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSViewAnimation *)
let c = Classes.find "NSViewAnimation"
let _new()= (Objc.objcnew c : [`NSViewAnimation] id)
let alloc() = (Objc.objcalloc c : [`NSViewAnimation] id)
