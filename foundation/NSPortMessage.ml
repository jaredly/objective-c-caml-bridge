(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPortMessage] id) -> object
  inherit Im_NSPortMessage.methods
  method repr = r
end

(* Class object for NSPortMessage *)
let c = Classes.find "NSPortMessage"
let _new()= (Objc.objcnew c : [`NSPortMessage] id)
let alloc() = (Objc.objcalloc c : [`NSPortMessage] id)
