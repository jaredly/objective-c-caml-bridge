(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSTextField


external init : unit -> unit = "caml_init_NSComboBox"
let _ = init()
let make_NSTextField_of_NSComboBox (o : [`NSComboBox] nativeNSObject) = (Obj.magic o : [`NSTextField] nativeNSObject)
(* Class object for NSComboBox *)
let class_NSComboBox = object
   val repr = Classes.find "NSComboBox"
   method _new = (Objc.objcnew repr : [`NSComboBox] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSComboBox] nativeNSObject)
end
(* Encapsulation for native instance of NSComboBox *)
class native_NSComboBox = fun (o : [`NSComboBox] nativeNSObject) -> object (self)
   inherit native_NSTextField (make_NSTextField_of_NSComboBox o) as super
   method hasVerticalScroller =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasVerticalScroller:")[]) : bool)
   method setHasVerticalScroller (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHasVerticalScroller:")[make_bool flag]) : unit)
(*  UNSUPPORTED
   method intercellSpacing =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "intercellSpacing:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setIntercellSpacing (aSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIntercellSpacing:")[(*NSSize*) unsupported aSize]) : unit)

*)
   method itemHeight =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "itemHeight:")[]) : float)
   method setItemHeight (itemHeight : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setItemHeight:")[make_float itemHeight]) : unit)
   method numberOfVisibleItems =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfVisibleItems:")[]) : int)
   method setNumberOfVisibleItems (visibleItems : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNumberOfVisibleItems:")[make_int visibleItems]) : unit)
   method setButtonBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setButtonBordered:")[make_bool flag]) : unit)
   method isButtonBordered =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isButtonBordered:")[]) : bool)
   method reloadData =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "reloadData:")[]) : unit)
   method noteNumberOfItemsChanged =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "noteNumberOfItemsChanged:")[]) : unit)
   method setUsesDataSource (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUsesDataSource:")[make_bool flag]) : unit)
   method usesDataSource =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "usesDataSource:")[]) : bool)
   method scrollItemAtIndexToTop (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scrollItemAtIndexToTop:")[make_int index]) : unit)
   method scrollItemAtIndexToVisible (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scrollItemAtIndexToVisible:")[make_int index]) : unit)
   method selectItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectItemAtIndex:")[make_int index]) : unit)
   method deselectItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deselectItemAtIndex:")[make_int index]) : unit)
   method indexOfSelectedItem =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfSelectedItem:")[]) : int)
   method numberOfItems =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfItems:")[]) : int)
   method completes =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "completes:")[]) : bool)
   method setCompletes (completes : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCompletes:")[make_bool completes]) : unit)
   method dataSource =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataSource:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDataSource (aSource : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDataSource:")[make_pointer_from_object aSource]) : unit)
   method addItemWithObjectValue (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addItemWithObjectValue:")[make_pointer_from_object _object]) : unit)
   method addItemsWithObjectValues (objects : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addItemsWithObjectValues:")[make_pointer_from_object objects]) : unit)
   method insertItemWithObjectValue  ~atIndex:(index : int ) (_object : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg _object "insertItemWithObjectValue" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeItemWithObjectValue (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeItemWithObjectValue:")[make_pointer_from_object _object]) : unit)
   method removeItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeItemAtIndex:")[make_int index]) : unit)
   method removeAllItems =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeAllItems:")[]) : unit)
   method selectItemWithObjectValue (_object : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectItemWithObjectValue:")[make_pointer_from_object _object]) : unit)
   method itemObjectValueAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "itemObjectValueAtIndex:")[make_int index]) : [`NSObject] Objc.nativeNSObject)
   method objectValueOfSelectedItem =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectValueOfSelectedItem:")[]) : [`NSObject] Objc.nativeNSObject)
   method indexOfItemWithObjectValue (_object : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfItemWithObjectValue:")[make_pointer_from_object _object]) : int)
   method objectValues =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectValues:")[]) : [`NSArray] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSComboBoxNotifications *)
(* methods for category NSComboBoxDataSource *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSComboBoxNotifications *)
   method comboBoxWillPopUp (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "comboBoxWillPopUp:")[make_pointer_from_object notification]) : unit)
   method comboBoxWillDismiss (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "comboBoxWillDismiss:")[make_pointer_from_object notification]) : unit)
   method comboBoxSelectionDidChange (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "comboBoxSelectionDidChange:")[make_pointer_from_object notification]) : unit)
   method comboBoxSelectionIsChanging (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "comboBoxSelectionIsChanging:")[make_pointer_from_object notification]) : unit)
(* methods for category NSComboBoxDataSource *)
   method numberOfItemsInComboBox (aComboBox : [`NSComboBox] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfItemsInComboBox:")[make_pointer_from_object aComboBox]) : int)
   method comboBox  ?objectValueForItemAtIndex:(index : int option) (aComboBox : [`NSComboBox] Objc.t) =
     let sel, args = (
       Objc.arg aComboBox "comboBox" make_pointer_from_object
       ++ Objc.opt_arg index "objectValueForItemAtIndex" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector comboBox:indexOfItemWithStringValue *)
   (* skipping selector comboBox:completedString *)
end
