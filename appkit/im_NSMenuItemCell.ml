(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMenuItemCell *)
class virtual methods = object (self)
  method virtual repr : [`NSMenuItemCell] Objc.id
  method setMenuItem (item : [`NSMenuItem] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenuItem:")
      [make_pointer_from_object item]) : unit)
  method menuItem =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menuItem")[])
       : [`NSMenuItem] Objc.id))
  method setMenuView (menuView : [`NSMenuView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMenuView:")
      [make_pointer_from_object menuView]) : unit)
  method menuView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menuView")[])
       : [`NSMenuView] Objc.id))
  method setHighlighted (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHighlighted:")
      [make_bool flag]) : unit)
  method isHighlighted =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isHighlighted")[])
       : bool)
  method setNeedsSizing (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsSizing:")
      [make_bool flag]) : unit)
  method needsSizing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "needsSizing")[])
       : bool)
  method calcSize =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "calcSize")[])
       : unit)
  method setNeedsDisplay (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsDisplay:")
      [make_bool flag]) : unit)
  method needsDisplay =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "needsDisplay")[])
       : bool)
  method stateImageWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "stateImageWidth")[])
       : float)
  method imageWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "imageWidth")[])
       : float)
  method titleWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "titleWidth")[])
       : float)
  method keyEquivalentWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "keyEquivalentWidth")[])
       : float)
(*  UNSUPPORTED
  method stateImageRectForBounds (cellFrame : (*NSRect*) unsupported) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "stateImageRectForBounds:")
      [(*NSRect*) unsupported cellFrame]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method imageRectForBounds (cellFrame : (*NSRect*) unsupported) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "imageRectForBounds:")
      [(*NSRect*) unsupported cellFrame]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method titleRectForBounds (cellFrame : (*NSRect*) unsupported) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "titleRectForBounds:")
      [(*NSRect*) unsupported cellFrame]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method keyEquivalentRectForBounds (cellFrame : (*NSRect*) unsupported) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "keyEquivalentRectForBounds:")
      [(*NSRect*) unsupported cellFrame]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method drawSeparatorItemWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (cellFrame : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg cellFrame "drawSeparatorItemWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawStateImageWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (cellFrame : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg cellFrame "drawStateImageWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawImageWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (cellFrame : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg cellFrame "drawImageWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawTitleWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (cellFrame : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg cellFrame "drawTitleWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawKeyEquivalentWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (cellFrame : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg cellFrame "drawKeyEquivalentWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawBorderAndBackgroundWithFrame  ~inView:(controlView : [`NSView] Objc.t ) (cellFrame : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg cellFrame "drawBorderAndBackgroundWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method tag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tag")[])
       : int)
end
