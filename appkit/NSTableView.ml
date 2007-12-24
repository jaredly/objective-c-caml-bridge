(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSControl
open NSDragging
open NSUserInterfaceValidation


external init : unit -> unit = "caml_init_NSTableView"
let _ = init()
(* ENUMS *)
let _NSTableViewNoColumnAutoresizing = 0L
let _NSTableViewUniformColumnAutoresizingStyle = 1L
let _NSTableViewSequentialColumnAutoresizingStyle = 2L
let _NSTableViewReverseSequentialColumnAutoresizingStyle = 3L
let _NSTableViewLastColumnOnlyAutoresizingStyle = 4L
let _NSTableViewFirstColumnOnlyAutoresizingStyle = 5L
let _NSTableViewGridNone = 0L
let _NSTableViewSolidVerticalGridLineMask = 1L
let _NSTableViewSolidHorizontalGridLineMask = 2L


let make_NSControl_of_NSTableView (o : [`NSTableView] nativeNSObject) = (Obj.magic o : [`NSControl] nativeNSObject)
(* Class object for NSTableView *)
let class_NSTableView = object
   val repr = Classes.find "NSTableView"
   method _new = (Objc.objcnew repr : [`NSTableView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTableView] nativeNSObject)
end
(* Encapsulation for native instance of NSTableView *)
class native_NSTableView = fun (o : [`NSTableView] nativeNSObject) -> object (self)
   inherit native_NSControl (make_NSControl_of_NSTableView o) as super
   method setDataSource (aSource : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDataSource:")[make_pointer_from_object aSource]) : unit)
   method dataSource =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataSource:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setHeaderView (headerView : [`NSTableHeaderView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHeaderView:")[make_pointer_from_object headerView]) : unit)
   method headerView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "headerView:")[]) : [`NSTableHeaderView] Objc.nativeNSObject)
   method setCornerView (cornerView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCornerView:")[make_pointer_from_object cornerView]) : unit)
   method cornerView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "cornerView:")[]) : [`NSView] Objc.nativeNSObject)
   method setAllowsColumnReordering (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsColumnReordering:")[make_bool flag]) : unit)
   method allowsColumnReordering =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsColumnReordering:")[]) : bool)
   method setAllowsColumnResizing (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsColumnResizing:")[make_bool flag]) : unit)
   method allowsColumnResizing =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsColumnResizing:")[]) : bool)
   method setColumnAutoresizingStyle (style : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setColumnAutoresizingStyle:")[make_int style]) : unit)
   method columnAutoresizingStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "columnAutoresizingStyle:")[]) : int)
   method setGridStyleMask (gridType : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setGridStyleMask:")[make_int gridType]) : unit)
   method gridStyleMask =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "gridStyleMask:")[]) : int)
(*  UNSUPPORTED
   method setIntercellSpacing (aSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIntercellSpacing:")[(*NSSize*) unsupported aSize]) : unit)

*)
(*  UNSUPPORTED
   method intercellSpacing =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "intercellSpacing:")[]) : (*NSSize*) unsupported)

*)
   method setUsesAlternatingRowBackgroundColors (useAlternatingRowColors : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUsesAlternatingRowBackgroundColors:")[make_bool useAlternatingRowColors]) : unit)
   method usesAlternatingRowBackgroundColors =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "usesAlternatingRowBackgroundColors:")[]) : bool)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setGridColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setGridColor:")[make_pointer_from_object color]) : unit)
   method gridColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "gridColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setRowHeight (rowHeight : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRowHeight:")[make_float rowHeight]) : unit)
   method rowHeight =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "rowHeight:")[]) : float)
   method noteHeightOfRowsWithIndexesChanged (indexSet : [`NSIndexSet] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "noteHeightOfRowsWithIndexesChanged:")[make_pointer_from_object indexSet]) : unit)
   method tableColumns =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "tableColumns:")[]) : [`NSArray] Objc.nativeNSObject)
   method numberOfColumns =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfColumns:")[]) : int)
   method numberOfRows =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfRows:")[]) : int)
   method addTableColumn (column : [`NSTableColumn] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addTableColumn:")[make_pointer_from_object column]) : unit)
   method removeTableColumn (column : [`NSTableColumn] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeTableColumn:")[make_pointer_from_object column]) : unit)
   method columnWithIdentifier (identifier : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "columnWithIdentifier:")[make_pointer_from_object identifier]) : int)
   method tableColumnWithIdentifier (identifier : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "tableColumnWithIdentifier:")[make_pointer_from_object identifier]) : [`NSTableColumn] Objc.nativeNSObject)
   method tile =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "tile:")[]) : unit)
   method sizeToFit =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "sizeToFit:")[]) : unit)
   method sizeLastColumnToFit =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "sizeLastColumnToFit:")[]) : unit)
   method scrollRowToVisible (row : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scrollRowToVisible:")[make_int row]) : unit)
   method scrollColumnToVisible (column : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scrollColumnToVisible:")[make_int column]) : unit)
   method moveColumn  ~toColumn:(newIndex : int ) (column : int) =
     let sel, args = (
       Objc.arg column "moveColumn" make_int
       ++ Objc.arg newIndex "toColumn" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method reloadData =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "reloadData:")[]) : unit)
   method noteNumberOfRowsChanged =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "noteNumberOfRowsChanged:")[]) : unit)
   method editedColumn =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "editedColumn:")[]) : int)
   method editedRow =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "editedRow:")[]) : int)
   method clickedColumn =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "clickedColumn:")[]) : int)
   method clickedRow =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "clickedRow:")[]) : int)
   method setDoubleAction (aSelector : selector) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDoubleAction:")[make_selector aSelector]) : unit)
   method doubleAction =
     (get_selector (Objc.invoke Objc.tag_selector repr (Selector.find "doubleAction:")[]) : selector)
   method setSortDescriptors (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSortDescriptors:")[make_pointer_from_object array]) : unit)
   method sortDescriptors =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sortDescriptors:")[]) : [`NSArray] Objc.nativeNSObject)
   method setIndicatorImage  ~inTableColumn:(tc : [`NSTableColumn] Objc.t ) (anImage : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg anImage "setIndicatorImage" make_pointer_from_object
       ++ Objc.arg tc "inTableColumn" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method indicatorImageInTableColumn (tc : [`NSTableColumn] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "indicatorImageInTableColumn:")[make_pointer_from_object tc]) : [`NSImage] Objc.nativeNSObject)
   method setHighlightedTableColumn (tc : [`NSTableColumn] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHighlightedTableColumn:")[make_pointer_from_object tc]) : unit)
   method highlightedTableColumn =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "highlightedTableColumn:")[]) : [`NSTableColumn] Objc.nativeNSObject)
   method setVerticalMotionCanBeginDrag (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setVerticalMotionCanBeginDrag:")[make_bool flag]) : unit)
   method verticalMotionCanBeginDrag =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "verticalMotionCanBeginDrag:")[]) : bool)
(*  UNSUPPORTED
   method canDragRowsWithIndexes  ~atPoint:(mouseDownPoint : (*NSPoint*) unsupported ) (rowIndexes : [`NSIndexSet] Objc.t) =
     let sel, args = (
       Objc.arg rowIndexes "canDragRowsWithIndexes" make_pointer_from_object
       ++ Objc.arg mouseDownPoint "atPoint" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
(*  UNSUPPORTED
   method dragImageForRowsWithIndexes  ~tableColumns:(tableColumns : [`NSArray] Objc.t ) ~event:(dragEvent : [`NSEvent] Objc.t ) ~offset:(dragImageOffset : (*NSPointPointer*) unsupported ) (dragRows : [`NSIndexSet] Objc.t) =
     let sel, args = (
       Objc.arg dragRows "dragImageForRowsWithIndexes" make_pointer_from_object
       ++ Objc.arg tableColumns "tableColumns" make_pointer_from_object
       ++ Objc.arg dragEvent "event" make_pointer_from_object
       ++ Objc.arg dragImageOffset "offset" (*NSPointPointer*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSImage] Objc.nativeNSObject)

*)
   method setDraggingSourceOperationMask  ~forLocal:(isLocal : bool ) (mask : int) =
     let sel, args = (
       Objc.arg mask "setDraggingSourceOperationMask" make_int
       ++ Objc.arg isLocal "forLocal" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method setDropRow  ~dropOperation:(op : int ) (row : int) =
     let sel, args = (
       Objc.arg row "setDropRow" make_int
       ++ Objc.arg op "dropOperation" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method setAllowsMultipleSelection (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsMultipleSelection:")[make_bool flag]) : unit)
   method allowsMultipleSelection =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsMultipleSelection:")[]) : bool)
   method setAllowsEmptySelection (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsEmptySelection:")[make_bool flag]) : unit)
   method allowsEmptySelection =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsEmptySelection:")[]) : bool)
   method setAllowsColumnSelection (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsColumnSelection:")[make_bool flag]) : unit)
   method allowsColumnSelection =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsColumnSelection:")[]) : bool)
   method selectAll (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectAll:")[make_pointer_from_object sender]) : unit)
   method deselectAll (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deselectAll:")[make_pointer_from_object sender]) : unit)
   method selectColumnIndexes  ~byExtendingSelection:(extend : bool ) (indexes : [`NSIndexSet] Objc.t) =
     let sel, args = (
       Objc.arg indexes "selectColumnIndexes" make_pointer_from_object
       ++ Objc.arg extend "byExtendingSelection" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method selectRowIndexes  ~byExtendingSelection:(extend : bool ) (indexes : [`NSIndexSet] Objc.t) =
     let sel, args = (
       Objc.arg indexes "selectRowIndexes" make_pointer_from_object
       ++ Objc.arg extend "byExtendingSelection" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method selectedColumnIndexes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "selectedColumnIndexes:")[]) : [`NSIndexSet] Objc.nativeNSObject)
   method selectedRowIndexes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "selectedRowIndexes:")[]) : [`NSIndexSet] Objc.nativeNSObject)
   method deselectColumn (column : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deselectColumn:")[make_int column]) : unit)
   method deselectRow (row : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deselectRow:")[make_int row]) : unit)
   method selectedColumn =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "selectedColumn:")[]) : int)
   method selectedRow =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "selectedRow:")[]) : int)
   method isColumnSelected (row : int) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isColumnSelected:")[make_int row]) : bool)
   method isRowSelected (row : int) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRowSelected:")[make_int row]) : bool)
   method numberOfSelectedColumns =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfSelectedColumns:")[]) : int)
   method numberOfSelectedRows =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfSelectedRows:")[]) : int)
(*  UNSUPPORTED
   method rectOfColumn (column : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "rectOfColumn:")[make_int column]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method rectOfRow (row : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "rectOfRow:")[make_int row]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method columnsInRect (rect : (*NSRect*) unsupported) =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "columnsInRect:")[(*NSRect*) unsupported rect]) : (int * int))

*)
(*  UNSUPPORTED
   method rowsInRect (rect : (*NSRect*) unsupported) =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "rowsInRect:")[(*NSRect*) unsupported rect]) : (int * int))

*)
(*  UNSUPPORTED
   method columnAtPoint (point : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "columnAtPoint:")[(*NSPoint*) unsupported point]) : int)

*)
(*  UNSUPPORTED
   method rowAtPoint (point : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "rowAtPoint:")[(*NSPoint*) unsupported point]) : int)

*)
(*  UNSUPPORTED
   method frameOfCellAtColumn  ~row:(row : int ) (column : int) =
     let sel, args = (
       Objc.arg column "frameOfCellAtColumn" make_int
       ++ Objc.arg row "row" make_int
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
   method textShouldBeginEditing (textObject : [`NSText] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "textShouldBeginEditing:")[make_pointer_from_object textObject]) : bool)
   method textShouldEndEditing (textObject : [`NSText] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "textShouldEndEditing:")[make_pointer_from_object textObject]) : bool)
   method textDidBeginEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "textDidBeginEditing:")[make_pointer_from_object notification]) : unit)
   method textDidEndEditing (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "textDidEndEditing:")[make_pointer_from_object notification]) : unit)
   method textDidChange (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "textDidChange:")[make_pointer_from_object notification]) : unit)
   method setAutosaveName (name : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutosaveName:")[make_pointer_from_object name]) : unit)
   method autosaveName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "autosaveName:")[]) : [`NSString] Objc.nativeNSObject)
   method setAutosaveTableColumns (save : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutosaveTableColumns:")[make_bool save]) : unit)
   method autosaveTableColumns =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autosaveTableColumns:")[]) : bool)
   method editColumn  ~row:(row : int ) ~withEvent:(theEvent : [`NSEvent] Objc.t ) ~select:(select : bool ) (column : int) =
     let sel, args = (
       Objc.arg column "editColumn" make_int
       ++ Objc.arg row "row" make_int
       ++ Objc.arg theEvent "withEvent" make_pointer_from_object
       ++ Objc.arg select "select" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method drawRow  ~clipRect:(rect : (*NSRect*) unsupported ) (row : int) =
     let sel, args = (
       Objc.arg row "drawRow" make_int
       ++ Objc.arg rect "clipRect" (*NSRect*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method highlightSelectionInClipRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "highlightSelectionInClipRect:")[(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
   method drawGridInClipRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawGridInClipRect:")[(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
   method drawBackgroundInClipRect (clipRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawBackgroundInClipRect:")[(*NSRect*) unsupported clipRect]) : unit)

*)
   method setDrawsGrid (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDrawsGrid:")[make_bool flag]) : unit)
   method drawsGrid =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "drawsGrid:")[]) : bool)
   method selectColumn  ~byExtendingSelection:(extend : bool ) (column : int) =
     let sel, args = (
       Objc.arg column "selectColumn" make_int
       ++ Objc.arg extend "byExtendingSelection" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method selectRow  ~byExtendingSelection:(extend : bool ) (row : int) =
     let sel, args = (
       Objc.arg row "selectRow" make_int
       ++ Objc.arg extend "byExtendingSelection" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method selectedColumnEnumerator =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "selectedColumnEnumerator:")[]) : [`NSEnumerator] Objc.nativeNSObject)
   method selectedRowEnumerator =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "selectedRowEnumerator:")[]) : [`NSEnumerator] Objc.nativeNSObject)
(*  UNSUPPORTED
   method dragImageForRows  ~event:(dragEvent : [`NSEvent] Objc.t ) ~dragImageOffset:(dragImageOffset : (*NSPointPointer*) unsupported ) (dragRows : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg dragRows "dragImageForRows" make_pointer_from_object
       ++ Objc.arg dragEvent "event" make_pointer_from_object
       ++ Objc.arg dragImageOffset "dragImageOffset" (*NSPointPointer*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSImage] Objc.nativeNSObject)

*)
   method setAutoresizesAllColumnsToFit (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutoresizesAllColumnsToFit:")[make_bool flag]) : unit)
   method autoresizesAllColumnsToFit =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autoresizesAllColumnsToFit:")[]) : bool)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSTableDataSource *)
(* methods for category NSTableViewNotifications *)
(* methods for category NSTableViewDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSTableDataSource *)
   method numberOfRowsInTableView (tableView : [`NSTableView] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfRowsInTableView:")[make_pointer_from_object tableView]) : int)
   (* skipping selector tableView:objectValueForTableColumn:row *)
   (* skipping selector tableView:setObjectValue:forTableColumn:row *)
   (* skipping selector tableView:sortDescriptorsDidChange *)
   (* skipping selector tableView:writeRowsWithIndexes:toPasteboard *)
   (* skipping selector tableView:validateDrop:proposedRow:proposedDropOperation *)
   (* skipping selector tableView:acceptDrop:row:dropOperation *)
   (* skipping selector tableView:namesOfPromisedFilesDroppedAtDestination:forDraggedRowsWithIndexes *)
   (* skipping selector tableView:writeRows:toPasteboard *)
(* methods for category NSTableViewNotifications *)
   method tableViewSelectionDidChange (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "tableViewSelectionDidChange:")[make_pointer_from_object notification]) : unit)
   method tableViewColumnDidMove (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "tableViewColumnDidMove:")[make_pointer_from_object notification]) : unit)
   method tableViewColumnDidResize (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "tableViewColumnDidResize:")[make_pointer_from_object notification]) : unit)
   method tableViewSelectionIsChanging (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "tableViewSelectionIsChanging:")[make_pointer_from_object notification]) : unit)
(* methods for category NSTableViewDelegate *)
   (* skipping selector tableView:willDisplayCell:forTableColumn:row *)
   (* skipping selector tableView:shouldEditTableColumn:row *)
   method selectionShouldChangeInTableView (aTableView : [`NSTableView] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "selectionShouldChangeInTableView:")[make_pointer_from_object aTableView]) : bool)
   (* skipping selector tableView:shouldSelectRow *)
   (* skipping selector tableView:shouldSelectTableColumn *)
   (* skipping selector tableView:mouseDownInHeaderOfTableColumn *)
   (* skipping selector tableView:didClickTableColumn *)
   (* skipping selector tableView:didDragTableColumn *)
(*  UNSUPPORTED
   method tableView  ?toolTipForCell:(cell : [`NSCell] Objc.t option) ?rect:(rect : (*NSRectPointer*) unsupported option) ?tableColumn:(tc : [`NSTableColumn] Objc.t option) ?row:(row : int option) ?mouseLocation:(mouseLocation : (*NSPoint*) unsupported option) (tv : [`NSTableView] Objc.t) =
     let sel, args = (
       Objc.arg tv "tableView" make_pointer_from_object
       ++ Objc.opt_arg cell "toolTipForCell" make_pointer_from_object
       ++ Objc.opt_arg rect "rect" (*NSRectPointer*) unsupported
       ++ Objc.opt_arg tc "tableColumn" make_pointer_from_object
       ++ Objc.opt_arg row "row" make_int
       ++ Objc.opt_arg mouseLocation "mouseLocation" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)

*)
   (* skipping selector tableView:heightOfRow *)
end
