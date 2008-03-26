(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSOutlineViewDropOnItemIndex = -1L


class virtual methods = object
  inherit Im_NSOutlineView.methods
end

class t = fun (r :[`NSOutlineView] id) -> object
  inherit methods
  inherit NSTableView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSOutlineView *)
let c = Classes.find "NSOutlineView"
let _new()= (Objc.objcnew c : [`NSOutlineView] id)
let alloc() = (Objc.objcalloc c : [`NSOutlineView] id)
