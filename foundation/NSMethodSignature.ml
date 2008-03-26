(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMethodSignature.methods
end

class t = fun (r :[`NSMethodSignature] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMethodSignature *)
let c = Classes.find "NSMethodSignature"
let _new()= (Objc.objcnew c : [`NSMethodSignature] id)
let alloc() = (Objc.objcalloc c : [`NSMethodSignature] id)
