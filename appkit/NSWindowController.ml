(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSWindowController.methods
end

class t = fun (r :[`NSWindowController] id) -> object
  inherit methods
  inherit NSResponder.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSWindowController *)
let c = Classes.find "NSWindowController"
let _new()= (Objc.objcnew c : [`NSWindowController] id)
let alloc() = (Objc.objcalloc c : [`NSWindowController] id)
