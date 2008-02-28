(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextBlock *)
class virtual methods = object (self)
  method virtual repr : [`NSTextBlock] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method setValue  ~l_type:(_type : int ) ~forDimension:(dimension : int ) (_val : float) =
    let sel, args = (
      Objc.arg _val "setValue" make_float
      ++ Objc.arg _type "l_type" make_int
      ++ Objc.arg dimension "forDimension" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method valueForDimension (dimension : int) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "valueForDimension:")
      [make_int dimension]) : float)
  method valueTypeForDimension (dimension : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "valueTypeForDimension:")
      [make_int dimension]) : int)
  method setContentWidth  ~l_type:(_type : int ) (_val : float) =
    let sel, args = (
      Objc.arg _val "setContentWidth" make_float
      ++ Objc.arg _type "l_type" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method contentWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "contentWidth")[])
       : float)
  method contentWidthValueType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "contentWidthValueType")[])
       : int)
(*  UNSUPPORTED
  method setWidth  ~l_type:(_type : int ) ~forLayer:(layer : int ) ?edge:(edge : (*NSRectEdge*) unsupported option) (_val : float) =
    let sel, args = (
      Objc.arg _val "setWidth" make_float
      ++ Objc.arg _type "l_type" make_int
      ++ Objc.arg layer "forLayer" make_int
      ++ Objc.opt_arg edge "edge" (*NSRectEdge*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  (* skipping selector setWidth:l_type:forLayer *)
(*  UNSUPPORTED
  method widthForLayer  ~edge:(edge : (*NSRectEdge*) unsupported ) (layer : int) =
    let sel, args = (
      Objc.arg layer "widthForLayer" make_int
      ++ Objc.arg edge "edge" (*NSRectEdge*) unsupported
    ) ([],[]) in
      (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find_list sel) args)
       : float)

*)
(*  UNSUPPORTED
  method widthValueTypeForLayer  ~edge:(edge : (*NSRectEdge*) unsupported ) (layer : int) =
    let sel, args = (
      Objc.arg layer "widthValueTypeForLayer" make_int
      ++ Objc.arg edge "edge" (*NSRectEdge*) unsupported
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)

*)
  method setVerticalAlignment (alignment : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVerticalAlignment:")
      [make_int alignment]) : unit)
  method verticalAlignment =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "verticalAlignment")[])
       : int)
  method setBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object color]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
(*  UNSUPPORTED
  method setBorderColor  ?forEdge:(edge : (*NSRectEdge*) unsupported option) (color : [`NSColor] Objc.t) =
    let sel, args = (
      Objc.arg color "setBorderColor" make_pointer_from_object
      ++ Objc.opt_arg edge "forEdge" (*NSRectEdge*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  (* skipping selector setBorderColor *)
(*  UNSUPPORTED
  method borderColorForEdge (edge : (*NSRectEdge*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "borderColorForEdge:")
      [(*NSRectEdge*) unsupported edge]) : [`NSColor] Objc.id))

*)
(*  UNSUPPORTED
  method rectForLayoutAtPoint  ~inRect:(rect : (*NSRect*) unsupported ) ~textContainer:(textContainer : [`NSTextContainer] Objc.t ) ~characterRange:(charRange : (int * int) ) (startingPoint : (*NSPoint*) unsupported) =
    let sel, args = (
      Objc.arg startingPoint "rectForLayoutAtPoint" (*NSPoint*) unsupported
      ++ Objc.arg rect "inRect" (*NSRect*) unsupported
      ++ Objc.arg textContainer "textContainer" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method boundsRectForContentRect  ~inRect:(rect : (*NSRect*) unsupported ) ~textContainer:(textContainer : [`NSTextContainer] Objc.t ) ~characterRange:(charRange : (int * int) ) (contentRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg contentRect "boundsRectForContentRect" (*NSRect*) unsupported
      ++ Objc.arg rect "inRect" (*NSRect*) unsupported
      ++ Objc.arg textContainer "textContainer" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method drawBackgroundWithFrame  ~inView:(controlView : [`NSView] Objc.t ) ~characterRange:(charRange : (int * int) ) ~layoutManager:(layoutManager : [`NSLayoutManager] Objc.t ) (frameRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg frameRect "drawBackgroundWithFrame" (*NSRect*) unsupported
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
      ++ Objc.arg layoutManager "layoutManager" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
