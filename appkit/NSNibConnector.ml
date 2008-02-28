(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNibConnector] id) -> object
  inherit Im_NSNibConnector.methods
  method repr = r
end

(* Class object for NSNibConnector *)
let c = Classes.find "NSNibConnector"
let _new()= (Objc.objcnew c : [`NSNibConnector] id)
let alloc() = (Objc.objcalloc c : [`NSNibConnector] id)
