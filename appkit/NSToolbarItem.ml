(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSToolbarItemVisibilityPriorityStandard = 0L
let _NSToolbarItemVisibilityPriorityLow = -1000L
let _NSToolbarItemVisibilityPriorityHigh = 1000L
let _NSToolbarItemVisibilityPriorityUser = 2000L


class t = fun (r :[`NSToolbarItem] id) -> object
  inherit Im_NSToolbarItem.methods
  method repr = r
end

(* Class object for NSToolbarItem *)
let c = Classes.find "NSToolbarItem"
let _new()= (Objc.objcnew c : [`NSToolbarItem] id)
let alloc() = (Objc.objcalloc c : [`NSToolbarItem] id)
