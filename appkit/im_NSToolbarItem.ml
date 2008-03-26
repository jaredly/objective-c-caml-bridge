(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSToolbarItem *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithItemIdentifier (itemIdentifier : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithItemIdentifier:")
      [make_pointer_from_object itemIdentifier]) : [`NSObject] Objc.id)
  method itemIdentifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "itemIdentifier")[])
       : [`NSString] Objc.id))
  method toolbar =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toolbar")[])
       : [`NSToolbar] Objc.id))
  method setLabel (label : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLabel:")
      [make_pointer_from_object label]) : unit)
  method label =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "label")[])
       : [`NSString] Objc.id))
  method setPaletteLabel (paletteLabel : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPaletteLabel:")
      [make_pointer_from_object paletteLabel]) : unit)
  method paletteLabel =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "paletteLabel")[])
       : [`NSString] Objc.id))
  method setToolTip (toolTip : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setToolTip:")
      [make_pointer_from_object toolTip]) : unit)
  method toolTip =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toolTip")[])
       : [`NSString] Objc.id))
  method setMenuFormRepresentation (menuItem : [`NSMenuItem] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenuFormRepresentation:")
      [make_pointer_from_object menuItem]) : unit)
  method menuFormRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menuFormRepresentation")[])
       : [`NSMenuItem] Objc.id))
  method setTag (tag : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTag:")
      [make_int tag]) : unit)
  method tag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tag")[])
       : int)
  method setTarget (target : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTarget:")
      [make_pointer_from_object target]) : unit)
  method target =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "target")[])
       : [`NSObject] Objc.id)
  method setAction (action : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAction:")
      [make_selector action]) : unit)
  method action =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "action")[])
       : selector)
  method setEnabled (enabled : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEnabled:")
      [make_bool enabled]) : unit)
  method isEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEnabled")[])
       : bool)
  method setImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object image]) : unit)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method setView (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setView:")
      [make_pointer_from_object view]) : unit)
  method view =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "view")[])
       : [`NSView] Objc.id))
  method setMinSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinSize:")
      [make_size size]) : unit)
  method minSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "minSize")[])
       : NSSize.t)
  method setMaxSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxSize:")
      [make_size size]) : unit)
  method maxSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "maxSize")[])
       : NSSize.t)
  method setVisibilityPriority (visibilityPriority : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVisibilityPriority:")
      [make_int visibilityPriority]) : unit)
  method visibilityPriority =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "visibilityPriority")[])
       : int)
  method validate =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "validate")[])
       : unit)
  method setAutovalidates (resistance : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutovalidates:")
      [make_bool resistance]) : unit)
  method autovalidates =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autovalidates")[])
       : bool)
  method allowsDuplicatesInToolbar =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsDuplicatesInToolbar")[])
       : bool)
end
