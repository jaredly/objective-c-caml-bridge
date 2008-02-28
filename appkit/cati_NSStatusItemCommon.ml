(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStatusItemCommon of NSStatusItem *)
class virtual methods_NSStatusItem = object (self)
  method virtual repr : [`NSStatusItem] Objc.id
  method action =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "action")[])
       : selector)
  method setAction (action : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAction:")
      [make_selector action]) : unit)
  method doubleAction =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "doubleAction")[])
       : selector)
  method setDoubleAction (action : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDoubleAction:")
      [make_selector action]) : unit)
  method target =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "target")[])
       : [`NSObject] Objc.id)
  method setTarget (target : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTarget:")
      [make_pointer_from_object target]) : unit)
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (title : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object title]) : unit)
  method attributedTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedTitle")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedTitle (title : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedTitle:")
      [make_pointer_from_object title]) : unit)
  method image =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "image")[])
       : [`NSImage] Objc.id))
  method setImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setImage:")
      [make_pointer_from_object image]) : unit)
  method alternateImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "alternateImage")[])
       : [`NSImage] Objc.id))
  method setAlternateImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlternateImage:")
      [make_pointer_from_object image]) : unit)
  method menu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menu")[])
       : [`NSMenu] Objc.id))
  method setMenu (menu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenu:")
      [make_pointer_from_object menu]) : unit)
  method isEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEnabled")[])
       : bool)
  method setEnabled (enabled : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEnabled:")
      [make_bool enabled]) : unit)
  method toolTip =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toolTip")[])
       : [`NSString] Objc.id))
  method setToolTip (toolTip : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setToolTip:")
      [make_pointer_from_object toolTip]) : unit)
  method setHighlightMode (highlightMode : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHighlightMode:")
      [make_bool highlightMode]) : unit)
  method highlightMode =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "highlightMode")[])
       : bool)
  method sendActionOn (mask : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sendActionOn:")
      [make_int mask]) : unit)
  method popUpStatusItemMenu (menu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "popUpStatusItemMenu:")
      [make_pointer_from_object menu]) : unit)
(*  UNSUPPORTED
  method drawStatusBarBackgroundInRect  ~withHighlight:(highlight : bool ) (rect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg rect "drawStatusBarBackgroundInRect" (*NSRect*) unsupported
      ++ Objc.arg highlight "withHighlight" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
