(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSURLResponse.methods
end

class t = fun (r :[`NSURLResponse] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLResponse *)
let c = Classes.find "NSURLResponse"
let _new()= (Objc.objcnew c : [`NSURLResponse] id)
let alloc() = (Objc.objcalloc c : [`NSURLResponse] id)
