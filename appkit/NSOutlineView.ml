(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSTableView


external init : unit -> unit = "caml_init_NSOutlineView"
let _ = init()
(* ENUMS *)
let _NSOutlineViewDropOnItemIndex = -1L


let make_NSTableView_of_NSOutlineView (o : [`NSOutlineView] nativeNSObject) = (Obj.magic o : [`NSTableView] nativeNSObject)
(* Class object for NSOutlineView *)
let class_NSOutlineView = object
   val repr = Classes.find "NSOutlineView"
   method _new = (Objc.objcnew repr : [`NSOutlineView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSOutlineView] nativeNSObject)
end
(* Encapsulation for native instance of NSOutlineView *)
class native_NSOutlineView = fun (o : [`NSOutlineView] nativeNSObject) -> object (self)
   inherit native_NSTableView (make_NSTableView_of_NSOutlineView o) as super
   method setOutlineTableColumn (outlineTableColumn : [`NSTableColumn] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOutlineTableColumn:")[make_pointer_from_object outlineTableColumn]) : unit)
   method outlineTableColumn =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "outlineTableColumn:")[]) : [`NSTableColumn] Objc.nativeNSObject)
   method isExpandable (item : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isExpandable:")[make_pointer_from_object item]) : bool)
   method expandItem  ?expandChildren:(expandChildren : bool option) (item : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg item "expandItem" make_pointer_from_object
       ++ Objc.opt_arg expandChildren "expandChildren" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector expandItem *)
   method collapseItem  ?collapseChildren:(collapseChildren : bool option) (item : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg item "collapseItem" make_pointer_from_object
       ++ Objc.opt_arg collapseChildren "collapseChildren" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector collapseItem *)
   method reloadItem  ?reloadChildren:(reloadChildren : bool option) (item : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg item "reloadItem" make_pointer_from_object
       ++ Objc.opt_arg reloadChildren "reloadChildren" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector reloadItem *)
   method itemAtRow (row : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "itemAtRow:")[make_int row]) : [`NSObject] Objc.nativeNSObject)
   method rowForItem (item : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "rowForItem:")[make_pointer_from_object item]) : int)
   method levelForItem (item : [`NSObject] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "levelForItem:")[make_pointer_from_object item]) : int)
   method levelForRow (row : int) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "levelForRow:")[make_int row]) : int)
   method isItemExpanded (item : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isItemExpanded:")[make_pointer_from_object item]) : bool)
   method setIndentationPerLevel (indentationPerLevel : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIndentationPerLevel:")[make_float indentationPerLevel]) : unit)
   method indentationPerLevel =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "indentationPerLevel:")[]) : float)
   method setIndentationMarkerFollowsCell (drawInCell : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIndentationMarkerFollowsCell:")[make_bool drawInCell]) : unit)
   method indentationMarkerFollowsCell =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "indentationMarkerFollowsCell:")[]) : bool)
   method setAutoresizesOutlineColumn (resize : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutoresizesOutlineColumn:")[make_bool resize]) : unit)
   method autoresizesOutlineColumn =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autoresizesOutlineColumn:")[]) : bool)
   method setDropItem  ~dropChildIndex:(index : int ) (item : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg item "setDropItem" make_pointer_from_object
       ++ Objc.arg index "dropChildIndex" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method shouldCollapseAutoExpandedItemsForDeposited (deposited : bool) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "shouldCollapseAutoExpandedItemsForDeposited:")[make_bool deposited]) : bool)
   method autosaveExpandedItems =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autosaveExpandedItems:")[]) : bool)
   method setAutosaveExpandedItems (save : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutosaveExpandedItems:")[make_bool save]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSOutlineViewNotifications *)
(* methods for category NSOutlineViewDelegate *)
(* methods for category NSOutlineViewDataSource *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSOutlineViewNotifications *)
   method outlineViewSelectionDidChange (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outlineViewSelectionDidChange:")[make_pointer_from_object notification]) : unit)
   method outlineViewColumnDidMove (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outlineViewColumnDidMove:")[make_pointer_from_object notification]) : unit)
   method outlineViewColumnDidResize (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outlineViewColumnDidResize:")[make_pointer_from_object notification]) : unit)
   method outlineViewSelectionIsChanging (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outlineViewSelectionIsChanging:")[make_pointer_from_object notification]) : unit)
   method outlineViewItemWillExpand (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outlineViewItemWillExpand:")[make_pointer_from_object notification]) : unit)
   method outlineViewItemDidExpand (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outlineViewItemDidExpand:")[make_pointer_from_object notification]) : unit)
   method outlineViewItemWillCollapse (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outlineViewItemWillCollapse:")[make_pointer_from_object notification]) : unit)
   method outlineViewItemDidCollapse (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "outlineViewItemDidCollapse:")[make_pointer_from_object notification]) : unit)
(* methods for category NSOutlineViewDelegate *)
   (* skipping selector outlineView:willDisplayCell:forTableColumn:item *)
   (* skipping selector outlineView:shouldEditTableColumn:item *)
   method selectionShouldChangeInOutlineView (outlineView : [`NSOutlineView] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "selectionShouldChangeInOutlineView:")[make_pointer_from_object outlineView]) : bool)
   (* skipping selector outlineView:shouldSelectItem *)
   (* skipping selector outlineView:shouldSelectTableColumn *)
   (* skipping selector outlineView:mouseDownInHeaderOfTableColumn *)
   (* skipping selector outlineView:didClickTableColumn *)
   (* skipping selector outlineView:didDragTableColumn *)
(*  UNSUPPORTED
   method outlineView  ?toolTipForCell:(cell : [`NSCell] Objc.t option) ?rect:(rect : (*NSRectPointer*) unsupported option) ?tableColumn:(tc : [`NSTableColumn] Objc.t option) ?item:(item : [`NSObject] Objc.t option) ?mouseLocation:(mouseLocation : (*NSPoint*) unsupported option) (ov : [`NSOutlineView] Objc.t) =
     let sel, args = (
       Objc.arg ov "outlineView" make_pointer_from_object
       ++ Objc.opt_arg cell "toolTipForCell" make_pointer_from_object
       ++ Objc.opt_arg rect "rect" (*NSRectPointer*) unsupported
       ++ Objc.opt_arg tc "tableColumn" make_pointer_from_object
       ++ Objc.opt_arg item "item" make_pointer_from_object
       ++ Objc.opt_arg mouseLocation "mouseLocation" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)

*)
   (* skipping selector outlineView:heightOfRowByItem *)
   (* skipping selector outlineView:shouldExpandItem *)
   (* skipping selector outlineView:shouldCollapseItem *)
   (* skipping selector outlineView:willDisplayOutlineCell:forTableColumn:item *)
(* methods for category NSOutlineViewDataSource *)
   (* skipping selector outlineView:child:ofItem *)
   (* skipping selector outlineView:isItemExpandable *)
   (* skipping selector outlineView:numberOfChildrenOfItem *)
   (* skipping selector outlineView:objectValueForTableColumn:byItem *)
   (* skipping selector outlineView:setObjectValue:forTableColumn:byItem *)
   (* skipping selector outlineView:itemForPersistentObject *)
   (* skipping selector outlineView:persistentObjectForItem *)
   (* skipping selector outlineView:sortDescriptorsDidChange *)
   (* skipping selector outlineView:writeItems:toPasteboard *)
   (* skipping selector outlineView:validateDrop:proposedItem:proposedChildIndex *)
   (* skipping selector outlineView:acceptDrop:item:childIndex *)
   (* skipping selector outlineView:namesOfPromisedFilesDroppedAtDestination:forDraggedItems *)
end
