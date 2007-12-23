open Objc
open NSControl


external init : unit -> unit = "caml_init_NSMatrix"
let _ = init()
(* Class object for NSMatrix *)
let class_NSMatrix = object
   val o = Classes.find "NSMatrix"
   method _new = (Objc.objcnew o : [`NSMatrix] nativeNSObject)
(* methods for category NSKeyboardUI *)
end
(* Encapsulation for native instance of NSMatrix *)
class native_NSMatrix = fun (o : [`NSMatrix] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSKeyboardUI *)
   method setTabKeyTraversesCells (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTabKeyTraversesCells:")[make_bool flag]) : unit)
   method tabKeyTraversesCells =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "tabKeyTraversesCells:")[]) : bool)
   method setKeyCell (keyCell : [`NSCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setKeyCell:")[make_pointer_from_object keyCell]) : unit)
   method keyCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keyCell:")[]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithFrame *)
(*  UNSUPPORTED
   method initWithFrame  ?mode:(aMode : int option) ?prototype:(aCell : [`NSCell] Objc.t option) ?numberOfRows:(rowsHigh : int option) ?numberOfColumns:(colsWide : int option) (frameRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg frameRect "initWithFrame" (*NSRect*) unsupported
       ++ Objc.opt_arg aMode "mode" make_int
       ++ Objc.opt_arg aCell "prototype" make_pointer_from_object
       ++ Objc.opt_arg rowsHigh "numberOfRows" make_int
       ++ Objc.opt_arg colsWide "numberOfColumns" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   (* skipping selector initWithFrame:mode:cellClass:numberOfRows:numberOfColumns *)
   method setCellClass (factoryId : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCellClass:")[make_pointer_from_object factoryId]) : unit)
   method cellClass =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cellClass:")[]) : [`NSObject] Objc.nativeNSObject)
   method prototype =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "prototype:")[]) : [`NSObject] Objc.nativeNSObject)
   method setPrototype (aCell : [`NSCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPrototype:")[make_pointer_from_object aCell]) : unit)
   method makeCellAtRow  ~column:(col : int ) (row : int) =
     let sel, args = (
       Objc.arg row "makeCellAtRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSCell] Objc.nativeNSObject)
   method mode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "mode:")[]) : int)
   method setMode (aMode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMode:")[make_int aMode]) : unit)
   method setAllowsEmptySelection (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsEmptySelection:")[make_bool flag]) : unit)
   method allowsEmptySelection =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsEmptySelection:")[]) : bool)
   method sendAction  ~l_to:(anObject : [`NSObject] Objc.t ) ~forAllCells:(flag : bool ) (aSelector : selector) =
     let sel, args = (
       Objc.arg aSelector "sendAction" make_selector
       ++ Objc.arg anObject "l_to" make_pointer_from_object
       ++ Objc.arg flag "forAllCells" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method cells =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cells:")[]) : [`NSArray] Objc.nativeNSObject)
   method sortUsingSelector (comparator : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "sortUsingSelector:")[make_selector comparator]) : unit)
(*  UNSUPPORTED
   method sortUsingFunction  ~context:(context : [`void] Objc.t ) (compare : (*id->id->pointer to void->int*) unsupported) =
     let sel, args = (
       Objc.arg compare "sortUsingFunction" (*id->id->pointer to void->int*) unsupported
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method selectedCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method selectedCells =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedCells:")[]) : [`NSArray] Objc.nativeNSObject)
   method selectedRow =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "selectedRow:")[]) : int)
   method selectedColumn =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "selectedColumn:")[]) : int)
   method setSelectionByRect (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSelectionByRect:")[make_bool flag]) : unit)
   method isSelectionByRect =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSelectionByRect:")[]) : bool)
   method setSelectionFrom  ~l_to:(endPos : int ) ~anchor:(anchorPos : int ) ~highlight:(lit : bool ) (startPos : int) =
     let sel, args = (
       Objc.arg startPos "setSelectionFrom" make_int
       ++ Objc.arg endPos "l_to" make_int
       ++ Objc.arg anchorPos "anchor" make_int
       ++ Objc.arg lit "highlight" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method deselectSelectedCell =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deselectSelectedCell:")[]) : unit)
   method deselectAllCells =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "deselectAllCells:")[]) : unit)
   method selectCellAtRow  ~column:(col : int ) (row : int) =
     let sel, args = (
       Objc.arg row "selectCellAtRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method selectAll (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectAll:")[make_pointer_from_object sender]) : unit)
   method selectCellWithTag (anInt : int) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "selectCellWithTag:")[make_int anInt]) : bool)
(*  UNSUPPORTED
   method cellSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "cellSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setCellSize (aSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCellSize:")[(*NSSize*) unsupported aSize]) : unit)

*)
(*  UNSUPPORTED
   method intercellSpacing =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported o (Selector.find "intercellSpacing:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setIntercellSpacing (aSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIntercellSpacing:")[(*NSSize*) unsupported aSize]) : unit)

*)
   method setScrollable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setScrollable:")[make_bool flag]) : unit)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setCellBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCellBackgroundColor:")[make_pointer_from_object color]) : unit)
   method cellBackgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cellBackgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setDrawsCellBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDrawsCellBackground:")[make_bool flag]) : unit)
   method drawsCellBackground =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "drawsCellBackground:")[]) : bool)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "drawsBackground:")[]) : bool)
   method setState  ~atRow:(row : int ) ~column:(col : int ) (value : int) =
     let sel, args = (
       Objc.arg value "setState" make_int
       ++ Objc.arg row "atRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method getNumberOfRows  ~columns:(colCount : [`int] Objc.t ) (rowCount : [`int] Objc.t) =
     let sel, args = (
       Objc.arg rowCount "getNumberOfRows" make_pointer_from_object
       ++ Objc.arg colCount "columns" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method numberOfRows =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfRows:")[]) : int)
   method numberOfColumns =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfColumns:")[]) : int)
   method cellAtRow  ~column:(col : int ) (row : int) =
     let sel, args = (
       Objc.arg row "cellAtRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method cellFrameAtRow  ~column:(col : int ) (row : int) =
     let sel, args = (
       Objc.arg row "cellFrameAtRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
   method getRow  ~column:(col : [`int] Objc.t ) ~ofCell:(aCell : [`NSCell] Objc.t ) (row : [`int] Objc.t) =
     let sel, args = (
       Objc.arg row "getRow" make_pointer_from_object
       ++ Objc.arg col "column" make_pointer_from_object
       ++ Objc.arg aCell "ofCell" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   (* skipping selector getRow:column:forPoint *)
   method renewRows  ~columns:(newCols : int ) (newRows : int) =
     let sel, args = (
       Objc.arg newRows "renewRows" make_int
       ++ Objc.arg newCols "columns" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method putCell  ~atRow:(row : int ) ~column:(col : int ) (newCell : [`NSCell] Objc.t) =
     let sel, args = (
       Objc.arg newCell "putCell" make_pointer_from_object
       ++ Objc.arg row "atRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method addRow =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addRow:")[]) : unit)
   method addRowWithCells (newCells : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addRowWithCells:")[make_pointer_from_object newCells]) : unit)
   (* skipping selector insertRow *)
   method insertRow  ?withCells:(newCells : [`NSArray] Objc.t option) (row : int) =
     let sel, args = (
       Objc.arg row "insertRow" make_int
       ++ Objc.opt_arg newCells "withCells" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeRow (row : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeRow:")[make_int row]) : unit)
   method addColumn =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addColumn:")[]) : unit)
   method addColumnWithCells (newCells : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addColumnWithCells:")[make_pointer_from_object newCells]) : unit)
   (* skipping selector insertColumn *)
   method insertColumn  ?withCells:(newCells : [`NSArray] Objc.t option) (column : int) =
     let sel, args = (
       Objc.arg column "insertColumn" make_int
       ++ Objc.opt_arg newCells "withCells" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeColumn (col : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeColumn:")[make_int col]) : unit)
   method cellWithTag (anInt : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cellWithTag:")[make_int anInt]) : [`NSObject] Objc.nativeNSObject)
   method doubleAction =
     (get_selector (Objc.invoke Objc.tag_selector o (Selector.find "doubleAction:")[]) : selector)
   method setDoubleAction (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDoubleAction:")[make_selector aSelector]) : unit)
   method setAutosizesCells (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAutosizesCells:")[make_bool flag]) : unit)
   method autosizesCells =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "autosizesCells:")[]) : bool)
   method sizeToCells =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "sizeToCells:")[]) : unit)
   method setValidateSize (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setValidateSize:")[make_bool flag]) : unit)
   method drawCellAtRow  ~column:(col : int ) (row : int) =
     let sel, args = (
       Objc.arg row "drawCellAtRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method highlightCell  ~atRow:(row : int ) ~column:(col : int ) (flag : bool) =
     let sel, args = (
       Objc.arg flag "highlightCell" make_bool
       ++ Objc.arg row "atRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method setAutoscroll (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAutoscroll:")[make_bool flag]) : unit)
   method isAutoscroll =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isAutoscroll:")[]) : bool)
   method scrollCellToVisibleAtRow  ~column:(col : int ) (row : int) =
     let sel, args = (
       Objc.arg row "scrollCellToVisibleAtRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method mouseDownFlags =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "mouseDownFlags:")[]) : int)
   method mouseDown (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "mouseDown:")[make_pointer_from_object theEvent]) : unit)
   method performKeyEquivalent (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "performKeyEquivalent:")[make_pointer_from_object theEvent]) : bool)
   (* skipping selector sendAction *)
   method sendDoubleAction =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "sendDoubleAction:")[]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method textShouldBeginEditing (textObject : [`NSText] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "textShouldBeginEditing:")[make_pointer_from_object textObject]) : bool)
   method textShouldEndEditing (textObject : [`NSText] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "textShouldEndEditing:")[make_pointer_from_object textObject]) : bool)
   method textDidBeginEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidBeginEditing:")[make_pointer_from_object notification]) : unit)
   method textDidEndEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidEndEditing:")[make_pointer_from_object notification]) : unit)
   method textDidChange (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "textDidChange:")[make_pointer_from_object notification]) : unit)
   method selectText (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectText:")[make_pointer_from_object sender]) : unit)
   method selectTextAtRow  ~column:(col : int ) (row : int) =
     let sel, args = (
       Objc.arg row "selectTextAtRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method acceptsFirstMouse (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "acceptsFirstMouse:")[make_pointer_from_object theEvent]) : bool)
   method resetCursorRects =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "resetCursorRects:")[]) : unit)
   method setToolTip  ~forCell:(cell : [`NSCell] Objc.t ) (toolTipString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg toolTipString "setToolTip" make_pointer_from_object
       ++ Objc.arg cell "forCell" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method toolTipForCell (cell : [`NSCell] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "toolTipForCell:")[make_pointer_from_object cell]) : [`NSString] Objc.nativeNSObject)
end
