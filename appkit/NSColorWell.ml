(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSColorWell.methods
end

class t = fun (r :[`NSColorWell] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSColorWell *)
let c = Classes.find "NSColorWell"
let _new()= (Objc.objcnew c : [`NSColorWell] id)
let alloc() = (Objc.objcalloc c : [`NSColorWell] id)
