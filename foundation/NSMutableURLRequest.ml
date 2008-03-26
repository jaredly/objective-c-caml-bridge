(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSMutableHTTPURLRequest.methods_NSMutableURLRequest
  inherit Im_NSMutableURLRequest.methods
end

class t = fun (r :[`NSMutableURLRequest] id) -> object
  inherit methods
  inherit NSURLRequest.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMutableURLRequest *)
let c = Classes.find "NSMutableURLRequest"
let _new()= (Objc.objcnew c : [`NSMutableURLRequest] id)
let alloc() = (Objc.objcalloc c : [`NSMutableURLRequest] id)
(* class methods for category NSMutableHTTPURLRequest of NSMutableURLRequest *)
