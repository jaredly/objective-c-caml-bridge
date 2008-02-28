(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSColorWell] id) -> object
  inherit Im_NSColorWell.methods
  method repr = r
end

(* Class object for NSColorWell *)
let c = Classes.find "NSColorWell"
let _new()= (Objc.objcnew c : [`NSColorWell] id)
let alloc() = (Objc.objcalloc c : [`NSColorWell] id)
