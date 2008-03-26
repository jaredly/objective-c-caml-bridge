(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSSimpleCString.methods
end

class t = fun (r :[`NSSimpleCString] id) -> object
  inherit methods
  inherit NSString.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSSimpleCString *)
let c = Classes.find "NSSimpleCString"
let _new()= (Objc.objcnew c : [`NSSimpleCString] id)
let alloc() = (Objc.objcalloc c : [`NSSimpleCString] id)
