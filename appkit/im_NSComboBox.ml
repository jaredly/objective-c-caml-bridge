(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSComboBox *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method hasVerticalScroller =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasVerticalScroller")[])
       : bool)
  method setHasVerticalScroller (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasVerticalScroller:")
      [make_bool flag]) : unit)
  method intercellSpacing =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "intercellSpacing")[])
       : NSSize.t)
  method setIntercellSpacing (aSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIntercellSpacing:")
      [make_size aSize]) : unit)
  method itemHeight =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "itemHeight")[])
       : float)
  method setItemHeight (itemHeight : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setItemHeight:")
      [make_float itemHeight]) : unit)
  method numberOfVisibleItems =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfVisibleItems")[])
       : int)
  method setNumberOfVisibleItems (visibleItems : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNumberOfVisibleItems:")
      [make_int visibleItems]) : unit)
  method setButtonBordered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setButtonBordered:")
      [make_bool flag]) : unit)
  method isButtonBordered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isButtonBordered")[])
       : bool)
  method reloadData =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reloadData")[])
       : unit)
  method noteNumberOfItemsChanged =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteNumberOfItemsChanged")[])
       : unit)
  method setUsesDataSource (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUsesDataSource:")
      [make_bool flag]) : unit)
  method usesDataSource =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "usesDataSource")[])
       : bool)
  method scrollItemAtIndexToTop (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollItemAtIndexToTop:")
      [make_int index]) : unit)
  method scrollItemAtIndexToVisible (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollItemAtIndexToVisible:")
      [make_int index]) : unit)
  method selectItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectItemAtIndex:")
      [make_int index]) : unit)
  method deselectItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deselectItemAtIndex:")
      [make_int index]) : unit)
  method indexOfSelectedItem =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfSelectedItem")[])
       : int)
  method numberOfItems =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfItems")[])
       : int)
  method completes =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "completes")[])
       : bool)
  method setCompletes (completes : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCompletes:")
      [make_bool completes]) : unit)
  method dataSource =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataSource")[])
       : [`NSObject] Objc.id)
  method setDataSource (aSource : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDataSource:")
      [make_pointer_from_object aSource]) : unit)
  method addItemWithObjectValue (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addItemWithObjectValue:")
      [make_pointer_from_object _object]) : unit)
  method addItemsWithObjectValues (objects : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addItemsWithObjectValues:")
      [make_pointer_from_object objects]) : unit)
  method insertItemWithObjectValue_atIndex  (_object : [`NSObject] Objc.t) (index : int) =
    let sel, args = (
      Objc.arg _object "insertItemWithObjectValue" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeItemWithObjectValue (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeItemWithObjectValue:")
      [make_pointer_from_object _object]) : unit)
  method removeItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeItemAtIndex:")
      [make_int index]) : unit)
  method removeAllItems =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllItems")[])
       : unit)
  method selectItemWithObjectValue (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectItemWithObjectValue:")
      [make_pointer_from_object _object]) : unit)
  method itemObjectValueAtIndex (index : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "itemObjectValueAtIndex:")
      [make_int index]) : [`NSObject] Objc.id)
  method objectValueOfSelectedItem =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectValueOfSelectedItem")[])
       : [`NSObject] Objc.id)
  method indexOfItemWithObjectValue (_object : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfItemWithObjectValue:")
      [make_pointer_from_object _object]) : int)
  method objectValues =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectValues")[])
       : [`NSArray] Objc.id))
end
