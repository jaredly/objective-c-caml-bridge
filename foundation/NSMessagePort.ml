(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMessagePort] id) -> object
  inherit Im_NSMessagePort.methods
  method repr = r
end

(* Class object for NSMessagePort *)
let c = Classes.find "NSMessagePort"
let _new()= (Objc.objcnew c : [`NSMessagePort] id)
let alloc() = (Objc.objcalloc c : [`NSMessagePort] id)
