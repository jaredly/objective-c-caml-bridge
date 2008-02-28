(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNib] id) -> object
  inherit Im_NSNib.methods
  method repr = r
end

(* Class object for NSNib *)
let c = Classes.find "NSNib"
let _new()= (Objc.objcnew c : [`NSNib] id)
let alloc() = (Objc.objcalloc c : [`NSNib] id)
