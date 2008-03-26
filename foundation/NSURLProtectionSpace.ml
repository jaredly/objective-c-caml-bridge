(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSURLProtectionSpace.methods
end

class t = fun (r :[`NSURLProtectionSpace] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLProtectionSpace *)
let c = Classes.find "NSURLProtectionSpace"
let _new()= (Objc.objcnew c : [`NSURLProtectionSpace] id)
let alloc() = (Objc.objcalloc c : [`NSURLProtectionSpace] id)
