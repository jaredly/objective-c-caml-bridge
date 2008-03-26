(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextTable *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
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
  method rectForBlock_layoutAtPoint_inRect_textContainer_characterRange  (block : [`NSTextTableBlock] Objc.t) (startingPoint : NSPoint.t) (rect : NSRect.t) (textContainer : [`NSTextContainer] Objc.t) (charRange : NSRange.t) =
    let sel, args = (
      Objc.arg block "rectForBlock" make_pointer_from_object
      ++ Objc.arg startingPoint "layoutAtPoint" make_point
      ++ Objc.arg rect "inRect" make_rect
      ++ Objc.arg textContainer "textContainer" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method boundsRectForBlock_contentRect_inRect_textContainer_characterRange  (block : [`NSTextTableBlock] Objc.t) (contentRect : NSRect.t) (rect : NSRect.t) (textContainer : [`NSTextContainer] Objc.t) (charRange : NSRange.t) =
    let sel, args = (
      Objc.arg block "boundsRectForBlock" make_pointer_from_object
      ++ Objc.arg contentRect "contentRect" make_rect
      ++ Objc.arg rect "inRect" make_rect
      ++ Objc.arg textContainer "textContainer" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method drawBackgroundForBlock_withFrame_inView_characterRange_layoutManager  (block : [`NSTextTableBlock] Objc.t) (frameRect : NSRect.t) (controlView : [`NSView] Objc.t) (charRange : NSRange.t) (layoutManager : [`NSLayoutManager] Objc.t) =
    let sel, args = (
      Objc.arg block "drawBackgroundForBlock" make_pointer_from_object
      ++ Objc.arg frameRect "withFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg charRange "characterRange" make_range
      ++ Objc.arg layoutManager "layoutManager" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
