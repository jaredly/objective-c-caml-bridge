(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextBlock *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method setValue_type_forDimension  (_val : float) (_type : int) (dimension : int) =
    let sel, args = (
      Objc.arg _val "setValue" make_float
      ++ Objc.arg _type "type" make_int
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
  method setContentWidth_type  (_val : float) (_type : int) =
    let sel, args = (
      Objc.arg _val "setContentWidth" make_float
      ++ Objc.arg _type "type" make_int
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
  method setWidth_type_forLayer_edge  (_val : float) (_type : int) (layer : int) (edge : (*NSRectEdge*) unsupported) =
    let sel, args = (
      Objc.arg _val "setWidth" make_float
      ++ Objc.arg _type "type" make_int
      ++ Objc.arg layer "forLayer" make_int
      ++ Objc.arg edge "edge" (*NSRectEdge*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method setWidth_type_forLayer  (_val : float) (_type : int) (layer : int) =
    let sel, args = (
      Objc.arg _val "setWidth" make_float
      ++ Objc.arg _type "type" make_int
      ++ Objc.arg layer "forLayer" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method widthForLayer_edge  (layer : int) (edge : (*NSRectEdge*) unsupported) =
    let sel, args = (
      Objc.arg layer "widthForLayer" make_int
      ++ Objc.arg edge "edge" (*NSRectEdge*) unsupported
    ) ([],[]) in
      (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find_list sel) args)
       : float)

*)
(*  UNSUPPORTED
  method widthValueTypeForLayer_edge  (layer : int) (edge : (*NSRectEdge*) unsupported) =
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
  method setBorderColor_forEdge  (color : [`NSColor] Objc.t) (edge : (*NSRectEdge*) unsupported) =
    let sel, args = (
      Objc.arg color "setBorderColor" make_pointer_from_object
      ++ Objc.arg edge "forEdge" (*NSRectEdge*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method setBorderColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBorderColor:")
      [make_pointer_from_object color]) : unit)
(*  UNSUPPORTED
  method borderColorForEdge (edge : (*NSRectEdge*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "borderColorForEdge:")
      [(*NSRectEdge*) unsupported edge]) : [`NSColor] Objc.id))

*)
  method rectForLayoutAtPoint_inRect_textContainer_characterRange  (startingPoint : NSPoint.t) (rect : NSRect.t) (textContainer : [`NSTextContainer] Objc.t) (charRange : NSRange.t) =
    let sel, args = (
      Objc.arg startingPoint "rectForLayoutAtPoint" make_point
      ++ Objc.arg rect "inRect" make_rect
      ++ Objc.arg textContainer "textContainer" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method boundsRectForContentRect_inRect_textContainer_characterRange  (contentRect : NSRect.t) (rect : NSRect.t) (textContainer : [`NSTextContainer] Objc.t) (charRange : NSRange.t) =
    let sel, args = (
      Objc.arg contentRect "boundsRectForContentRect" make_rect
      ++ Objc.arg rect "inRect" make_rect
      ++ Objc.arg textContainer "textContainer" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method drawBackgroundWithFrame_inView_characterRange_layoutManager  (frameRect : NSRect.t) (controlView : [`NSView] Objc.t) (charRange : NSRange.t) (layoutManager : [`NSLayoutManager] Objc.t) =
    let sel, args = (
      Objc.arg frameRect "drawBackgroundWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
      ++ Objc.arg layoutManager "layoutManager" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
