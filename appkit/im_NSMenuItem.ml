(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMenuItem *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithTitle_action_keyEquivalent  (aString : [`NSString] Objc.t) (aSelector : selector) (charCode : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aString "initWithTitle" make_pointer_from_object
      ++ Objc.arg aSelector "action" make_selector
      ++ Objc.arg charCode "keyEquivalent" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setMenu (menu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenu:")
      [make_pointer_from_object menu]) : unit)
  method menu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menu")[])
       : [`NSMenu] Objc.id))
  method hasSubmenu =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasSubmenu")[])
       : bool)
  method setSubmenu (submenu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSubmenu:")
      [make_pointer_from_object submenu]) : unit)
  method submenu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "submenu")[])
       : [`NSMenu] Objc.id))
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setAttributedTitle (string : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedTitle:")
      [make_pointer_from_object string]) : unit)
  method attributedTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedTitle")[])
       : [`NSAttributedString] Objc.id))
  method isSeparatorItem =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSeparatorItem")[])
       : bool)
  method setKeyEquivalent (aKeyEquivalent : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyEquivalent:")
      [make_pointer_from_object aKeyEquivalent]) : unit)
  method keyEquivalent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyEquivalent")[])
       : [`NSString] Objc.id))
  method setKeyEquivalentModifierMask (mask : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyEquivalentModifierMask:")
      [make_int mask]) : unit)
  method keyEquivalentModifierMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "keyEquivalentModifierMask")[])
       : int)
  method userKeyEquivalent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "userKeyEquivalent")[])
       : [`NSString] Objc.id))
  method setMnemonicLocation (location : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMnemonicLocation:")
      [make_int location]) : unit)
  method mnemonicLocation =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "mnemonicLocation")[])
       : int)
  method mnemonic =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mnemonic")[])
       : [`NSString] Objc.id))
  method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleWithMnemonic:")
      [make_pointer_from_object stringWithAmpersand]) : unit)
  method setImage (menuImage : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object menuImage]) : unit)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method setState (state : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setState:")
      [make_int state]) : unit)
  method state =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "state")[])
       : int)
  method setOnStateImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOnStateImage:")
      [make_pointer_from_object image]) : unit)
  method onStateImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "onStateImage")[])
       : [`NSImage] Objc.id))
  method setOffStateImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOffStateImage:")
      [make_pointer_from_object image]) : unit)
  method offStateImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "offStateImage")[])
       : [`NSImage] Objc.id))
  method setMixedStateImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMixedStateImage:")
      [make_pointer_from_object image]) : unit)
  method mixedStateImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mixedStateImage")[])
       : [`NSImage] Objc.id))
  method setEnabled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEnabled:")
      [make_bool flag]) : unit)
  method isEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEnabled")[])
       : bool)
  method setAlternate (isAlternate : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternate:")
      [make_bool isAlternate]) : unit)
  method isAlternate =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAlternate")[])
       : bool)
  method setIndentationLevel (indentationLevel : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIndentationLevel:")
      [make_int indentationLevel]) : unit)
  method indentationLevel =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indentationLevel")[])
       : int)
  method setTarget (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTarget:")
      [make_pointer_from_object anObject]) : unit)
  method target =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "target")[])
       : [`NSObject] Objc.id)
  method setAction (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAction:")
      [make_selector aSelector]) : unit)
  method action =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "action")[])
       : selector)
  method setTag (anInt : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTag:")
      [make_int anInt]) : unit)
  method tag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tag")[])
       : int)
  method setRepresentedObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRepresentedObject:")
      [make_pointer_from_object anObject]) : unit)
  method representedObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "representedObject")[])
       : [`NSObject] Objc.id)
  method setToolTip (toolTip : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setToolTip:")
      [make_pointer_from_object toolTip]) : unit)
  method toolTip =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toolTip")[])
       : [`NSString] Objc.id))
end
