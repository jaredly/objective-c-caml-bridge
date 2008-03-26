(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSQuickDrawView.methods
end

class t = fun (r :[`NSQuickDrawView] id) -> object
  inherit methods
  inherit NSView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSQuickDrawView *)
let c = Classes.find "NSQuickDrawView"
let _new()= (Objc.objcnew c : [`NSQuickDrawView] id)
let alloc() = (Objc.objcalloc c : [`NSQuickDrawView] id)
