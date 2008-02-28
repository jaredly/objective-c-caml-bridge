(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSKeyboardUI of NSBox *)
class virtual methods_NSBox = object (self)
  method virtual repr : [`NSBox] Objc.id
  method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleWithMnemonic:")
      [make_pointer_from_object stringWithAmpersand]) : unit)
end
(* instance methods for category NSKeyboardUI of NSButton *)
class virtual methods_NSButton = object (self)
  method virtual repr : [`NSButton] Objc.id
  method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleWithMnemonic:")
      [make_pointer_from_object stringWithAmpersand]) : unit)
end
(* instance methods for category NSKeyboardUI of NSButtonCell *)
class virtual methods_NSButtonCell = object (self)
  method virtual repr : [`NSButtonCell] Objc.id
  method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleWithMnemonic:")
      [make_pointer_from_object stringWithAmpersand]) : unit)
  method setAlternateTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternateTitleWithMnemonic:")
      [make_pointer_from_object stringWithAmpersand]) : unit)
  method setAlternateMnemonicLocation (location : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternateMnemonicLocation:")
      [make_int location]) : unit)
  method alternateMnemonicLocation =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "alternateMnemonicLocation")[])
       : int)
  method alternateMnemonic =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "alternateMnemonic")[])
       : [`NSString] Objc.id))
end
(* instance methods for category NSKeyboardUI of NSCell *)
class virtual methods_NSCell = object (self)
  method virtual repr : [`NSCell] Objc.id
  method setRefusesFirstResponder (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRefusesFirstResponder:")
      [make_bool flag]) : unit)
  method refusesFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "refusesFirstResponder")[])
       : bool)
  method acceptsFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsFirstResponder")[])
       : bool)
  method setShowsFirstResponder (showFR : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsFirstResponder:")
      [make_bool showFR]) : unit)
  method showsFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsFirstResponder")[])
       : bool)
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
  method performClick (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performClick:")
      [make_pointer_from_object sender]) : unit)
(*  UNSUPPORTED
  method setFocusRingType (focusRingType : (*NSFocusRingType*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFocusRingType:")
      [(*NSFocusRingType*) unsupported focusRingType]) : unit)

*)
(*  UNSUPPORTED
  method focusRingType =
    ((*NSFocusRingType*) unsupported (Objc.invoke (*NSFocusRingType*) Objc.tag_unsupported self#repr (Selector.find "focusRingType")[])
       : (*NSFocusRingType*) unsupported)

*)
end
(* instance methods for category NSKeyboardUI of NSControl *)
class virtual methods_NSControl = object (self)
  method virtual repr : [`NSControl] Objc.id
  method performClick (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performClick:")
      [make_pointer_from_object sender]) : unit)
  method setRefusesFirstResponder (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRefusesFirstResponder:")
      [make_bool flag]) : unit)
  method refusesFirstResponder =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "refusesFirstResponder")[])
       : bool)
end
(* instance methods for category NSKeyboardUI of NSFormCell *)
class virtual methods_NSFormCell = object (self)
  method virtual repr : [`NSFormCell] Objc.id
  method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleWithMnemonic:")
      [make_pointer_from_object stringWithAmpersand]) : unit)
end
(* instance methods for category NSKeyboardUI of NSMatrix *)
class virtual methods_NSMatrix = object (self)
  method virtual repr : [`NSMatrix] Objc.id
  method setTabKeyTraversesCells (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTabKeyTraversesCells:")
      [make_bool flag]) : unit)
  method tabKeyTraversesCells =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "tabKeyTraversesCells")[])
       : bool)
  method setKeyCell (keyCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyCell:")
      [make_pointer_from_object keyCell]) : unit)
  method keyCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyCell")[])
       : [`NSObject] Objc.id)
end
(* instance methods for category NSKeyboardUI of NSResponder *)
class virtual methods_NSResponder = object (self)
  method virtual repr : [`NSResponder] Objc.id
  method performMnemonic (theString : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "performMnemonic:")
      [make_pointer_from_object theString]) : bool)
end
(* instance methods for category NSKeyboardUI of NSTextField *)
class virtual methods_NSTextField = object (self)
  method virtual repr : [`NSTextField] Objc.id
  method setTitleWithMnemonic (stringWithAmpersand : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleWithMnemonic:")
      [make_pointer_from_object stringWithAmpersand]) : unit)
end
(* instance methods for category NSKeyboardUI of NSView *)
class virtual methods_NSView = object (self)
  method virtual repr : [`NSView] Objc.id
  method performMnemonic (theString : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "performMnemonic:")
      [make_pointer_from_object theString]) : bool)
  method setNextKeyView (next : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNextKeyView:")
      [make_pointer_from_object next]) : unit)
  method nextKeyView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nextKeyView")[])
       : [`NSView] Objc.id))
  method previousKeyView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "previousKeyView")[])
       : [`NSView] Objc.id))
  method nextValidKeyView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nextValidKeyView")[])
       : [`NSView] Objc.id))
  method previousValidKeyView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "previousValidKeyView")[])
       : [`NSView] Objc.id))
  method canBecomeKeyView =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canBecomeKeyView")[])
       : bool)
(*  UNSUPPORTED
  method setKeyboardFocusRingNeedsDisplayInRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setKeyboardFocusRingNeedsDisplayInRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
  method setFocusRingType (focusRingType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFocusRingType:")
      [make_int focusRingType]) : unit)
  method focusRingType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "focusRingType")[])
       : int)
end
(* instance methods for category NSKeyboardUI of NSWindow *)
class virtual methods_NSWindow = object (self)
  method virtual repr : [`NSWindow] Objc.id
  method setInitialFirstResponder (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInitialFirstResponder:")
      [make_pointer_from_object view]) : unit)
  method initialFirstResponder =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initialFirstResponder")[])
       : [`NSView] Objc.id))
  method selectNextKeyView (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectNextKeyView:")
      [make_pointer_from_object sender]) : unit)
  method selectPreviousKeyView (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectPreviousKeyView:")
      [make_pointer_from_object sender]) : unit)
  method selectKeyViewFollowingView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectKeyViewFollowingView:")
      [make_pointer_from_object aView]) : unit)
  method selectKeyViewPrecedingView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectKeyViewPrecedingView:")
      [make_pointer_from_object aView]) : unit)
  method keyViewSelectionDirection =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "keyViewSelectionDirection")[])
       : int)
  method setDefaultButtonCell (defButt : [`NSButtonCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDefaultButtonCell:")
      [make_pointer_from_object defButt]) : unit)
  method defaultButtonCell =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "defaultButtonCell")[])
       : [`NSButtonCell] Objc.id))
  method disableKeyEquivalentForDefaultButtonCell =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "disableKeyEquivalentForDefaultButtonCell")[])
       : unit)
  method enableKeyEquivalentForDefaultButtonCell =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "enableKeyEquivalentForDefaultButtonCell")[])
       : unit)
  method setAutorecalculatesKeyViewLoop (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutorecalculatesKeyViewLoop:")
      [make_bool flag]) : unit)
  method autorecalculatesKeyViewLoop =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autorecalculatesKeyViewLoop")[])
       : bool)
  method recalculateKeyViewLoop =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "recalculateKeyViewLoop")[])
       : unit)
end
