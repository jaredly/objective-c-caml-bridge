(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSURLAuthenticationChallenge] id) -> object
  inherit Im_NSURLAuthenticationChallenge.methods
  method repr = r
end

(* Class object for NSURLAuthenticationChallenge *)
let c = Classes.find "NSURLAuthenticationChallenge"
let _new()= (Objc.objcnew c : [`NSURLAuthenticationChallenge] id)
let alloc() = (Objc.objcalloc c : [`NSURLAuthenticationChallenge] id)
