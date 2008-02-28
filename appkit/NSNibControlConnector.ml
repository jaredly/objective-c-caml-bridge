(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNibControlConnector] id) -> object
  inherit Im_NSNibControlConnector.methods
  method repr = r
end

(* Class object for NSNibControlConnector *)
let c = Classes.find "NSNibControlConnector"
let _new()= (Objc.objcnew c : [`NSNibControlConnector] id)
let alloc() = (Objc.objcalloc c : [`NSNibControlConnector] id)
