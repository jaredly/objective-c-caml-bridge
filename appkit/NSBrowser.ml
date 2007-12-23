open Objc
open NSControl


external init : unit -> unit = "caml_init_NSBrowser"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSBrowserDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSBrowserDelegate *)
   (* skipping selector browser:numberOfRowsInColumn *)
   (* skipping selector browser:createRowsForColumn:inMatrix *)
   method browser  ?willDisplayCell:(cell : [`NSObject] Objc.t option) ?atRow:(row : int option) ?column:(column : int option) (sender : [`NSBrowser] Objc.t) =
     let sel, args = (
       Objc.arg sender "browser" make_pointer_from_object
       ++ Objc.opt_arg cell "willDisplayCell" make_pointer_from_object
       ++ Objc.opt_arg row "atRow" make_int
       ++ Objc.opt_arg column "column" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector browser:titleOfColumn *)
   (* skipping selector browser:selectCellWithString:inColumn *)
   (* skipping selector browser:selectRow:inColumn *)
   (* skipping selector browser:isColumnValid *)
   method browserWillScroll (sender : [`NSBrowser] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "browserWillScroll:")[make_pointer_from_object sender]) : unit)
   method browserDidScroll (sender : [`NSBrowser] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "browserDidScroll:")[make_pointer_from_object sender]) : unit)
   (* skipping selector browser:shouldSizeColumn:forUserResize:toWidth *)
   (* skipping selector browser:sizeToFitWidthOfColumn *)
   method browserColumnConfigurationDidChange (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "browserColumnConfigurationDidChange:")[make_pointer_from_object notification]) : unit)
end
(* Class object for NSBrowser *)
let class_NSBrowser = object
   val o = Classes.find "NSBrowser"
   method _new = (Objc.objcnew o : [`NSBrowser] nativeNSObject)
   method cellClass =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cellClass:")[]) : [`NSBrowser] Objc.nativeNSObject)
   method removeSavedColumnsWithAutosaveName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "removeSavedColumnsWithAutosaveName:")[make_pointer_from_object name]) : [`NSBrowser] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSBrowser *)
class native_NSBrowser = fun (o : [`NSBrowser] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method loadColumnZero =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "loadColumnZero:")[]) : unit)
   method isLoaded =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isLoaded:")[]) : bool)
   method setDoubleAction (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDoubleAction:")[make_selector aSelector]) : unit)
   method doubleAction =
     (get_selector (Objc.invoke Objc.tag_selector o (Selector.find "doubleAction:")[]) : selector)
   method setMatrixClass (factoryId : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMatrixClass:")[make_pointer_from_object factoryId]) : unit)
   method matrixClass =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "matrixClass:")[]) : [`NSObject] Objc.nativeNSObject)
   method setCellClass (factoryId : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCellClass:")[make_pointer_from_object factoryId]) : unit)
   method setCellPrototype (aCell : [`NSCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCellPrototype:")[make_pointer_from_object aCell]) : unit)
   method cellPrototype =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cellPrototype:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setReusesColumns (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setReusesColumns:")[make_bool flag]) : unit)
   method reusesColumns =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "reusesColumns:")[]) : bool)
   method setHasHorizontalScroller (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHasHorizontalScroller:")[make_bool flag]) : unit)
   method hasHorizontalScroller =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasHorizontalScroller:")[]) : bool)
   method setSeparatesColumns (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSeparatesColumns:")[make_bool flag]) : unit)
   method separatesColumns =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "separatesColumns:")[]) : bool)
   method setTitled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitled:")[make_bool flag]) : unit)
   method isTitled =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isTitled:")[]) : bool)
   method setMinColumnWidth (columnWidth : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinColumnWidth:")[make_float columnWidth]) : unit)
   method minColumnWidth =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "minColumnWidth:")[]) : float)
   method setMaxVisibleColumns (columnCount : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaxVisibleColumns:")[make_int columnCount]) : unit)
   method maxVisibleColumns =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "maxVisibleColumns:")[]) : int)
   method setAllowsMultipleSelection (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsMultipleSelection:")[make_bool flag]) : unit)
   method allowsMultipleSelection =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsMultipleSelection:")[]) : bool)
   method setAllowsBranchSelection (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsBranchSelection:")[make_bool flag]) : unit)
   method allowsBranchSelection =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsBranchSelection:")[]) : bool)
   method setAllowsEmptySelection (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsEmptySelection:")[make_bool flag]) : unit)
   method allowsEmptySelection =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsEmptySelection:")[]) : bool)
   method setTakesTitleFromPreviousColumn (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTakesTitleFromPreviousColumn:")[make_bool flag]) : unit)
   method takesTitleFromPreviousColumn =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "takesTitleFromPreviousColumn:")[]) : bool)
   method setAcceptsArrowKeys (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAcceptsArrowKeys:")[make_bool flag]) : unit)
   method acceptsArrowKeys =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "acceptsArrowKeys:")[]) : bool)
   method setSendsActionOnArrowKeys (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSendsActionOnArrowKeys:")[make_bool flag]) : unit)
   method sendsActionOnArrowKeys =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "sendsActionOnArrowKeys:")[]) : bool)
   method setTitle  ~ofColumn:(column : int ) (aString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aString "setTitle" make_pointer_from_object
       ++ Objc.arg column "ofColumn" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method titleOfColumn (column : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "titleOfColumn:")[make_int column]) : [`NSString] Objc.nativeNSObject)
   method setPathSeparator (newString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPathSeparator:")[make_pointer_from_object newString]) : unit)
   method pathSeparator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pathSeparator:")[]) : [`NSString] Objc.nativeNSObject)
   method setPath (path : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "setPath:")[make_pointer_from_object path]) : bool)
   method path =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "path:")[]) : [`NSString] Objc.nativeNSObject)
   method pathToColumn (column : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pathToColumn:")[make_int column]) : [`NSString] Objc.nativeNSObject)
   method selectedColumn =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "selectedColumn:")[]) : int)
   method selectedCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method selectedCellInColumn (column : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedCellInColumn:")[make_int column]) : [`NSObject] Objc.nativeNSObject)
   method selectedCells =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedCells:")[]) : [`NSArray] Objc.nativeNSObject)
   method selectRow  ~inColumn:(column : int ) (row : int) =
     let sel, args = (
       Objc.arg row "selectRow" make_int
       ++ Objc.arg column "inColumn" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method selectedRowInColumn (column : int) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "selectedRowInColumn:")[make_int column]) : int)
   method reloadColumn (column : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "reloadColumn:")[make_int column]) : unit)
   method validateVisibleColumns =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "validateVisibleColumns:")[]) : unit)
   method scrollColumnsRightBy (shiftAmount : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollColumnsRightBy:")[make_int shiftAmount]) : unit)
   method scrollColumnsLeftBy (shiftAmount : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollColumnsLeftBy:")[make_int shiftAmount]) : unit)
   method scrollColumnToVisible (column : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollColumnToVisible:")[make_int column]) : unit)
   method setLastColumn (column : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLastColumn:")[make_int column]) : unit)
   method lastColumn =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "lastColumn:")[]) : int)
   method addColumn =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addColumn:")[]) : unit)
   method numberOfVisibleColumns =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfVisibleColumns:")[]) : int)
   method firstVisibleColumn =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "firstVisibleColumn:")[]) : int)
   method lastVisibleColumn =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "lastVisibleColumn:")[]) : int)
   method columnOfMatrix (matrix : [`NSMatrix] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "columnOfMatrix:")[make_pointer_from_object matrix]) : int)
   method matrixInColumn (column : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "matrixInColumn:")[make_int column]) : [`NSMatrix] Objc.nativeNSObject)
   method loadedCellAtRow  ~column:(col : int ) (row : int) =
     let sel, args = (
       Objc.arg row "loadedCellAtRow" make_int
       ++ Objc.arg col "column" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method selectAll (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectAll:")[make_pointer_from_object sender]) : unit)
   method tile =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "tile:")[]) : unit)
   method doClick (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "doClick:")[make_pointer_from_object sender]) : unit)
   method doDoubleClick (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "doDoubleClick:")[make_pointer_from_object sender]) : unit)
   method sendAction =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "sendAction:")[]) : bool)
(*  UNSUPPORTED
   method titleFrameOfColumn (column : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "titleFrameOfColumn:")[make_int column]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method drawTitleOfColumn  ~inRect:(aRect : (*NSRect*) unsupported ) (column : int) =
     let sel, args = (
       Objc.arg column "drawTitleOfColumn" make_int
       ++ Objc.arg aRect "inRect" (*NSRect*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
   method titleHeight =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "titleHeight:")[]) : float)
(*  UNSUPPORTED
   method frameOfColumn (column : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "frameOfColumn:")[make_int column]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method frameOfInsideOfColumn (column : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "frameOfInsideOfColumn:")[make_int column]) : (*NSRect*) unsupported)

*)
   method columnWidthForColumnContentWidth (columnContentWidth : float) =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "columnWidthForColumnContentWidth:")[make_float columnContentWidth]) : float)
   method columnContentWidthForColumnWidth (columnWidth : float) =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "columnContentWidthForColumnWidth:")[make_float columnWidth]) : float)
   method setColumnResizingType (columnResizingType : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setColumnResizingType:")[make_int columnResizingType]) : unit)
   method columnResizingType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "columnResizingType:")[]) : int)
   method setPrefersAllColumnUserResizing (prefersAllColumnResizing : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPrefersAllColumnUserResizing:")[make_bool prefersAllColumnResizing]) : unit)
   method prefersAllColumnUserResizing =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "prefersAllColumnUserResizing:")[]) : bool)
   method setWidth  ~ofColumn:(columnIndex : int ) (columnWidth : float) =
     let sel, args = (
       Objc.arg columnWidth "setWidth" make_float
       ++ Objc.arg columnIndex "ofColumn" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method widthOfColumn (column : int) =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "widthOfColumn:")[make_int column]) : float)
   method setColumnsAutosaveName (name : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setColumnsAutosaveName:")[make_pointer_from_object name]) : unit)
   method columnsAutosaveName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "columnsAutosaveName:")[]) : [`NSString] Objc.nativeNSObject)
   method displayColumn (column : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "displayColumn:")[make_int column]) : unit)
   method displayAllColumns =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "displayAllColumns:")[]) : unit)
   method scrollViaScroller (sender : [`NSScroller] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "scrollViaScroller:")[make_pointer_from_object sender]) : unit)
   method updateScroller =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "updateScroller:")[]) : unit)
end
