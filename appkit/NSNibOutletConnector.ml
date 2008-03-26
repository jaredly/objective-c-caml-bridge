(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSNibOutletConnector.methods
end

class t = fun (r :[`NSNibOutletConnector] id) -> object
  inherit methods
  inherit NSNibConnector.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNibOutletConnector *)
let c = Classes.find "NSNibOutletConnector"
let _new()= (Objc.objcnew c : [`NSNibOutletConnector] id)
let alloc() = (Objc.objcalloc c : [`NSNibOutletConnector] id)
