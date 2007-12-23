open Objc
open NSView


external init : unit -> unit = "caml_init_NSTableHeaderView"
let _ = init()
(* Class object for NSTableHeaderView *)
let class_NSTableHeaderView = object
   val o = Classes.find "NSTableHeaderView"
   method _new = (Objc.objcnew o : [`NSTableHeaderView] nativeNSObject)
end
(* Encapsulation for native instance of NSTableHeaderView *)
class native_NSTableHeaderView = fun (o : [`NSTableHeaderView] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method setTableView (tableView : [`NSTableView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTableView:")[make_pointer_from_object tableView]) : unit)
   method tableView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "tableView:")[]) : [`NSTableView] Objc.nativeNSObject)
   method draggedColumn =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "draggedColumn:")[]) : int)
   method draggedDistance =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "draggedDistance:")[]) : float)
   method resizedColumn =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "resizedColumn:")[]) : int)
(*  UNSUPPORTED
   method headerRectOfColumn (column : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "headerRectOfColumn:")[make_int column]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method columnAtPoint (point : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "columnAtPoint:")[(*NSPoint*) unsupported point]) : int)

*)
end
