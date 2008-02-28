(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSInputStream] id) -> object
  inherit Im_NSInputStream.methods
  method repr = r
end

(* Class object for NSInputStream *)
let c = Classes.find "NSInputStream"
let _new()= (Objc.objcnew c : [`NSInputStream] id)
let alloc() = (Objc.objcalloc c : [`NSInputStream] id)
