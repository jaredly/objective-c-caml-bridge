(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDrawer *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method initWithContentSize_preferredEdge  (contentSize : NSSize.t) (edge : (*NSRectEdge*) unsupported) =
    let sel, args = (
      Objc.arg contentSize "initWithContentSize" make_size
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
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method open_ =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "open")[])
       : unit)

*)
(*  UNSUPPORTED
  method openOnEdge (edge : (*NSRectEdge*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "openOnEdge:")
      [(*NSRectEdge*) unsupported edge]) : unit)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method close =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "close")[])
       : unit)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method open_ (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "open:")
      [make_pointer_from_object sender]) : unit)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method close (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "close:")
      [make_pointer_from_object sender]) : unit)

*)
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
  method setContentSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentSize:")
      [make_size size]) : unit)
  method contentSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "contentSize")[])
       : NSSize.t)
  method setMinContentSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinContentSize:")
      [make_size size]) : unit)
  method minContentSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "minContentSize")[])
       : NSSize.t)
  method setMaxContentSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxContentSize:")
      [make_size size]) : unit)
  method maxContentSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "maxContentSize")[])
       : NSSize.t)
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
