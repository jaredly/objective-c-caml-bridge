(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSImageView.methods
end

class t = fun (r :[`NSImageView] id) -> object
  inherit methods
  inherit NSControl.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSImageView *)
let c = Classes.find "NSImageView"
let _new()= (Objc.objcnew c : [`NSImageView] id)
let alloc() = (Objc.objcalloc c : [`NSImageView] id)
