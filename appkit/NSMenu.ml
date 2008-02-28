(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSMenu] id) -> object
  inherit Cati_NSSubmenuAction.methods_NSMenu
  inherit Im_NSMenu.methods
  method repr = r
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
  (* skipping selector popUpContextMenu:withEvent:forView *)
let popUpContextMenu  ~withEvent:(event : [`NSEvent] Objc.t ) ~forView:(view : [`NSView] Objc.t ) ?withFont:(font : [`NSFont] Objc.t option) (menu : [`NSMenu] Objc.t) =
    let sel, args = (
      Objc.arg menu "popUpContextMenu" make_pointer_from_object
      ++ Objc.arg event "withEvent" make_pointer_from_object
      ++ Objc.arg view "forView" make_pointer_from_object
      ++ Objc.opt_arg font "withFont" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let setMenuBarVisible (visible : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setMenuBarVisible:")
      [make_bool visible]) : unit)
let menuBarVisible () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "menuBarVisible")[])
       : bool)
