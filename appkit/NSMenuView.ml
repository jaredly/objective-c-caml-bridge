(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSMenuView.methods
end

class t = fun (r :[`NSMenuView] id) -> object
  inherit methods
  inherit NSView.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMenuView *)
let c = Classes.find "NSMenuView"
let _new()= (Objc.objcnew c : [`NSMenuView] id)
let alloc() = (Objc.objcalloc c : [`NSMenuView] id)
let menuBarHeight () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "menuBarHeight")[])
       : float)
