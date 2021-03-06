(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSBrowser *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method loadColumnZero =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "loadColumnZero")[])
       : unit)
  method isLoaded =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLoaded")[])
       : bool)
  method setDoubleAction (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDoubleAction:")
      [make_selector aSelector]) : unit)
  method doubleAction =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "doubleAction")[])
       : selector)
  method setMatrixClass (factoryId : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMatrixClass:")
      [make_pointer_from_object factoryId]) : unit)
  method matrixClass =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "matrixClass")[])
       : [`NSObject] Objc.id)
  method setCellClass (factoryId : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCellClass:")
      [make_pointer_from_object factoryId]) : unit)
  method setCellPrototype (aCell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCellPrototype:")
      [make_pointer_from_object aCell]) : unit)
  method cellPrototype =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cellPrototype")[])
       : [`NSObject] Objc.id)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setReusesColumns (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setReusesColumns:")
      [make_bool flag]) : unit)
  method reusesColumns =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "reusesColumns")[])
       : bool)
  method setHasHorizontalScroller (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasHorizontalScroller:")
      [make_bool flag]) : unit)
  method hasHorizontalScroller =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasHorizontalScroller")[])
       : bool)
  method setSeparatesColumns (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSeparatesColumns:")
      [make_bool flag]) : unit)
  method separatesColumns =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "separatesColumns")[])
       : bool)
  method setTitled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitled:")
      [make_bool flag]) : unit)
  method isTitled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isTitled")[])
       : bool)
  method setMinColumnWidth (columnWidth : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinColumnWidth:")
      [make_float columnWidth]) : unit)
  method minColumnWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "minColumnWidth")[])
       : float)
  method setMaxVisibleColumns (columnCount : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxVisibleColumns:")
      [make_int columnCount]) : unit)
  method maxVisibleColumns =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "maxVisibleColumns")[])
       : int)
  method setAllowsMultipleSelection (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsMultipleSelection:")
      [make_bool flag]) : unit)
  method allowsMultipleSelection =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsMultipleSelection")[])
       : bool)
  method setAllowsBranchSelection (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsBranchSelection:")
      [make_bool flag]) : unit)
  method allowsBranchSelection =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsBranchSelection")[])
       : bool)
  method setAllowsEmptySelection (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsEmptySelection:")
      [make_bool flag]) : unit)
  method allowsEmptySelection =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsEmptySelection")[])
       : bool)
  method setTakesTitleFromPreviousColumn (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTakesTitleFromPreviousColumn:")
      [make_bool flag]) : unit)
  method takesTitleFromPreviousColumn =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "takesTitleFromPreviousColumn")[])
       : bool)
  method setAcceptsArrowKeys (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAcceptsArrowKeys:")
      [make_bool flag]) : unit)
  method acceptsArrowKeys =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsArrowKeys")[])
       : bool)
  method setSendsActionOnArrowKeys (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSendsActionOnArrowKeys:")
      [make_bool flag]) : unit)
  method sendsActionOnArrowKeys =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "sendsActionOnArrowKeys")[])
       : bool)
  method setTitle_ofColumn  (aString : [`NSString] Objc.t) (column : int) =
    let sel, args = (
      Objc.arg aString "setTitle" make_pointer_from_object
      ++ Objc.arg column "ofColumn" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method titleOfColumn (column : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "titleOfColumn:")
      [make_int column]) : [`NSString] Objc.id))
  method setPathSeparator (newString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPathSeparator:")
      [make_pointer_from_object newString]) : unit)
  method pathSeparator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pathSeparator")[])
       : [`NSString] Objc.id))
  method setPath (path : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setPath:")
      [make_pointer_from_object path]) : bool)
  method path =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "path")[])
       : [`NSString] Objc.id))
  method pathToColumn (column : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pathToColumn:")
      [make_int column]) : [`NSString] Objc.id))
  method selectedColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectedColumn")[])
       : int)
  method selectedCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedCell")[])
       : [`NSObject] Objc.id)
  method selectedCellInColumn (column : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedCellInColumn:")
      [make_int column]) : [`NSObject] Objc.id)
  method selectedCells =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedCells")[])
       : [`NSArray] Objc.id))
  method selectRow_inColumn  (row : int) (column : int) =
    let sel, args = (
      Objc.arg row "selectRow" make_int
      ++ Objc.arg column "inColumn" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method selectedRowInColumn (column : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectedRowInColumn:")
      [make_int column]) : int)
  method reloadColumn (column : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reloadColumn:")
      [make_int column]) : unit)
  method validateVisibleColumns =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "validateVisibleColumns")[])
       : unit)
  method scrollColumnsRightBy (shiftAmount : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollColumnsRightBy:")
      [make_int shiftAmount]) : unit)
  method scrollColumnsLeftBy (shiftAmount : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollColumnsLeftBy:")
      [make_int shiftAmount]) : unit)
  method scrollColumnToVisible (column : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollColumnToVisible:")
      [make_int column]) : unit)
  method setLastColumn (column : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLastColumn:")
      [make_int column]) : unit)
  method lastColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "lastColumn")[])
       : int)
  method addColumn =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addColumn")[])
       : unit)
  method numberOfVisibleColumns =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfVisibleColumns")[])
       : int)
  method firstVisibleColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "firstVisibleColumn")[])
       : int)
  method lastVisibleColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "lastVisibleColumn")[])
       : int)
  method columnOfMatrix (matrix : [`NSMatrix] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "columnOfMatrix:")
      [make_pointer_from_object matrix]) : int)
  method matrixInColumn (column : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "matrixInColumn:")
      [make_int column]) : [`NSMatrix] Objc.id))
  method loadedCellAtRow_column  (row : int) (col : int) =
    let sel, args = (
      Objc.arg row "loadedCellAtRow" make_int
      ++ Objc.arg col "column" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method selectAll (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectAll:")
      [make_pointer_from_object sender]) : unit)
  method tile =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "tile")[])
       : unit)
  method doClick (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "doClick:")
      [make_pointer_from_object sender]) : unit)
  method doDoubleClick (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "doDoubleClick:")
      [make_pointer_from_object sender]) : unit)
  method sendAction =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "sendAction")[])
       : bool)
  method titleFrameOfColumn (column : int) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "titleFrameOfColumn:")
      [make_int column]) : NSRect.t)
  method drawTitleOfColumn_inRect  (column : int) (aRect : NSRect.t) =
    let sel, args = (
      Objc.arg column "drawTitleOfColumn" make_int
      ++ Objc.arg aRect "inRect" make_rect
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method titleHeight =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "titleHeight")[])
       : float)
  method frameOfColumn (column : int) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "frameOfColumn:")
      [make_int column]) : NSRect.t)
  method frameOfInsideOfColumn (column : int) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "frameOfInsideOfColumn:")
      [make_int column]) : NSRect.t)
  method columnWidthForColumnContentWidth (columnContentWidth : float) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "columnWidthForColumnContentWidth:")
      [make_float columnContentWidth]) : float)
  method columnContentWidthForColumnWidth (columnWidth : float) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "columnContentWidthForColumnWidth:")
      [make_float columnWidth]) : float)
  method setColumnResizingType (columnResizingType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setColumnResizingType:")
      [make_int columnResizingType]) : unit)
  method columnResizingType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "columnResizingType")[])
       : int)
  method setPrefersAllColumnUserResizing (prefersAllColumnResizing : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPrefersAllColumnUserResizing:")
      [make_bool prefersAllColumnResizing]) : unit)
  method prefersAllColumnUserResizing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "prefersAllColumnUserResizing")[])
       : bool)
  method setWidth_ofColumn  (columnWidth : float) (columnIndex : int) =
    let sel, args = (
      Objc.arg columnWidth "setWidth" make_float
      ++ Objc.arg columnIndex "ofColumn" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method widthOfColumn (column : int) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "widthOfColumn:")
      [make_int column]) : float)
  method setColumnsAutosaveName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setColumnsAutosaveName:")
      [make_pointer_from_object name]) : unit)
  method columnsAutosaveName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "columnsAutosaveName")[])
       : [`NSString] Objc.id))
  method displayColumn (column : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayColumn:")
      [make_int column]) : unit)
  method displayAllColumns =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayAllColumns")[])
       : unit)
  method scrollViaScroller (sender : [`NSScroller] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollViaScroller:")
      [make_pointer_from_object sender]) : unit)
  method updateScroller =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateScroller")[])
       : unit)
end
