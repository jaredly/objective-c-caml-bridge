(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMenuView *)
class virtual methods = object (self)
  method virtual repr : [`NSMenuView] Objc.id
(*  UNSUPPORTED
  method initWithFrame (frame : (*NSRect*) unsupported) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFrame:")
      [(*NSRect*) unsupported frame]) : [`NSObject] Objc.id)

*)
  method initAsTearOff =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initAsTearOff")[])
       : [`NSObject] Objc.id)
  method setMenu (menu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenu:")
      [make_pointer_from_object menu]) : unit)
  method menu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menu")[])
       : [`NSMenu] Objc.id))
  method itemChanged (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "itemChanged:")
      [make_pointer_from_object notification]) : unit)
  method itemAdded (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "itemAdded:")
      [make_pointer_from_object notification]) : unit)
  method itemRemoved (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "itemRemoved:")
      [make_pointer_from_object notification]) : unit)
  method update =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "update")[])
       : unit)
  method setHorizontal (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHorizontal:")
      [make_bool flag]) : unit)
  method isHorizontal =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isHorizontal")[])
       : bool)
  method setFont (font : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFont:")
      [make_pointer_from_object font]) : unit)
  method font =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "font")[])
       : [`NSFont] Objc.id))
(*  UNSUPPORTED
  method innerRect =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "innerRect")[])
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method rectOfItemAtIndex (index : int) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rectOfItemAtIndex:")
      [make_int index]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method indexOfItemAtPoint (point : (*NSPoint*) unsupported) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfItemAtPoint:")
      [(*NSPoint*) unsupported point]) : int)

*)
  method setNeedsDisplayForItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsDisplayForItemAtIndex:")
      [make_int index]) : unit)
  method setHighlightedItemIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHighlightedItemIndex:")
      [make_int index]) : unit)
  method highlightedItemIndex =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "highlightedItemIndex")[])
       : int)
  method stateImageOffset =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "stateImageOffset")[])
       : float)
  method stateImageWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "stateImageWidth")[])
       : float)
  method imageAndTitleOffset =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "imageAndTitleOffset")[])
       : float)
  method imageAndTitleWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "imageAndTitleWidth")[])
       : float)
  method keyEquivalentOffset =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "keyEquivalentOffset")[])
       : float)
  method keyEquivalentWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "keyEquivalentWidth")[])
       : float)
  method setMenuItemCell  ~forItemAtIndex:(index : int ) (cell : [`NSMenuItemCell] Objc.t) =
    let sel, args = (
      Objc.arg cell "setMenuItemCell" make_pointer_from_object
      ++ Objc.arg index "forItemAtIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method menuItemCellForItemAtIndex (index : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menuItemCellForItemAtIndex:")
      [make_int index]) : [`NSMenuItemCell] Objc.id))
  method attachedMenuView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attachedMenuView")[])
       : [`NSMenuView] Objc.id))
  method setNeedsSizing (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsSizing:")
      [make_bool flag]) : unit)
  method needsSizing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "needsSizing")[])
       : bool)
  method sizeToFit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeToFit")[])
       : unit)
  method attachedMenu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attachedMenu")[])
       : [`NSMenu] Objc.id))
  method isAttached =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAttached")[])
       : bool)
  method isTornOff =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isTornOff")[])
       : bool)
(*  UNSUPPORTED
  method locationForSubmenu (aSubmenu : [`NSMenu] Objc.t) =
    ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported self#repr (Selector.find "locationForSubmenu:")
      [make_pointer_from_object aSubmenu]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
  method setWindowFrameForAttachingToRect  ~onScreen:(screen : [`NSScreen] Objc.t ) ~preferredEdge:(edge : (*NSRectEdge*) unsupported ) ~popUpSelectedItem:(selectedItemIndex : int ) (screenRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg screenRect "setWindowFrameForAttachingToRect" (*NSRect*) unsupported
      ++ Objc.arg screen "onScreen" make_pointer_from_object
      ++ Objc.arg edge "preferredEdge" (*NSRectEdge*) unsupported
      ++ Objc.arg selectedItemIndex "popUpSelectedItem" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method detachSubmenu =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "detachSubmenu")[])
       : unit)
  method attachSubmenuForItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "attachSubmenuForItemAtIndex:")
      [make_int index]) : unit)
  method performActionWithHighlightingForItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performActionWithHighlightingForItemAtIndex:")
      [make_int index]) : unit)
  method trackWithEvent (event : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "trackWithEvent:")
      [make_pointer_from_object event]) : bool)
  method horizontalEdgePadding =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "horizontalEdgePadding")[])
       : float)
  method setHorizontalEdgePadding (pad : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHorizontalEdgePadding:")
      [make_float pad]) : unit)
end
