(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSOutlineViewDropOnItemIndex = -1L


class t = fun (r :[`NSOutlineView] id) -> object
  inherit Im_NSOutlineView.methods
  method repr = r
end

(* Class object for NSOutlineView *)
let c = Classes.find "NSOutlineView"
let _new()= (Objc.objcnew c : [`NSOutlineView] id)
let alloc() = (Objc.objcalloc c : [`NSOutlineView] id)
