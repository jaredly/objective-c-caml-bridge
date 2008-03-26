(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMatrix *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithFrame (frameRect : NSRect.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFrame:")
      [make_rect frameRect]) : [`NSObject] Objc.id)
  method initWithFrame_mode_prototype_numberOfRows_numberOfColumns  (frameRect : NSRect.t) (aMode : int) (aCell : [`NSCell] Objc.t) (rowsHigh : int) (colsWide : int) =
    let sel, args = (
      Objc.arg frameRect "initWithFrame" make_rect
      ++ Objc.arg aMode "mode" make_int
      ++ Objc.arg aCell "prototype" make_pointer_from_object
      ++ Objc.arg rowsHigh "numberOfRows" make_int
      ++ Objc.arg colsWide "numberOfColumns" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithFrame_mode_cellClass_numberOfRows_numberOfColumns  (frameRect : NSRect.t) (aMode : int) (factoryId : [`NSObject] Objc.t) (rowsHigh : int) (colsWide : int) =
    let sel, args = (
      Objc.arg frameRect "initWithFrame" make_rect
      ++ Objc.arg aMode "mode" make_int
      ++ Objc.arg factoryId "cellClass" make_pointer_from_object
      ++ Objc.arg rowsHigh "numberOfRows" make_int
      ++ Objc.arg colsWide "numberOfColumns" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setCellClass (factoryId : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCellClass:")
      [make_pointer_from_object factoryId]) : unit)
  method cellClass =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cellClass")[])
       : [`NSObject] Objc.id)
  method prototype =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "prototype")[])
       : [`NSObject] Objc.id)
  method setPrototype (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPrototype:")
      [make_pointer_from_object aCell]) : unit)
  method makeCellAtRow_column  (row : int) (col : int) =
    let sel, args = (
      Objc.arg row "makeCellAtRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSCell] Objc.id))
  method mode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "mode")[])
       : int)
  method setMode (aMode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMode:")
      [make_int aMode]) : unit)
  method setAllowsEmptySelection (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsEmptySelection:")
      [make_bool flag]) : unit)
  method allowsEmptySelection =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsEmptySelection")[])
       : bool)
  method sendAction_to_forAllCells  (aSelector : selector) (anObject : [`NSObject] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg aSelector "sendAction" make_selector
      ++ Objc.arg anObject "to" make_pointer_from_object
      ++ Objc.arg flag "forAllCells" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method cells =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cells")[])
       : [`NSArray] Objc.id))
  method sortUsingSelector (comparator : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sortUsingSelector:")
      [make_selector comparator]) : unit)
(*  UNSUPPORTED
  method sortUsingFunction_context  (compare : (*id->id->pointer to void->int*) unsupported) (context : [`void] Objc.t) =
    let sel, args = (
      Objc.arg compare "sortUsingFunction" (*id->id->pointer to void->int*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method selectedCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedCell")[])
       : [`NSObject] Objc.id)
  method selectedCells =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedCells")[])
       : [`NSArray] Objc.id))
  method selectedRow =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectedRow")[])
       : int)
  method selectedColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectedColumn")[])
       : int)
  method setSelectionByRect (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSelectionByRect:")
      [make_bool flag]) : unit)
  method isSelectionByRect =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSelectionByRect")[])
       : bool)
  method setSelectionFrom_to_anchor_highlight  (startPos : int) (endPos : int) (anchorPos : int) (lit : bool) =
    let sel, args = (
      Objc.arg startPos "setSelectionFrom" make_int
      ++ Objc.arg endPos "to" make_int
      ++ Objc.arg anchorPos "anchor" make_int
      ++ Objc.arg lit "highlight" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method deselectSelectedCell =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deselectSelectedCell")[])
       : unit)
  method deselectAllCells =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deselectAllCells")[])
       : unit)
  method selectCellAtRow_column  (row : int) (col : int) =
    let sel, args = (
      Objc.arg row "selectCellAtRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method selectAll (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectAll:")
      [make_pointer_from_object sender]) : unit)
  method selectCellWithTag (anInt : int) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "selectCellWithTag:")
      [make_int anInt]) : bool)
  method cellSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "cellSize")[])
       : NSSize.t)
  method setCellSize (aSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCellSize:")
      [make_size aSize]) : unit)
  method intercellSpacing =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "intercellSpacing")[])
       : NSSize.t)
  method setIntercellSpacing (aSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIntercellSpacing:")
      [make_size aSize]) : unit)
  method setScrollable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScrollable:")
      [make_bool flag]) : unit)
  method setBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object color]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
  method setCellBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCellBackgroundColor:")
      [make_pointer_from_object color]) : unit)
  method cellBackgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cellBackgroundColor")[])
       : [`NSColor] Objc.id))
  method setDrawsCellBackground (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDrawsCellBackground:")
      [make_bool flag]) : unit)
  method drawsCellBackground =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawsCellBackground")[])
       : bool)
  method setDrawsBackground (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDrawsBackground:")
      [make_bool flag]) : unit)
  method drawsBackground =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawsBackground")[])
       : bool)
  method setState_atRow_column  (value : int) (row : int) (col : int) =
    let sel, args = (
      Objc.arg value "setState" make_int
      ++ Objc.arg row "atRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method getNumberOfRows_columns  (rowCount : [`int] Objc.t) (colCount : [`int] Objc.t) =
    let sel, args = (
      Objc.arg rowCount "getNumberOfRows" make_pointer_from_object
      ++ Objc.arg colCount "columns" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method numberOfRows =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfRows")[])
       : int)
  method numberOfColumns =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfColumns")[])
       : int)
  method cellAtRow_column  (row : int) (col : int) =
    let sel, args = (
      Objc.arg row "cellAtRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method cellFrameAtRow_column  (row : int) (col : int) =
    let sel, args = (
      Objc.arg row "cellFrameAtRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method getRow_column_ofCell  (row : [`int] Objc.t) (col : [`int] Objc.t) (aCell : [`NSCell] Objc.t) =
    let sel, args = (
      Objc.arg row "getRow" make_pointer_from_object
      ++ Objc.arg col "column" make_pointer_from_object
      ++ Objc.arg aCell "ofCell" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method getRow_column_forPoint  (row : [`int] Objc.t) (col : [`int] Objc.t) (aPoint : NSPoint.t) =
    let sel, args = (
      Objc.arg row "getRow" make_pointer_from_object
      ++ Objc.arg col "column" make_pointer_from_object
      ++ Objc.arg aPoint "forPoint" make_point
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method renewRows_columns  (newRows : int) (newCols : int) =
    let sel, args = (
      Objc.arg newRows "renewRows" make_int
      ++ Objc.arg newCols "columns" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method putCell_atRow_column  (newCell : [`NSCell] Objc.t) (row : int) (col : int) =
    let sel, args = (
      Objc.arg newCell "putCell" make_pointer_from_object
      ++ Objc.arg row "atRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method addRow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addRow")[])
       : unit)
  method addRowWithCells (newCells : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addRowWithCells:")
      [make_pointer_from_object newCells]) : unit)
  method insertRow (row : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertRow:")
      [make_int row]) : unit)
  method insertRow_withCells  (row : int) (newCells : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg row "insertRow" make_int
      ++ Objc.arg newCells "withCells" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeRow (row : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeRow:")
      [make_int row]) : unit)
  method addColumn =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addColumn")[])
       : unit)
  method addColumnWithCells (newCells : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addColumnWithCells:")
      [make_pointer_from_object newCells]) : unit)
  method insertColumn (column : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertColumn:")
      [make_int column]) : unit)
  method insertColumn_withCells  (column : int) (newCells : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg column "insertColumn" make_int
      ++ Objc.arg newCells "withCells" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeColumn (col : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeColumn:")
      [make_int col]) : unit)
  method cellWithTag (anInt : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cellWithTag:")
      [make_int anInt]) : [`NSObject] Objc.id)
  method doubleAction =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "doubleAction")[])
       : selector)
  method setDoubleAction (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDoubleAction:")
      [make_selector aSelector]) : unit)
  method setAutosizesCells (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutosizesCells:")
      [make_bool flag]) : unit)
  method autosizesCells =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autosizesCells")[])
       : bool)
  method sizeToCells =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeToCells")[])
       : unit)
  method setValidateSize (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setValidateSize:")
      [make_bool flag]) : unit)
  method drawCellAtRow_column  (row : int) (col : int) =
    let sel, args = (
      Objc.arg row "drawCellAtRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method highlightCell_atRow_column  (flag : bool) (row : int) (col : int) =
    let sel, args = (
      Objc.arg flag "highlightCell" make_bool
      ++ Objc.arg row "atRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setAutoscroll (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutoscroll:")
      [make_bool flag]) : unit)
  method isAutoscroll =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAutoscroll")[])
       : bool)
  method scrollCellToVisibleAtRow_column  (row : int) (col : int) =
    let sel, args = (
      Objc.arg row "scrollCellToVisibleAtRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method mouseDownFlags =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "mouseDownFlags")[])
       : int)
  method mouseDown (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "mouseDown:")
      [make_pointer_from_object theEvent]) : unit)
  method performKeyEquivalent (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "performKeyEquivalent:")
      [make_pointer_from_object theEvent]) : bool)
  method sendAction =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "sendAction")[])
       : bool)
  method sendDoubleAction =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sendDoubleAction")[])
       : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method textShouldBeginEditing (textObject : [`NSText] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "textShouldBeginEditing:")
      [make_pointer_from_object textObject]) : bool)
  method textShouldEndEditing (textObject : [`NSText] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "textShouldEndEditing:")
      [make_pointer_from_object textObject]) : bool)
  method textDidBeginEditing (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "textDidBeginEditing:")
      [make_pointer_from_object notification]) : unit)
  method textDidEndEditing (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "textDidEndEditing:")
      [make_pointer_from_object notification]) : unit)
  method textDidChange (notification : [`NSNotification] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "textDidChange:")
      [make_pointer_from_object notification]) : unit)
  method selectText (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectText:")
      [make_pointer_from_object sender]) : unit)
  method selectTextAtRow_column  (row : int) (col : int) =
    let sel, args = (
      Objc.arg row "selectTextAtRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method acceptsFirstMouse (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsFirstMouse:")
      [make_pointer_from_object theEvent]) : bool)
  method resetCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resetCursorRects")[])
       : unit)
  method setToolTip_forCell  (toolTipString : [`NSString] Objc.t) (cell : [`NSCell] Objc.t) =
    let sel, args = (
      Objc.arg toolTipString "setToolTip" make_pointer_from_object
      ++ Objc.arg cell "forCell" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method toolTipForCell (cell : [`NSCell] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toolTipForCell:")
      [make_pointer_from_object cell]) : [`NSString] Objc.id))
end
