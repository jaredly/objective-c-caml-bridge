(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSTableHeaderView] id) -> object
  inherit Im_NSTableHeaderView.methods
  method repr = r
end

(* Class object for NSTableHeaderView *)
let c = Classes.find "NSTableHeaderView"
let _new()= (Objc.objcnew c : [`NSTableHeaderView] id)
let alloc() = (Objc.objcalloc c : [`NSTableHeaderView] id)
