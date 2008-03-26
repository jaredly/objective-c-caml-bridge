(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSToolbar.methods
end

class t = fun (r :[`NSToolbar] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSToolbar *)
let c = Classes.find "NSToolbar"
let _new()= (Objc.objcnew c : [`NSToolbar] id)
let alloc() = (Objc.objcalloc c : [`NSToolbar] id)
