(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMutableURLRequest] id) -> object
  inherit Im_NSMutableURLRequest.methods
  method repr = r
end

(* Class object for NSMutableURLRequest *)
let c = Classes.find "NSMutableURLRequest"
let _new()= (Objc.objcnew c : [`NSMutableURLRequest] id)
let alloc() = (Objc.objcalloc c : [`NSMutableURLRequest] id)
