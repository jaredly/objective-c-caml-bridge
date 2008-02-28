(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSToolbar *)
class virtual methods = object (self)
  method virtual repr : [`NSToolbar] Objc.id
  method initWithIdentifier (identifier : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithIdentifier:")
      [make_pointer_from_object identifier]) : [`NSObject] Objc.id)
  method insertItemWithItemIdentifier  ~atIndex:(index : int ) (itemIdentifier : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg itemIdentifier "insertItemWithItemIdentifier" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeItemAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeItemAtIndex:")
      [make_int index]) : unit)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setVisible (shown : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVisible:")
      [make_bool shown]) : unit)
  method isVisible =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isVisible")[])
       : bool)
  method runCustomizationPalette (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "runCustomizationPalette:")
      [make_pointer_from_object sender]) : unit)
  method customizationPaletteIsRunning =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "customizationPaletteIsRunning")[])
       : bool)
  method setDisplayMode (displayMode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDisplayMode:")
      [make_int displayMode]) : unit)
  method displayMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "displayMode")[])
       : int)
  method setSelectedItemIdentifier (itemIdentifier : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSelectedItemIdentifier:")
      [make_pointer_from_object itemIdentifier]) : unit)
  method selectedItemIdentifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedItemIdentifier")[])
       : [`NSString] Objc.id))
  method setSizeMode (sizeMode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSizeMode:")
      [make_int sizeMode]) : unit)
  method sizeMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "sizeMode")[])
       : int)
  method setShowsBaselineSeparator (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsBaselineSeparator:")
      [make_bool flag]) : unit)
  method showsBaselineSeparator =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsBaselineSeparator")[])
       : bool)
  method setAllowsUserCustomization (allowCustomization : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsUserCustomization:")
      [make_bool allowCustomization]) : unit)
  method allowsUserCustomization =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsUserCustomization")[])
       : bool)
  method identifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "identifier")[])
       : [`NSString] Objc.id))
  method items =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "items")[])
       : [`NSArray] Objc.id))
  method visibleItems =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "visibleItems")[])
       : [`NSArray] Objc.id))
  method setAutosavesConfiguration (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutosavesConfiguration:")
      [make_bool flag]) : unit)
  method autosavesConfiguration =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autosavesConfiguration")[])
       : bool)
  method setConfigurationFromDictionary (configDict : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setConfigurationFromDictionary:")
      [make_pointer_from_object configDict]) : unit)
  method configurationDictionary =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "configurationDictionary")[])
       : [`NSDictionary] Objc.id))
  method validateVisibleItems =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "validateVisibleItems")[])
       : unit)
end
