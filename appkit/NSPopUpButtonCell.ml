(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSMenuItemCell
open NSMenuItem


external init : unit -> unit = "caml_init_NSPopUpButtonCell"
let _ = init()
let make_NSMenuItemCell_of_NSPopUpButtonCell (o : [`NSPopUpButtonCell] nativeNSObject) = (Obj.magic o : [`NSMenuItemCell] nativeNSObject)
(* Class object for NSPopUpButtonCell *)
let class_NSPopUpButtonCell = object
   val repr = Classes.find "NSPopUpButtonCell"
   method _new = (Objc.objcnew repr : [`NSPopUpButtonCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPopUpButtonCell] nativeNSObject)
end
(* Encapsulation for native instance of NSPopUpButtonCell *)
class native_NSPopUpButtonCell = fun (o : [`NSPopUpButtonCell] nativeNSObject) -> object (self)
   inherit native_NSMenuItemCell (make_NSMenuItemCell_of_NSPopUpButtonCell o) as super
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method initTextCell  ~pullsDown:(pullDown : bool ) (stringValue : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg stringValue "initTextCell" make_pointer_from_object
       ++ Objc.arg pullDown "pullsDown" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method setMenu (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMenu:")[make_pointer_from_object menu]) : unit)
   method menu =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method setPullsDown (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPullsDown:")[make_bool flag]) : unit)
   method pullsDown =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "pullsDown:")[]) : bool)
   method setAutoenablesItems (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutoenablesItems:")[make_bool flag]) : unit)
   method autoenablesItems =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autoenablesItems:")[]) : bool)
(*  UNSUPPORTED
   method setPreferredEdge (edge : (*NSRectEdge*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPreferredEdge:")[(*NSRectEdge*) unsupported edge]) : unit)

*)
(*  UNSUPPORTED
   method preferredEdge =
     ((*NSRectEdge*) unsupported (Objc.invoke (*NSRectEdge*) Objc.tag_unsupported repr (Selector.find "preferredEdge:")[]) : (*NSRectEdge*) unsupported)

*)
   method setUsesItemFromMenu (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUsesItemFromMenu:")[make_bool flag]) : unit)
   method usesItemFromMenu =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "usesItemFromMenu:")[]) : bool)
   method setAltersStateOfSelectedItem (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAltersStateOfSelectedItem:")[make_bool flag]) : unit)
   method altersStateOfSelectedItem =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "altersStateOfSelectedItem:")[]) : bool)
   method addItemWithTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addItemWithTitle:")[make_pointer_from_object title]) : unit)
   method addItemsWithTitles (itemTitles : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addItemsWithTitles:")[make_pointer_from_object itemTitles]) : unit)
   method insertItemWithTitle  ~atIndex:(index : int ) (title : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg title "insertItemWithTitle" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeItemWithTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeItemWithTitle:")[make_pointer_from_object title]) : unit)
   method removeItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeItemAtIndex:")[make_int index]) : unit)
   method removeAllItems =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeAllItems:")[]) : unit)
   method itemArray =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "itemArray:")[]) : [`NSArray] Objc.nativeNSObject)
   method numberOfItems =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfItems:")[]) : int)
   method indexOfItem (item : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfItem:")[make_pointer_from_object item]) : int)
   method indexOfItemWithTitle (title : [`NSString] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfItemWithTitle:")[make_pointer_from_object title]) : int)
   method indexOfItemWithTag (tag : int) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfItemWithTag:")[make_int tag]) : int)
   method indexOfItemWithRepresentedObject (obj : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfItemWithRepresentedObject:")[make_pointer_from_object obj]) : int)
   method indexOfItemWithTarget  ~andAction:(actionSelector : selector ) (target : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg target "indexOfItemWithTarget" make_pointer_from_object
       ++ Objc.arg actionSelector "andAction" make_selector
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method itemAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "itemAtIndex:")[make_int index]) : [`NSObject] Objc.nativeNSObject)
   method itemWithTitle (title : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "itemWithTitle:")[make_pointer_from_object title]) : [`NSObject] Objc.nativeNSObject)
   method lastItem =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "lastItem:")[]) : [`NSObject] Objc.nativeNSObject)
   method selectItem (item : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectItem:")[make_pointer_from_object item]) : unit)
   method selectItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectItemAtIndex:")[make_int index]) : unit)
   method selectItemWithTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectItemWithTitle:")[make_pointer_from_object title]) : unit)
   method selectItemWithTag (tag : int) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "selectItemWithTag:")[make_int tag]) : bool)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method selectedItem =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "selectedItem:")[]) : [`NSObject] Objc.nativeNSObject)
   method indexOfSelectedItem =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfSelectedItem:")[]) : int)
   method synchronizeTitleAndSelectedItem =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "synchronizeTitleAndSelectedItem:")[]) : unit)
   method itemTitleAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "itemTitleAtIndex:")[make_int index]) : [`NSString] Objc.nativeNSObject)
   method itemTitles =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "itemTitles:")[]) : [`NSArray] Objc.nativeNSObject)
   method titleOfSelectedItem =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "titleOfSelectedItem:")[]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method attachPopUpWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (cellFrame : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg cellFrame "attachPopUpWithFrame" (*NSRect*) unsupported
       ++ Objc.arg controlView "inView" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method dismissPopUp =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "dismissPopUp:")[]) : unit)
(*  UNSUPPORTED
   method performClickWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (frame : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg frame "performClickWithFrame" (*NSRect*) unsupported
       ++ Objc.arg controlView "inView" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method arrowPosition =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "arrowPosition:")[]) : int)
   method setArrowPosition (position : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setArrowPosition:")[make_int position]) : unit)
   method objectValue =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectValue:")[]) : [`NSObject] Objc.nativeNSObject)
   method setObjectValue (obj : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setObjectValue:")[make_pointer_from_object obj]) : unit)
end
