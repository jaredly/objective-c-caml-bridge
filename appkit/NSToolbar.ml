(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSToolbar] id) -> object
  inherit Im_NSToolbar.methods
  method repr = r
end

(* Class object for NSToolbar *)
let c = Classes.find "NSToolbar"
let _new()= (Objc.objcnew c : [`NSToolbar] id)
let alloc() = (Objc.objcalloc c : [`NSToolbar] id)
