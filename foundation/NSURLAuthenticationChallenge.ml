(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSURLAuthenticationChallenge.methods
end

class t = fun (r :[`NSURLAuthenticationChallenge] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLAuthenticationChallenge *)
let c = Classes.find "NSURLAuthenticationChallenge"
let _new()= (Objc.objcnew c : [`NSURLAuthenticationChallenge] id)
let alloc() = (Objc.objcalloc c : [`NSURLAuthenticationChallenge] id)
