(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSNibControlConnector.methods
end

class t = fun (r :[`NSNibControlConnector] id) -> object
  inherit methods
  inherit NSNibConnector.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNibControlConnector *)
let c = Classes.find "NSNibControlConnector"
let _new()= (Objc.objcnew c : [`NSNibControlConnector] id)
let alloc() = (Objc.objcalloc c : [`NSNibControlConnector] id)
