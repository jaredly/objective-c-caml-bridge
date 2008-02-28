(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTabView] id) -> object
  inherit Im_NSTabView.methods
  method repr = r
end

(* Class object for NSTabView *)
let c = Classes.find "NSTabView"
let _new()= (Objc.objcnew c : [`NSTabView] id)
let alloc() = (Objc.objcalloc c : [`NSTabView] id)
