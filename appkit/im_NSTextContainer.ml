(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextContainer *)
class virtual methods = object (self)
  method virtual repr : [`NSTextContainer] Objc.id
(*  UNSUPPORTED
  method initWithContainerSize (size : (*NSSize*) unsupported) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContainerSize:")
      [(*NSSize*) unsupported size]) : [`NSObject] Objc.id)

*)
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
(*  UNSUPPORTED
  method setContainerSize (size : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContainerSize:")
      [(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
  method containerSize =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "containerSize")[])
       : (*NSSize*) unsupported)

*)
  method setLineFragmentPadding (pad : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLineFragmentPadding:")
      [make_float pad]) : unit)
  method lineFragmentPadding =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "lineFragmentPadding")[])
       : float)
(*  UNSUPPORTED
  method lineFragmentRectForProposedRect  ~sweepDirection:(sweepDirection : int ) ~movementDirection:(movementDirection : int ) ~remainingRect:(remainingRect : (*NSRectPointer*) unsupported ) (proposedRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg proposedRect "lineFragmentRectForProposedRect" (*NSRect*) unsupported
      ++ Objc.arg sweepDirection "sweepDirection" make_int
      ++ Objc.arg movementDirection "movementDirection" make_int
      ++ Objc.arg remainingRect "remainingRect" (*NSRectPointer*) unsupported
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
  method isSimpleRectangularTextContainer =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSimpleRectangularTextContainer")[])
       : bool)
(*  UNSUPPORTED
  method containsPoint (point : (*NSPoint*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "containsPoint:")
      [(*NSPoint*) unsupported point]) : bool)

*)
end
