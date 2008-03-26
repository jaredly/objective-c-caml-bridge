(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMessagePort.methods
end

class t = fun (r :[`NSMessagePort] id) -> object
  inherit methods
  inherit NSPort.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMessagePort *)
let c = Classes.find "NSMessagePort"
let _new()= (Objc.objcnew c : [`NSMessagePort] id)
let alloc() = (Objc.objcalloc c : [`NSMessagePort] id)
