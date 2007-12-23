open Objc
open NSObject
open NSGeometry
open NSMenuItem


external init : unit -> unit = "caml_init_NSMenu"
let _ = init()
(* Class object for NSMenu *)
let class_NSMenu = object
   val o = Classes.find "NSMenu"
   method _new = (Objc.objcnew o : [`NSMenu] nativeNSObject)
(* methods for category NSSubmenuAction *)
   method setMenuZone (aZone : [`NSZone] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setMenuZone:")[make_pointer_from_object aZone]) : [`NSMenu] Objc.nativeNSObject)
   method menuZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "menuZone:")[]) : [`NSZone] Objc.nativeNSObject)
   (* skipping selector popUpContextMenu:withEvent:forView *)
   method popUpContextMenu  ~withEvent:(event : [`NSEvent] Objc.t ) ~forView:(view : [`NSView] Objc.t ) ?withFont:(font : [`NSFont] Objc.t option) (menu : [`NSMenu] Objc.t) =
     let sel, args = (
       Objc.arg menu "popUpContextMenu" make_pointer_from_object
       ++ Objc.arg event "withEvent" make_pointer_from_object
       ++ Objc.arg view "forView" make_pointer_from_object
       ++ Objc.opt_arg font "withFont" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSMenu] Objc.nativeNSObject)
   method setMenuBarVisible (visible : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setMenuBarVisible:")[make_bool visible]) : [`NSMenu] Objc.nativeNSObject)
   method menuBarVisible =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "menuBarVisible:")[]) : [`NSMenu] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMenu *)
class native_NSMenu = fun (o : [`NSMenu] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSSubmenuAction *)
   method submenuAction (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "submenuAction:")[make_pointer_from_object sender]) : unit)
   method initWithTitle (aTitle : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithTitle:")[make_pointer_from_object aTitle]) : [`NSObject] Objc.nativeNSObject)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setSupermenu (supermenu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSupermenu:")[make_pointer_from_object supermenu]) : unit)
   method supermenu =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "supermenu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method insertItem  ~atIndex:(index : int ) (newItem : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg newItem "insertItem" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method addItem (newItem : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addItem:")[make_pointer_from_object newItem]) : unit)
   method insertItemWithTitle  ~action:(aSelector : selector ) ~keyEquivalent:(charCode : [`NSString] Objc.t ) ~atIndex:(index : int ) (aString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aString "insertItemWithTitle" make_pointer_from_object
       ++ Objc.arg aSelector "action" make_selector
       ++ Objc.arg charCode "keyEquivalent" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method addItemWithTitle  ~action:(aSelector : selector ) ~keyEquivalent:(charCode : [`NSString] Objc.t ) (aString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aString "addItemWithTitle" make_pointer_from_object
       ++ Objc.arg aSelector "action" make_selector
       ++ Objc.arg charCode "keyEquivalent" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method removeItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeItemAtIndex:")[make_int index]) : unit)
   method removeItem (item : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeItem:")[make_pointer_from_object item]) : unit)
   method setSubmenu  ~forItem:(anItem : [`NSObject] Objc.t ) (aMenu : [`NSMenu] Objc.t) =
     let sel, args = (
       Objc.arg aMenu "setSubmenu" make_pointer_from_object
       ++ Objc.arg anItem "forItem" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method itemArray =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "itemArray:")[]) : [`NSArray] Objc.nativeNSObject)
   method numberOfItems =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfItems:")[]) : int)
   method indexOfItem (index : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfItem:")[make_pointer_from_object index]) : int)
   method indexOfItemWithTitle (aTitle : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfItemWithTitle:")[make_pointer_from_object aTitle]) : int)
   method indexOfItemWithTag (aTag : int) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfItemWithTag:")[make_int aTag]) : int)
   method indexOfItemWithRepresentedObject (_object : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfItemWithRepresentedObject:")[make_pointer_from_object _object]) : int)
   method indexOfItemWithSubmenu (submenu : [`NSMenu] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfItemWithSubmenu:")[make_pointer_from_object submenu]) : int)
   method indexOfItemWithTarget  ~andAction:(actionSelector : selector ) (target : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg target "indexOfItemWithTarget" make_pointer_from_object
       ++ Objc.arg actionSelector "andAction" make_selector
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)
   method itemAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "itemAtIndex:")[make_int index]) : [`NSObject] Objc.nativeNSObject)
   method itemWithTitle (aTitle : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "itemWithTitle:")[make_pointer_from_object aTitle]) : [`NSObject] Objc.nativeNSObject)
   method itemWithTag (tag : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "itemWithTag:")[make_int tag]) : [`NSObject] Objc.nativeNSObject)
   method setAutoenablesItems (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAutoenablesItems:")[make_bool flag]) : unit)
   method autoenablesItems =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "autoenablesItems:")[]) : bool)
   method performKeyEquivalent (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "performKeyEquivalent:")[make_pointer_from_object theEvent]) : bool)
   method update =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "update:")[]) : unit)
   method setMenuChangedMessagesEnabled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMenuChangedMessagesEnabled:")[make_bool flag]) : unit)
   method menuChangedMessagesEnabled =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "menuChangedMessagesEnabled:")[]) : bool)
   method itemChanged (item : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "itemChanged:")[make_pointer_from_object item]) : unit)
   method helpRequested (eventPtr : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "helpRequested:")[make_pointer_from_object eventPtr]) : unit)
   method setMenuRepresentation (menuRep : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMenuRepresentation:")[make_pointer_from_object menuRep]) : unit)
   method menuRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "menuRepresentation:")[]) : [`NSObject] Objc.nativeNSObject)
   method setContextMenuRepresentation (menuRep : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setContextMenuRepresentation:")[make_pointer_from_object menuRep]) : unit)
   method contextMenuRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "contextMenuRepresentation:")[]) : [`NSObject] Objc.nativeNSObject)
   method setTearOffMenuRepresentation (menuRep : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTearOffMenuRepresentation:")[make_pointer_from_object menuRep]) : unit)
   method tearOffMenuRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "tearOffMenuRepresentation:")[]) : [`NSObject] Objc.nativeNSObject)
   method isTornOff =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isTornOff:")[]) : bool)
   method attachedMenu =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attachedMenu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method isAttached =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isAttached:")[]) : bool)
   method sizeToFit =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "sizeToFit:")[]) : unit)
(*  UNSUPPORTED
   method locationForSubmenu (aSubmenu : [`NSMenu] Objc.t) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "locationForSubmenu:")[make_pointer_from_object aSubmenu]) : (*NSPoint*) unsupported)

*)
   method performActionForItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "performActionForItemAtIndex:")[make_int index]) : unit)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method menuBarHeight =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "menuBarHeight:")[]) : float)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSMenuDelegate *)
(* methods for category NSMenuValidation *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSMenuDelegate *)
   method menuNeedsUpdate (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "menuNeedsUpdate:")[make_pointer_from_object menu]) : unit)
   method numberOfItemsInMenu (menu : [`NSMenu] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfItemsInMenu:")[make_pointer_from_object menu]) : int)
   method menu  ~updateItem:(item : [`NSMenuItem] Objc.t ) ~atIndex:(index : int ) ~shouldCancel:(shouldCancel : bool ) (menu : [`NSMenu] Objc.t) =
     let sel, args = (
       Objc.arg menu "menu" make_pointer_from_object
       ++ Objc.arg item "updateItem" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
       ++ Objc.arg shouldCancel "shouldCancel" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method menuHasKeyEquivalent  ~forEvent:(event : [`NSEvent] Objc.t ) ~target:(target : [`id] Objc.t ) ~action:(action : [`SEL] Objc.t ) (menu : [`NSMenu] Objc.t) =
     let sel, args = (
       Objc.arg menu "menuHasKeyEquivalent" make_pointer_from_object
       ++ Objc.arg event "forEvent" make_pointer_from_object
       ++ Objc.arg target "target" make_pointer_from_object
       ++ Objc.arg action "action" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
(* methods for category NSMenuValidation *)
   method validateMenuItem (menuItem : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "validateMenuItem:")[make_pointer_from_object menuItem]) : bool)
end
