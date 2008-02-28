(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTableHeaderCell *)
class virtual methods = object (self)
  method virtual repr : [`NSTableHeaderCell] Objc.id
(*  UNSUPPORTED
  method drawSortIndicatorWithFrame  ~inView:(controlView : [`NSView] Objc.t ) ~ascending:(ascending : bool ) ~priority:(priority : int ) (cellFrame : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg cellFrame "drawSortIndicatorWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg ascending "ascending" make_bool
      ++ Objc.arg priority "priority" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method sortIndicatorRectForBounds (theRect : (*NSRect*) unsupported) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "sortIndicatorRectForBounds:")
      [(*NSRect*) unsupported theRect]) : (*NSRect*) unsupported)

*)
end
