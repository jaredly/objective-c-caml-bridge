(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSQuickDrawView] id) -> object
  inherit Im_NSQuickDrawView.methods
  method repr = r
end

(* Class object for NSQuickDrawView *)
let c = Classes.find "NSQuickDrawView"
let _new()= (Objc.objcnew c : [`NSQuickDrawView] id)
let alloc() = (Objc.objcalloc c : [`NSQuickDrawView] id)
