(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMenuView] id) -> object
  inherit Im_NSMenuView.methods
  method repr = r
end

(* Class object for NSMenuView *)
let c = Classes.find "NSMenuView"
let _new()= (Objc.objcnew c : [`NSMenuView] id)
let alloc() = (Objc.objcalloc c : [`NSMenuView] id)
let menuBarHeight () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "menuBarHeight")[])
       : float)
