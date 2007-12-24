(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject


external init : unit -> unit = "caml_init_NSToolbar"
let _ = init()
let make_NSObject_of_NSToolbar (o : [`NSToolbar] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSToolbar *)
let class_NSToolbar = object
   val repr = Classes.find "NSToolbar"
   method _new = (Objc.objcnew repr : [`NSToolbar] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSToolbar] nativeNSObject)
end
(* Encapsulation for native instance of NSToolbar *)
class native_NSToolbar = fun (o : [`NSToolbar] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSToolbar o) as super
   method initWithIdentifier (identifier : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithIdentifier:")[make_pointer_from_object identifier]) : [`NSObject] Objc.nativeNSObject)
   method insertItemWithItemIdentifier  ~atIndex:(index : int ) (itemIdentifier : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg itemIdentifier "insertItemWithItemIdentifier" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeItemAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeItemAtIndex:")[make_int index]) : unit)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setVisible (shown : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVisible:")[make_bool shown]) : unit)
   method isVisible =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isVisible:")[]) : bool)
   method runCustomizationPalette (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "runCustomizationPalette:")[make_pointer_from_object sender]) : unit)
   method customizationPaletteIsRunning =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "customizationPaletteIsRunning:")[]) : bool)
   method setDisplayMode (displayMode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDisplayMode:")[make_int displayMode]) : unit)
   method displayMode =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "displayMode:")[]) : int)
   method setSelectedItemIdentifier (itemIdentifier : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSelectedItemIdentifier:")[make_pointer_from_object itemIdentifier]) : unit)
   method selectedItemIdentifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "selectedItemIdentifier:")[]) : [`NSString] Objc.nativeNSObject)
   method setSizeMode (sizeMode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSizeMode:")[make_int sizeMode]) : unit)
   method sizeMode =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "sizeMode:")[]) : int)
   method setShowsBaselineSeparator (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShowsBaselineSeparator:")[make_bool flag]) : unit)
   method showsBaselineSeparator =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "showsBaselineSeparator:")[]) : bool)
   method setAllowsUserCustomization (allowCustomization : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsUserCustomization:")[make_bool allowCustomization]) : unit)
   method allowsUserCustomization =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsUserCustomization:")[]) : bool)
   method identifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "identifier:")[]) : [`NSString] Objc.nativeNSObject)
   method items =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "items:")[]) : [`NSArray] Objc.nativeNSObject)
   method visibleItems =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "visibleItems:")[]) : [`NSArray] Objc.nativeNSObject)
   method setAutosavesConfiguration (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutosavesConfiguration:")[make_bool flag]) : unit)
   method autosavesConfiguration =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autosavesConfiguration:")[]) : bool)
   method setConfigurationFromDictionary (configDict : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setConfigurationFromDictionary:")[make_pointer_from_object configDict]) : unit)
   method configurationDictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "configurationDictionary:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method validateVisibleItems =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "validateVisibleItems:")[]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSToolbarNotifications *)
(* methods for category NSToolbarDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSToolbarNotifications *)
   method toolbarWillAddItem (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "toolbarWillAddItem:")[make_pointer_from_object notification]) : unit)
   method toolbarDidRemoveItem (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "toolbarDidRemoveItem:")[make_pointer_from_object notification]) : unit)
(* methods for category NSToolbarDelegate *)
   method toolbar  ~itemForItemIdentifier:(itemIdentifier : [`NSString] Objc.t ) ~willBeInsertedIntoToolbar:(flag : bool ) (toolbar : [`NSToolbar] Objc.t) =
     let sel, args = (
       Objc.arg toolbar "toolbar" make_pointer_from_object
       ++ Objc.arg itemIdentifier "itemForItemIdentifier" make_pointer_from_object
       ++ Objc.arg flag "willBeInsertedIntoToolbar" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSToolbarItem] Objc.nativeNSObject)
   method toolbarDefaultItemIdentifiers (toolbar : [`NSToolbar] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolbarDefaultItemIdentifiers:")[make_pointer_from_object toolbar]) : [`NSArray] Objc.nativeNSObject)
   method toolbarAllowedItemIdentifiers (toolbar : [`NSToolbar] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolbarAllowedItemIdentifiers:")[make_pointer_from_object toolbar]) : [`NSArray] Objc.nativeNSObject)
   method toolbarSelectableItemIdentifiers (toolbar : [`NSToolbar] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolbarSelectableItemIdentifiers:")[make_pointer_from_object toolbar]) : [`NSArray] Objc.nativeNSObject)
end
