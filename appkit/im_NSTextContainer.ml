(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextContainer *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContainerSize (size : NSSize.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContainerSize:")
      [make_size size]) : [`NSObject] Objc.id)
  method layoutManager =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "layoutManager")[])
       : [`NSLayoutManager] Objc.id))
  method setLayoutManager (layoutManager : [`NSLayoutManager] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLayoutManager:")
      [make_pointer_from_object layoutManager]) : unit)
  method replaceLayoutManager (newLayoutManager : [`NSLayoutManager] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "replaceLayoutManager:")
      [make_pointer_from_object newLayoutManager]) : unit)
  method textView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textView")[])
       : [`NSTextView] Objc.id))
  method setTextView (textView : [`NSTextView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextView:")
      [make_pointer_from_object textView]) : unit)
  method setWidthTracksTextView (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWidthTracksTextView:")
      [make_bool flag]) : unit)
  method widthTracksTextView =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "widthTracksTextView")[])
       : bool)
  method setHeightTracksTextView (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHeightTracksTextView:")
      [make_bool flag]) : unit)
  method heightTracksTextView =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "heightTracksTextView")[])
       : bool)
  method setContainerSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContainerSize:")
      [make_size size]) : unit)
  method containerSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "containerSize")[])
       : NSSize.t)
  method setLineFragmentPadding (pad : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineFragmentPadding:")
      [make_float pad]) : unit)
  method lineFragmentPadding =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "lineFragmentPadding")[])
       : float)
(*  UNSUPPORTED
  method lineFragmentRectForProposedRect_sweepDirection_movementDirection_remainingRect  (proposedRect : NSRect.t) (sweepDirection : int) (movementDirection : int) (remainingRect : (*NSRectPointer*) unsupported) =
    let sel, args = (
      Objc.arg proposedRect "lineFragmentRectForProposedRect" make_rect
      ++ Objc.arg sweepDirection "sweepDirection" make_int
      ++ Objc.arg movementDirection "movementDirection" make_int
      ++ Objc.arg remainingRect "remainingRect" (*NSRectPointer*) unsupported
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)

*)
  method isSimpleRectangularTextContainer =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSimpleRectangularTextContainer")[])
       : bool)
  method containsPoint (point : NSPoint.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "containsPoint:")
      [make_point point]) : bool)
end
