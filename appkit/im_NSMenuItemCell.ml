(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMenuItemCell *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
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
  method stateImageRectForBounds (cellFrame : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "stateImageRectForBounds:")
      [make_rect cellFrame]) : NSRect.t)
  method imageRectForBounds (cellFrame : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "imageRectForBounds:")
      [make_rect cellFrame]) : NSRect.t)
  method titleRectForBounds (cellFrame : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "titleRectForBounds:")
      [make_rect cellFrame]) : NSRect.t)
  method keyEquivalentRectForBounds (cellFrame : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "keyEquivalentRectForBounds:")
      [make_rect cellFrame]) : NSRect.t)
  method drawSeparatorItemWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "drawSeparatorItemWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawStateImageWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "drawStateImageWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawImageWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "drawImageWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawTitleWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "drawTitleWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawKeyEquivalentWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "drawKeyEquivalentWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawBorderAndBackgroundWithFrame_inView  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg cellFrame "drawBorderAndBackgroundWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method tag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tag")[])
       : int)
end
