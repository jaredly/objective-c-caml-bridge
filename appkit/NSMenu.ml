(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSSubmenuAction.methods_NSMenu
  inherit Im_NSMenu.methods
end

class t = fun (r :[`NSMenu] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSMenu *)
let c = Classes.find "NSMenu"
let _new()= (Objc.objcnew c : [`NSMenu] id)
let alloc() = (Objc.objcalloc c : [`NSMenu] id)
(* class methods for category NSSubmenuAction of NSMenu *)
let setMenuZone (aZone : [`NSZone] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setMenuZone:")
      [make_pointer_from_object aZone]) : unit)
let menuZone () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "menuZone")[])
       : [`NSZone] Objc.id))
let popUpContextMenu_withEvent_forView  (menu : [`NSMenu] Objc.t) (event : [`NSEvent] Objc.t) (view : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg menu "popUpContextMenu" make_pointer_from_object
      ++ Objc.arg event "withEvent" make_pointer_from_object
      ++ Objc.arg view "forView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let popUpContextMenu_withEvent_forView_withFont  (menu : [`NSMenu] Objc.t) (event : [`NSEvent] Objc.t) (view : [`NSView] Objc.t) (font : [`NSFont] Objc.t) =
    let sel, args = (
      Objc.arg menu "popUpContextMenu" make_pointer_from_object
      ++ Objc.arg event "withEvent" make_pointer_from_object
      ++ Objc.arg view "forView" make_pointer_from_object
      ++ Objc.arg font "withFont" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let setMenuBarVisible (visible : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setMenuBarVisible:")
      [make_bool visible]) : unit)
let menuBarVisible () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "menuBarVisible")[])
       : bool)
