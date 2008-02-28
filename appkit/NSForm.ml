(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSForm] id) -> object
  inherit Im_NSForm.methods
  method repr = r
end

(* Class object for NSForm *)
let c = Classes.find "NSForm"
let _new()= (Objc.objcnew c : [`NSForm] id)
let alloc() = (Objc.objcalloc c : [`NSForm] id)
