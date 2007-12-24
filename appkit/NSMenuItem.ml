(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSUserInterfaceValidation


external init : unit -> unit = "caml_init_NSMenuItem"
let _ = init()
let make_NSObject_of_NSMenuItem (o : [`NSMenuItem] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSMenuItem *)
let class_NSMenuItem = object
   val repr = Classes.find "NSMenuItem"
   method _new = (Objc.objcnew repr : [`NSMenuItem] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMenuItem] nativeNSObject)
   method setUsesUserKeyEquivalents (flag : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setUsesUserKeyEquivalents:")[make_bool flag]) : [`NSMenuItem] Objc.nativeNSObject)
   method usesUserKeyEquivalents =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "usesUserKeyEquivalents:")[]) : [`NSMenuItem] Objc.nativeNSObject)
   method separatorItem =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "separatorItem:")[]) : [`NSMenuItem] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMenuItem *)
class native_NSMenuItem = fun (o : [`NSMenuItem] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSMenuItem o) as super
   method initWithTitle  ~action:(aSelector : selector ) ~keyEquivalent:(charCode : [`NSString] Objc.t ) (aString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aString "initWithTitle" make_pointer_from_object
       ++ Objc.arg aSelector "action" make_selector
       ++ Objc.arg charCode "keyEquivalent" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method setMenu (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMenu:")[make_pointer_from_object menu]) : unit)
   method menu =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method hasSubmenu =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasSubmenu:")[]) : bool)
   method setSubmenu (submenu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSubmenu:")[make_pointer_from_object submenu]) : unit)
   method submenu =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "submenu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setAttributedTitle (string : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAttributedTitle:")[make_pointer_from_object string]) : unit)
   method attributedTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attributedTitle:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method isSeparatorItem =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSeparatorItem:")[]) : bool)
   method setKeyEquivalent (aKeyEquivalent : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setKeyEquivalent:")[make_pointer_from_object aKeyEquivalent]) : unit)
   method keyEquivalent =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keyEquivalent:")[]) : [`NSString] Objc.nativeNSObject)
   method setKeyEquivalentModifierMask (mask : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setKeyEquivalentModifierMask:")[make_int mask]) : unit)
   method keyEquivalentModifierMask =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "keyEquivalentModifierMask:")[]) : int)
   method userKeyEquivalent =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "userKeyEquivalent:")[]) : [`NSString] Objc.nativeNSObject)
   method setMnemonicLocation (location : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMnemonicLocation:")[make_int location]) : unit)
   method mnemonicLocation =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "mnemonicLocation:")[]) : int)
   method mnemonic =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "mnemonic:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleWithMnemonic:")[make_pointer_from_object stringWithAmpersand]) : unit)
   method setImage (menuImage : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImage:")[make_pointer_from_object menuImage]) : unit)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method setState (state : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setState:")[make_int state]) : unit)
   method state =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "state:")[]) : int)
   method setOnStateImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOnStateImage:")[make_pointer_from_object image]) : unit)
   method onStateImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "onStateImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method setOffStateImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOffStateImage:")[make_pointer_from_object image]) : unit)
   method offStateImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "offStateImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method setMixedStateImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMixedStateImage:")[make_pointer_from_object image]) : unit)
   method mixedStateImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "mixedStateImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method setEnabled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEnabled:")[make_bool flag]) : unit)
   method isEnabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEnabled:")[]) : bool)
   method setAlternate (isAlternate : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAlternate:")[make_bool isAlternate]) : unit)
   method isAlternate =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isAlternate:")[]) : bool)
   method setIndentationLevel (indentationLevel : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIndentationLevel:")[make_int indentationLevel]) : unit)
   method indentationLevel =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indentationLevel:")[]) : int)
   method setTarget (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTarget:")[make_pointer_from_object anObject]) : unit)
   method target =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "target:")[]) : [`NSObject] Objc.nativeNSObject)
   method setAction (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAction:")[make_selector aSelector]) : unit)
   method action =
     (get_selector (Objc.invoke Objc.tag_selector repr (Selector.find "action:")[]) : selector)
   method setTag (anInt : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTag:")[make_int anInt]) : unit)
   method tag =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "tag:")[]) : int)
   method setRepresentedObject (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRepresentedObject:")[make_pointer_from_object anObject]) : unit)
   method representedObject =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "representedObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method setToolTip (toolTip : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setToolTip:")[make_pointer_from_object toolTip]) : unit)
   method toolTip =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolTip:")[]) : [`NSString] Objc.nativeNSObject)
end
