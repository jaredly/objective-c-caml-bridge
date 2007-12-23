open Objc
open NSView
open NSMenu
open NSMenuItem
open NSMenuItemCell


external init : unit -> unit = "caml_init_NSMenuView"
let _ = init()
(* Class object for NSMenuView *)
let class_NSMenuView = object
   val o = Classes.find "NSMenuView"
   method _new = (Objc.objcnew o : [`NSMenuView] nativeNSObject)
   method menuBarHeight =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "menuBarHeight:")[]) : [`NSMenuView] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMenuView *)
class native_NSMenuView = fun (o : [`NSMenuView] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method initWithFrame (frame : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithFrame:")[(*NSRect*) unsupported frame]) : [`NSObject] Objc.nativeNSObject)

*)
   method initAsTearOff =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initAsTearOff:")[]) : [`NSObject] Objc.nativeNSObject)
   method setMenu (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMenu:")[make_pointer_from_object menu]) : unit)
   method menu =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "menu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method itemChanged (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "itemChanged:")[make_pointer_from_object notification]) : unit)
   method itemAdded (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "itemAdded:")[make_pointer_from_object notification]) : unit)
   method itemRemoved (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "itemRemoved:")[make_pointer_from_object notification]) : unit)
   method update =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "update:")[]) : unit)
   method setHorizontal (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHorizontal:")[make_bool flag]) : unit)
   method isHorizontal =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isHorizontal:")[]) : bool)
   method setFont (font : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFont:")[make_pointer_from_object font]) : unit)
   method font =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "font:")[]) : [`NSFont] Objc.nativeNSObject)
(*  UNSUPPORTED
   method innerRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "innerRect:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method rectOfItemAtIndex (index : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "rectOfItemAtIndex:")[make_int index]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method indexOfItemAtPoint (point : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfItemAtPoint:")[(*NSPoint*) unsupported point]) : int)

*)
   method setNeedsDisplayForItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNeedsDisplayForItemAtIndex:")[make_int index]) : unit)
   method setHighlightedItemIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHighlightedItemIndex:")[make_int index]) : unit)
   method highlightedItemIndex =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "highlightedItemIndex:")[]) : int)
   method stateImageOffset =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "stateImageOffset:")[]) : float)
   method stateImageWidth =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "stateImageWidth:")[]) : float)
   method imageAndTitleOffset =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "imageAndTitleOffset:")[]) : float)
   method imageAndTitleWidth =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "imageAndTitleWidth:")[]) : float)
   method keyEquivalentOffset =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "keyEquivalentOffset:")[]) : float)
   method keyEquivalentWidth =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "keyEquivalentWidth:")[]) : float)
   method setMenuItemCell  ~forItemAtIndex:(index : int ) (cell : [`NSMenuItemCell] Objc.t) =
     let sel, args = (
       Objc.arg cell "setMenuItemCell" make_pointer_from_object
       ++ Objc.arg index "forItemAtIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method menuItemCellForItemAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "menuItemCellForItemAtIndex:")[make_int index]) : [`NSMenuItemCell] Objc.nativeNSObject)
   method attachedMenuView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attachedMenuView:")[]) : [`NSMenuView] Objc.nativeNSObject)
   method setNeedsSizing (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNeedsSizing:")[make_bool flag]) : unit)
   method needsSizing =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "needsSizing:")[]) : bool)
   method sizeToFit =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "sizeToFit:")[]) : unit)
   method attachedMenu =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attachedMenu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method isAttached =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isAttached:")[]) : bool)
   method isTornOff =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isTornOff:")[]) : bool)
(*  UNSUPPORTED
   method locationForSubmenu (aSubmenu : [`NSMenu] Objc.t) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "locationForSubmenu:")[make_pointer_from_object aSubmenu]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method setWindowFrameForAttachingToRect  ~onScreen:(screen : [`NSScreen] Objc.t ) ~preferredEdge:(edge : (*NSRectEdge*) unsupported ) ~popUpSelectedItem:(selectedItemIndex : int ) (screenRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg screenRect "setWindowFrameForAttachingToRect" (*NSRect*) unsupported
       ++ Objc.arg screen "onScreen" make_pointer_from_object
       ++ Objc.arg edge "preferredEdge" (*NSRectEdge*) unsupported
       ++ Objc.arg selectedItemIndex "popUpSelectedItem" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method detachSubmenu =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "detachSubmenu:")[]) : unit)
   method attachSubmenuForItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "attachSubmenuForItemAtIndex:")[make_int index]) : unit)
   method performActionWithHighlightingForItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "performActionWithHighlightingForItemAtIndex:")[make_int index]) : unit)
   method trackWithEvent (event : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "trackWithEvent:")[make_pointer_from_object event]) : bool)
   method horizontalEdgePadding =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "horizontalEdgePadding:")[]) : float)
   method setHorizontalEdgePadding (pad : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHorizontalEdgePadding:")[make_float pad]) : unit)
end
