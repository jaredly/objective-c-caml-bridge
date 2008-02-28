(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMenu *)
class virtual methods = object (self)
  method virtual repr : [`NSMenu] Objc.id
  method initWithTitle (aTitle : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithTitle:")
      [make_pointer_from_object aTitle]) : [`NSObject] Objc.id)
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setSupermenu (supermenu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSupermenu:")
      [make_pointer_from_object supermenu]) : unit)
  method supermenu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "supermenu")[])
       : [`NSMenu] Objc.id))
  method insertItem  ~atIndex:(index : int ) (newItem : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg newItem "insertItem" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method addItem (newItem : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addItem:")
      [make_pointer_from_object newItem]) : unit)
  method insertItemWithTitle  ~action:(aSelector : selector ) ~keyEquivalent:(charCode : [`NSString] Objc.t ) ~atIndex:(index : int ) (aString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aString "insertItemWithTitle" make_pointer_from_object
      ++ Objc.arg aSelector "action" make_selector
      ++ Objc.arg charCode "keyEquivalent" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method addItemWithTitle  ~action:(aSelector : selector ) ~keyEquivalent:(charCode : [`NSString] Objc.t ) (aString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aString "addItemWithTitle" make_pointer_from_object
      ++ Objc.arg aSelector "action" make_selector
      ++ Objc.arg charCode "keyEquivalent" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method removeItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeItemAtIndex:")
      [make_int index]) : unit)
  method removeItem (item : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeItem:")
      [make_pointer_from_object item]) : unit)
  method setSubmenu  ~forItem:(anItem : [`NSObject] Objc.t ) (aMenu : [`NSMenu] Objc.t) =
    let sel, args = (
      Objc.arg aMenu "setSubmenu" make_pointer_from_object
      ++ Objc.arg anItem "forItem" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method itemArray =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "itemArray")[])
       : [`NSArray] Objc.id))
  method numberOfItems =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfItems")[])
       : int)
  method indexOfItem (index : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfItem:")
      [make_pointer_from_object index]) : int)
  method indexOfItemWithTitle (aTitle : [`NSString] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfItemWithTitle:")
      [make_pointer_from_object aTitle]) : int)
  method indexOfItemWithTag (aTag : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfItemWithTag:")
      [make_int aTag]) : int)
  method indexOfItemWithRepresentedObject (_object : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfItemWithRepresentedObject:")
      [make_pointer_from_object _object]) : int)
  method indexOfItemWithSubmenu (submenu : [`NSMenu] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfItemWithSubmenu:")
      [make_pointer_from_object submenu]) : int)
  method indexOfItemWithTarget  ~andAction:(actionSelector : selector ) (target : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg target "indexOfItemWithTarget" make_pointer_from_object
      ++ Objc.arg actionSelector "andAction" make_selector
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method itemAtIndex (index : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "itemAtIndex:")
      [make_int index]) : [`NSObject] Objc.id)
  method itemWithTitle (aTitle : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "itemWithTitle:")
      [make_pointer_from_object aTitle]) : [`NSObject] Objc.id)
  method itemWithTag (tag : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "itemWithTag:")
      [make_int tag]) : [`NSObject] Objc.id)
  method setAutoenablesItems (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutoenablesItems:")
      [make_bool flag]) : unit)
  method autoenablesItems =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autoenablesItems")[])
       : bool)
  method performKeyEquivalent (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "performKeyEquivalent:")
      [make_pointer_from_object theEvent]) : bool)
  method update =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "update")[])
       : unit)
  method setMenuChangedMessagesEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenuChangedMessagesEnabled:")
      [make_bool flag]) : unit)
  method menuChangedMessagesEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "menuChangedMessagesEnabled")[])
       : bool)
  method itemChanged (item : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "itemChanged:")
      [make_pointer_from_object item]) : unit)
  method helpRequested (eventPtr : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "helpRequested:")
      [make_pointer_from_object eventPtr]) : unit)
  method setMenuRepresentation (menuRep : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenuRepresentation:")
      [make_pointer_from_object menuRep]) : unit)
  method menuRepresentation =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menuRepresentation")[])
       : [`NSObject] Objc.id)
  method setContextMenuRepresentation (menuRep : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContextMenuRepresentation:")
      [make_pointer_from_object menuRep]) : unit)
  method contextMenuRepresentation =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "contextMenuRepresentation")[])
       : [`NSObject] Objc.id)
  method setTearOffMenuRepresentation (menuRep : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTearOffMenuRepresentation:")
      [make_pointer_from_object menuRep]) : unit)
  method tearOffMenuRepresentation =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tearOffMenuRepresentation")[])
       : [`NSObject] Objc.id)
  method isTornOff =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isTornOff")[])
       : bool)
  method attachedMenu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attachedMenu")[])
       : [`NSMenu] Objc.id))
  method isAttached =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAttached")[])
       : bool)
  method sizeToFit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeToFit")[])
       : unit)
(*  UNSUPPORTED
  method locationForSubmenu (aSubmenu : [`NSMenu] Objc.t) =
    ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported self#repr (Selector.find "locationForSubmenu:")
      [make_pointer_from_object aSubmenu]) : (*NSPoint*) unsupported)

*)
  method performActionForItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performActionForItemAtIndex:")
      [make_int index]) : unit)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method menuBarHeight =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "menuBarHeight")[])
       : float)
end
