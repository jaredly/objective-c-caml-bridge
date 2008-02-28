(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSURLProtectionSpace] id) -> object
  inherit Im_NSURLProtectionSpace.methods
  method repr = r
end

(* Class object for NSURLProtectionSpace *)
let c = Classes.find "NSURLProtectionSpace"
let _new()= (Objc.objcnew c : [`NSURLProtectionSpace] id)
let alloc() = (Objc.objcalloc c : [`NSURLProtectionSpace] id)
