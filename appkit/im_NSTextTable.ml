(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextTable *)
class virtual methods = object (self)
  method virtual repr : [`NSTextTable] Objc.id
  method numberOfColumns =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfColumns")[])
       : int)
  method setNumberOfColumns (numCols : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNumberOfColumns:")
      [make_int numCols]) : unit)
  method layoutAlgorithm =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "layoutAlgorithm")[])
       : int)
  method setLayoutAlgorithm (algorithm : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLayoutAlgorithm:")
      [make_int algorithm]) : unit)
  method collapsesBorders =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "collapsesBorders")[])
       : bool)
  method setCollapsesBorders (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCollapsesBorders:")
      [make_bool flag]) : unit)
  method hidesEmptyCells =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hidesEmptyCells")[])
       : bool)
  method setHidesEmptyCells (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHidesEmptyCells:")
      [make_bool flag]) : unit)
(*  UNSUPPORTED
  method rectForBlock  ~layoutAtPoint:(startingPoint : (*NSPoint*) unsupported ) ~inRect:(rect : (*NSRect*) unsupported ) ~textContainer:(textContainer : [`NSTextContainer] Objc.t ) ~characterRange:(charRange : (int * int) ) (block : [`NSTextTableBlock] Objc.t) =
    let sel, args = (
      Objc.arg block "rectForBlock" make_pointer_from_object
      ++ Objc.arg startingPoint "layoutAtPoint" (*NSPoint*) unsupported
      ++ Objc.arg rect "inRect" (*NSRect*) unsupported
      ++ Objc.arg textContainer "textContainer" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method boundsRectForBlock  ~contentRect:(contentRect : (*NSRect*) unsupported ) ~inRect:(rect : (*NSRect*) unsupported ) ~textContainer:(textContainer : [`NSTextContainer] Objc.t ) ~characterRange:(charRange : (int * int) ) (block : [`NSTextTableBlock] Objc.t) =
    let sel, args = (
      Objc.arg block "boundsRectForBlock" make_pointer_from_object
      ++ Objc.arg contentRect "contentRect" (*NSRect*) unsupported
      ++ Objc.arg rect "inRect" (*NSRect*) unsupported
      ++ Objc.arg textContainer "textContainer" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method drawBackgroundForBlock  ~withFrame:(frameRect : (*NSRect*) unsupported ) ~inView:(controlView : [`NSView] Objc.t ) ~characterRange:(charRange : (int * int) ) ~layoutManager:(layoutManager : [`NSLayoutManager] Objc.t ) (block : [`NSTextTableBlock] Objc.t) =
    let sel, args = (
      Objc.arg block "drawBackgroundForBlock" make_pointer_from_object
      ++ Objc.arg frameRect "withFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
      ++ Objc.arg layoutManager "layoutManager" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
