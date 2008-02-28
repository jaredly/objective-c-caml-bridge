(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDistantObjectRequest] id) -> object
  inherit Im_NSDistantObjectRequest.methods
  method repr = r
end

(* Class object for NSDistantObjectRequest *)
let c = Classes.find "NSDistantObjectRequest"
let _new()= (Objc.objcnew c : [`NSDistantObjectRequest] id)
let alloc() = (Objc.objcalloc c : [`NSDistantObjectRequest] id)
