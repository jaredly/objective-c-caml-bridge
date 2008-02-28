(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSWindowController] id) -> object
  inherit Im_NSWindowController.methods
  method repr = r
end

(* Class object for NSWindowController *)
let c = Classes.find "NSWindowController"
let _new()= (Objc.objcnew c : [`NSWindowController] id)
let alloc() = (Objc.objcalloc c : [`NSWindowController] id)
