(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDrawer *)
class virtual methods = object (self)
  method virtual repr : [`NSDrawer] Objc.id
(*  UNSUPPORTED
  method initWithContentSize  ~preferredEdge:(edge : (*NSRectEdge*) unsupported ) (contentSize : (*NSSize*) unsupported) =
    let sel, args = (
      Objc.arg contentSize "initWithContentSize" (*NSSize*) unsupported
      ++ Objc.arg edge "preferredEdge" (*NSRectEdge*) unsupported
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method setParentWindow (parent : [`NSWindow] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setParentWindow:")
      [make_pointer_from_object parent]) : unit)
  method parentWindow =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "parentWindow")[])
       : [`NSWindow] Objc.id))
  method setContentView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentView:")
      [make_pointer_from_object aView]) : unit)
  method contentView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "contentView")[])
       : [`NSView] Objc.id))
(*  UNSUPPORTED
  method setPreferredEdge (edge : (*NSRectEdge*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPreferredEdge:")
      [(*NSRectEdge*) unsupported edge]) : unit)

*)
(*  UNSUPPORTED
  method preferredEdge =
    ((*NSRectEdge*) unsupported (Objc.invoke (*NSRectEdge*) Objc.tag_unsupported self#repr (Selector.find "preferredEdge")[])
       : (*NSRectEdge*) unsupported)

*)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  (* skipping selector open *)
(*  UNSUPPORTED
  method openOnEdge (edge : (*NSRectEdge*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "openOnEdge:")
      [(*NSRectEdge*) unsupported edge]) : unit)

*)
  (* skipping selector close *)
  method open_ (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "open:")
      [make_pointer_from_object sender]) : unit)
  method close (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "close:")
      [make_pointer_from_object sender]) : unit)
  method toggle (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "toggle:")
      [make_pointer_from_object sender]) : unit)
  method state =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "state")[])
       : int)
(*  UNSUPPORTED
  method edge =
    ((*NSRectEdge*) unsupported (Objc.invoke (*NSRectEdge*) Objc.tag_unsupported self#repr (Selector.find "edge")[])
       : (*NSRectEdge*) unsupported)

*)
(*  UNSUPPORTED
  method setContentSize (size : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentSize:")
      [(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
  method contentSize =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "contentSize")[])
       : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
  method setMinContentSize (size : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinContentSize:")
      [(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
  method minContentSize =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "minContentSize")[])
       : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
  method setMaxContentSize (size : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxContentSize:")
      [(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
  method maxContentSize =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "maxContentSize")[])
       : (*NSSize*) unsupported)

*)
  method setLeadingOffset (offset : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLeadingOffset:")
      [make_float offset]) : unit)
  method leadingOffset =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "leadingOffset")[])
       : float)
  method setTrailingOffset (offset : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTrailingOffset:")
      [make_float offset]) : unit)
  method trailingOffset =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "trailingOffset")[])
       : float)
end
