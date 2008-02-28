(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNibOutletConnector] id) -> object
  inherit Im_NSNibOutletConnector.methods
  method repr = r
end

(* Class object for NSNibOutletConnector *)
let c = Classes.find "NSNibOutletConnector"
let _new()= (Objc.objcnew c : [`NSNibOutletConnector] id)
let alloc() = (Objc.objcalloc c : [`NSNibOutletConnector] id)
