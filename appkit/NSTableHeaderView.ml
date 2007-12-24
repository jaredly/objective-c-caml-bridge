(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSView


external init : unit -> unit = "caml_init_NSTableHeaderView"
let _ = init()
let make_NSView_of_NSTableHeaderView (o : [`NSTableHeaderView] nativeNSObject) = (Obj.magic o : [`NSView] nativeNSObject)
(* Class object for NSTableHeaderView *)
let class_NSTableHeaderView = object
   val repr = Classes.find "NSTableHeaderView"
   method _new = (Objc.objcnew repr : [`NSTableHeaderView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTableHeaderView] nativeNSObject)
end
(* Encapsulation for native instance of NSTableHeaderView *)
class native_NSTableHeaderView = fun (o : [`NSTableHeaderView] nativeNSObject) -> object (self)
   inherit native_NSView (make_NSView_of_NSTableHeaderView o) as super
   method setTableView (tableView : [`NSTableView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTableView:")[make_pointer_from_object tableView]) : unit)
   method tableView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "tableView:")[]) : [`NSTableView] Objc.nativeNSObject)
   method draggedColumn =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "draggedColumn:")[]) : int)
   method draggedDistance =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "draggedDistance:")[]) : float)
   method resizedColumn =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "resizedColumn:")[]) : int)
(*  UNSUPPORTED
   method headerRectOfColumn (column : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "headerRectOfColumn:")[make_int column]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method columnAtPoint (point : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "columnAtPoint:")[(*NSPoint*) unsupported point]) : int)

*)
end
