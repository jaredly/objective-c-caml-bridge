(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTableView *)
class virtual methods = object (self)
  method virtual repr : [`NSTableView] Objc.id
  method setDataSource (aSource : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDataSource:")
      [make_pointer_from_object aSource]) : unit)
  method dataSource =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataSource")[])
       : [`NSObject] Objc.id)
  method setDelegate (delegate : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object delegate]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setHeaderView (headerView : [`NSTableHeaderView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHeaderView:")
      [make_pointer_from_object headerView]) : unit)
  method headerView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "headerView")[])
       : [`NSTableHeaderView] Objc.id))
  method setCornerView (cornerView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCornerView:")
      [make_pointer_from_object cornerView]) : unit)
  method cornerView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cornerView")[])
       : [`NSView] Objc.id))
  method setAllowsColumnReordering (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsColumnReordering:")
      [make_bool flag]) : unit)
  method allowsColumnReordering =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsColumnReordering")[])
       : bool)
  method setAllowsColumnResizing (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsColumnResizing:")
      [make_bool flag]) : unit)
  method allowsColumnResizing =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsColumnResizing")[])
       : bool)
  method setColumnAutoresizingStyle (style : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setColumnAutoresizingStyle:")
      [make_int style]) : unit)
  method columnAutoresizingStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "columnAutoresizingStyle")[])
       : int)
  method setGridStyleMask (gridType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGridStyleMask:")
      [make_int gridType]) : unit)
  method gridStyleMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "gridStyleMask")[])
       : int)
(*  UNSUPPORTED
  method setIntercellSpacing (aSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIntercellSpacing:")
      [(*NSSize*) unsupported aSize]) : unit)

*)
(*  UNSUPPORTED
  method intercellSpacing =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "intercellSpacing")[])
       : (*NSSize*) unsupported)

*)
  method setUsesAlternatingRowBackgroundColors (useAlternatingRowColors : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUsesAlternatingRowBackgroundColors:")
      [make_bool useAlternatingRowColors]) : unit)
  method usesAlternatingRowBackgroundColors =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "usesAlternatingRowBackgroundColors")[])
       : bool)
  method setBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object color]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
  method setGridColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGridColor:")
      [make_pointer_from_object color]) : unit)
  method gridColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "gridColor")[])
       : [`NSColor] Objc.id))
  method setRowHeight (rowHeight : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRowHeight:")
      [make_float rowHeight]) : unit)
  method rowHeight =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "rowHeight")[])
       : float)
  method noteHeightOfRowsWithIndexesChanged (indexSet : [`NSIndexSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteHeightOfRowsWithIndexesChanged:")
      [make_pointer_from_object indexSet]) : unit)
  method tableColumns =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tableColumns")[])
       : [`NSArray] Objc.id))
  method numberOfColumns =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfColumns")[])
       : int)
  method numberOfRows =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfRows")[])
       : int)
  method addTableColumn (column : [`NSTableColumn] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addTableColumn:")
      [make_pointer_from_object column]) : unit)
  method removeTableColumn (column : [`NSTableColumn] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeTableColumn:")
      [make_pointer_from_object column]) : unit)
  method columnWithIdentifier (identifier : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "columnWithIdentifier:")
      [make_pointer_from_object identifier]) : int)
  method tableColumnWithIdentifier (identifier : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tableColumnWithIdentifier:")
      [make_pointer_from_object identifier]) : [`NSTableColumn] Objc.id))
  method tile =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "tile")[])
       : unit)
  method sizeToFit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeToFit")[])
       : unit)
  method sizeLastColumnToFit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeLastColumnToFit")[])
       : unit)
  method scrollRowToVisible (row : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollRowToVisible:")
      [make_int row]) : unit)
  method scrollColumnToVisible (column : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollColumnToVisible:")
      [make_int column]) : unit)
  method moveColumn  ~toColumn:(newIndex : int ) (column : int) =
    let sel, args = (
      Objc.arg column "moveColumn" make_int
      ++ Objc.arg newIndex "toColumn" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method reloadData =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reloadData")[])
       : unit)
  method noteNumberOfRowsChanged =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "noteNumberOfRowsChanged")[])
       : unit)
  method editedColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "editedColumn")[])
       : int)
  method editedRow =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "editedRow")[])
       : int)
  method clickedColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "clickedColumn")[])
       : int)
  method clickedRow =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "clickedRow")[])
       : int)
  method setDoubleAction (aSelector : selector) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDoubleAction:")
      [make_selector aSelector]) : unit)
  method doubleAction =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "doubleAction")[])
       : selector)
  method setSortDescriptors (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSortDescriptors:")
      [make_pointer_from_object array]) : unit)
  method sortDescriptors =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sortDescriptors")[])
       : [`NSArray] Objc.id))
  method setIndicatorImage  ~inTableColumn:(tc : [`NSTableColumn] Objc.t ) (anImage : [`NSImage] Objc.t) =
    let sel, args = (
      Objc.arg anImage "setIndicatorImage" make_pointer_from_object
      ++ Objc.arg tc "inTableColumn" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method indicatorImageInTableColumn (tc : [`NSTableColumn] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "indicatorImageInTableColumn:")
      [make_pointer_from_object tc]) : [`NSImage] Objc.id))
  method setHighlightedTableColumn (tc : [`NSTableColumn] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHighlightedTableColumn:")
      [make_pointer_from_object tc]) : unit)
  method highlightedTableColumn =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "highlightedTableColumn")[])
       : [`NSTableColumn] Objc.id))
  method setVerticalMotionCanBeginDrag (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVerticalMotionCanBeginDrag:")
      [make_bool flag]) : unit)
  method verticalMotionCanBeginDrag =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "verticalMotionCanBeginDrag")[])
       : bool)
(*  UNSUPPORTED
  method canDragRowsWithIndexes  ~atPoint:(mouseDownPoint : (*NSPoint*) unsupported ) (rowIndexes : [`NSIndexSet] Objc.t) =
    let sel, args = (
      Objc.arg rowIndexes "canDragRowsWithIndexes" make_pointer_from_object
      ++ Objc.arg mouseDownPoint "atPoint" (*NSPoint*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
(*  UNSUPPORTED
  method dragImageForRowsWithIndexes  ~tableColumns:(tableColumns : [`NSArray] Objc.t ) ~event:(dragEvent : [`NSEvent] Objc.t ) ~offset:(dragImageOffset : (*NSPointPointer*) unsupported ) (dragRows : [`NSIndexSet] Objc.t) =
    let sel, args = (
      Objc.arg dragRows "dragImageForRowsWithIndexes" make_pointer_from_object
      ++ Objc.arg tableColumns "tableColumns" make_pointer_from_object
      ++ Objc.arg dragEvent "event" make_pointer_from_object
      ++ Objc.arg dragImageOffset "offset" (*NSPointPointer*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSImage] Objc.id))

*)
  method setDraggingSourceOperationMask  ~forLocal:(isLocal : bool ) (mask : int) =
    let sel, args = (
      Objc.arg mask "setDraggingSourceOperationMask" make_int
      ++ Objc.arg isLocal "forLocal" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setDropRow  ~dropOperation:(op : int ) (row : int) =
    let sel, args = (
      Objc.arg row "setDropRow" make_int
      ++ Objc.arg op "dropOperation" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setAllowsMultipleSelection (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsMultipleSelection:")
      [make_bool flag]) : unit)
  method allowsMultipleSelection =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsMultipleSelection")[])
       : bool)
  method setAllowsEmptySelection (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsEmptySelection:")
      [make_bool flag]) : unit)
  method allowsEmptySelection =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsEmptySelection")[])
       : bool)
  method setAllowsColumnSelection (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsColumnSelection:")
      [make_bool flag]) : unit)
  method allowsColumnSelection =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsColumnSelection")[])
       : bool)
  method selectAll (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectAll:")
      [make_pointer_from_object sender]) : unit)
  method deselectAll (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deselectAll:")
      [make_pointer_from_object sender]) : unit)
  method selectColumnIndexes  ~byExtendingSelection:(extend : bool ) (indexes : [`NSIndexSet] Objc.t) =
    let sel, args = (
      Objc.arg indexes "selectColumnIndexes" make_pointer_from_object
      ++ Objc.arg extend "byExtendingSelection" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method selectRowIndexes  ~byExtendingSelection:(extend : bool ) (indexes : [`NSIndexSet] Objc.t) =
    let sel, args = (
      Objc.arg indexes "selectRowIndexes" make_pointer_from_object
      ++ Objc.arg extend "byExtendingSelection" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method selectedColumnIndexes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedColumnIndexes")[])
       : [`NSIndexSet] Objc.id))
  method selectedRowIndexes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedRowIndexes")[])
       : [`NSIndexSet] Objc.id))
  method deselectColumn (column : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deselectColumn:")
      [make_int column]) : unit)
  method deselectRow (row : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deselectRow:")
      [make_int row]) : unit)
  method selectedColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectedColumn")[])
       : int)
  method selectedRow =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "selectedRow")[])
       : int)
  method isColumnSelected (row : int) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isColumnSelected:")
      [make_int row]) : bool)
  method isRowSelected (row : int) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRowSelected:")
      [make_int row]) : bool)
  method numberOfSelectedColumns =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfSelectedColumns")[])
       : int)
  method numberOfSelectedRows =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfSelectedRows")[])
       : int)
(*  UNSUPPORTED
  method rectOfColumn (column : int) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rectOfColumn:")
      [make_int column]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method rectOfRow (row : int) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rectOfRow:")
      [make_int row]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method columnsInRect (rect : (*NSRect*) unsupported) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "columnsInRect:")
      [(*NSRect*) unsupported rect]) : (int * int))

*)
(*  UNSUPPORTED
  method rowsInRect (rect : (*NSRect*) unsupported) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "rowsInRect:")
      [(*NSRect*) unsupported rect]) : (int * int))

*)
(*  UNSUPPORTED
  method columnAtPoint (point : (*NSPoint*) unsupported) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "columnAtPoint:")
      [(*NSPoint*) unsupported point]) : int)

*)
(*  UNSUPPORTED
  method rowAtPoint (point : (*NSPoint*) unsupported) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "rowAtPoint:")
      [(*NSPoint*) unsupported point]) : int)

*)
(*  UNSUPPORTED
  method frameOfCellAtColumn  ~row:(row : int ) (column : int) =
    let sel, args = (
      Objc.arg column "frameOfCellAtColumn" make_int
      ++ Objc.arg row "row" make_int
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
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
  method setAutosaveName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutosaveName:")
      [make_pointer_from_object name]) : unit)
  method autosaveName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "autosaveName")[])
       : [`NSString] Objc.id))
  method setAutosaveTableColumns (save : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutosaveTableColumns:")
      [make_bool save]) : unit)
  method autosaveTableColumns =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autosaveTableColumns")[])
       : bool)
  method editColumn  ~row:(row : int ) ~withEvent:(theEvent : [`NSEvent] Objc.t ) ~select:(select : bool ) (column : int) =
    let sel, args = (
      Objc.arg column "editColumn" make_int
      ++ Objc.arg row "row" make_int
      ++ Objc.arg theEvent "withEvent" make_pointer_from_object
      ++ Objc.arg select "select" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method drawRow  ~clipRect:(rect : (*NSRect*) unsupported ) (row : int) =
    let sel, args = (
      Objc.arg row "drawRow" make_int
      ++ Objc.arg rect "clipRect" (*NSRect*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method highlightSelectionInClipRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "highlightSelectionInClipRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
  method drawGridInClipRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawGridInClipRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
  method drawBackgroundInClipRect (clipRect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawBackgroundInClipRect:")
      [(*NSRect*) unsupported clipRect]) : unit)

*)
  method setDrawsGrid (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDrawsGrid:")
      [make_bool flag]) : unit)
  method drawsGrid =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawsGrid")[])
       : bool)
  method selectColumn  ~byExtendingSelection:(extend : bool ) (column : int) =
    let sel, args = (
      Objc.arg column "selectColumn" make_int
      ++ Objc.arg extend "byExtendingSelection" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method selectRow  ~byExtendingSelection:(extend : bool ) (row : int) =
    let sel, args = (
      Objc.arg row "selectRow" make_int
      ++ Objc.arg extend "byExtendingSelection" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method selectedColumnEnumerator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedColumnEnumerator")[])
       : [`NSEnumerator] Objc.id))
  method selectedRowEnumerator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "selectedRowEnumerator")[])
       : [`NSEnumerator] Objc.id))
(*  UNSUPPORTED
  method dragImageForRows  ~event:(dragEvent : [`NSEvent] Objc.t ) ~dragImageOffset:(dragImageOffset : (*NSPointPointer*) unsupported ) (dragRows : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg dragRows "dragImageForRows" make_pointer_from_object
      ++ Objc.arg dragEvent "event" make_pointer_from_object
      ++ Objc.arg dragImageOffset "dragImageOffset" (*NSPointPointer*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSImage] Objc.id))

*)
  method setAutoresizesAllColumnsToFit (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutoresizesAllColumnsToFit:")
      [make_bool flag]) : unit)
  method autoresizesAllColumnsToFit =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autoresizesAllColumnsToFit")[])
       : bool)
end
