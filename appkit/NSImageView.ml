(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSImageView] id) -> object
  inherit Im_NSImageView.methods
  method repr = r
end

(* Class object for NSImageView *)
let c = Classes.find "NSImageView"
let _new()= (Objc.objcnew c : [`NSImageView] id)
let alloc() = (Objc.objcalloc c : [`NSImageView] id)
