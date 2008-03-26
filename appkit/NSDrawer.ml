(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDrawer.methods
end

class t = fun (r :[`NSDrawer] id) -> object
  inherit methods
  inherit NSResponder.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDrawer *)
let c = Classes.find "NSDrawer"
let _new()= (Objc.objcnew c : [`NSDrawer] id)
let alloc() = (Objc.objcalloc c : [`NSDrawer] id)
