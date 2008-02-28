(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSURLResponse] id) -> object
  inherit Im_NSURLResponse.methods
  method repr = r
end

(* Class object for NSURLResponse *)
let c = Classes.find "NSURLResponse"
let _new()= (Objc.objcnew c : [`NSURLResponse] id)
let alloc() = (Objc.objcalloc c : [`NSURLResponse] id)
