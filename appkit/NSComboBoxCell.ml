open Objc
open NSTextFieldCell


external init : unit -> unit = "caml_init_NSComboBoxCell"
let _ = init()
(* Class object for NSComboBoxCell *)
let class_NSComboBoxCell = object
   val o = Classes.find "NSComboBoxCell"
   method _new = (Objc.objcnew o : [`NSComboBoxCell] nativeNSObject)
end
(* Encapsulation for native instance of NSComboBoxCell *)
class native_NSComboBoxCell = fun (o : [`NSComboBoxCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method hasVerticalScroller =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasVerticalScroller:")[]) : bool)
   method setHasVerticalScroller (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHasVerticalScroller:")[make_bool flag]) : unit)
(*  UNSUPPORTED
   method intercellSpacing =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "intercellSpacing:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setIntercellSpacing (aSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIntercellSpacing:")[(*NSSize*) unsupported aSize]) : unit)

*)
   method itemHeight =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "itemHeight:")[]) : float)
   method setItemHeight (itemHeight : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setItemHeight:")[make_float itemHeight]) : unit)
   method numberOfVisibleItems =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfVisibleItems:")[]) : int)
   method setNumberOfVisibleItems (visibleItems : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNumberOfVisibleItems:")[make_int visibleItems]) : unit)
   method setButtonBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setButtonBordered:")[make_bool flag]) : unit)
   method isButtonBordered =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isButtonBordered:")[]) : bool)
   method reloadData =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "reloadData:")[]) : unit)
   method noteNumberOfItemsChanged =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "noteNumberOfItemsChanged:")[]) : unit)
   method setUsesDataSource (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setUsesDataSource:")[make_bool flag]) : unit)
   method usesDataSource =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "usesDataSource:")[]) : bool)
   method scrollItemAtIndexToTop (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollItemAtIndexToTop:")[make_int index]) : unit)
   method scrollItemAtIndexToVisible (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollItemAtIndexToVisible:")[make_int index]) : unit)
   method selectItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectItemAtIndex:")[make_int index]) : unit)
   method deselectItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deselectItemAtIndex:")[make_int index]) : unit)
   method indexOfSelectedItem =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfSelectedItem:")[]) : int)
   method numberOfItems =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfItems:")[]) : int)
   method completes =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "completes:")[]) : bool)
   method setCompletes (completes : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCompletes:")[make_bool completes]) : unit)
   method completedString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "completedString:")[make_pointer_from_object string]) : [`NSString] Objc.nativeNSObject)
   method dataSource =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dataSource:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDataSource (aSource : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDataSource:")[make_pointer_from_object aSource]) : unit)
   method addItemWithObjectValue (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addItemWithObjectValue:")[make_pointer_from_object _object]) : unit)
   method addItemsWithObjectValues (objects : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addItemsWithObjectValues:")[make_pointer_from_object objects]) : unit)
   method insertItemWithObjectValue  ~atIndex:(index : int ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "insertItemWithObjectValue" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeItemWithObjectValue (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeItemWithObjectValue:")[make_pointer_from_object _object]) : unit)
   method removeItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeItemAtIndex:")[make_int index]) : unit)
   method removeAllItems =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeAllItems:")[]) : unit)
   method selectItemWithObjectValue (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectItemWithObjectValue:")[make_pointer_from_object _object]) : unit)
   method itemObjectValueAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "itemObjectValueAtIndex:")[make_int index]) : [`NSObject] Objc.nativeNSObject)
   method objectValueOfSelectedItem =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectValueOfSelectedItem:")[]) : [`NSObject] Objc.nativeNSObject)
   method indexOfItemWithObjectValue (_object : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfItemWithObjectValue:")[make_pointer_from_object _object]) : int)
   method objectValues =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "objectValues:")[]) : [`NSArray] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSComboBoxCellDataSource *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSComboBoxCellDataSource *)
   method numberOfItemsInComboBoxCell (comboBoxCell : [`NSComboBoxCell] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfItemsInComboBoxCell:")[make_pointer_from_object comboBoxCell]) : int)
   method comboBoxCell  ?objectValueForItemAtIndex:(index : int option) (aComboBoxCell : [`NSComboBoxCell] Objc.t) =
     let sel, args = (
       Objc.arg aComboBoxCell "comboBoxCell" make_pointer_from_object
       ++ Objc.opt_arg index "objectValueForItemAtIndex" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector comboBoxCell:indexOfItemWithStringValue *)
   (* skipping selector comboBoxCell:completedString *)
end
