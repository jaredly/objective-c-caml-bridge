open Objc
open NSObject


external init : unit -> unit = "caml_init_NSTableColumn"
let _ = init()
(* Class object for NSTableColumn *)
let class_NSTableColumn = object
   val o = Classes.find "NSTableColumn"
   method _new = (Objc.objcnew o : [`NSTableColumn] nativeNSObject)
end
(* Encapsulation for native instance of NSTableColumn *)
class native_NSTableColumn = fun (o : [`NSTableColumn] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithIdentifier (identifier : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithIdentifier:")[make_pointer_from_object identifier]) : [`NSObject] Objc.nativeNSObject)
   method setIdentifier (identifier : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIdentifier:")[make_pointer_from_object identifier]) : unit)
   method identifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "identifier:")[]) : [`NSObject] Objc.nativeNSObject)
   method setTableView (tableView : [`NSTableView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTableView:")[make_pointer_from_object tableView]) : unit)
   method tableView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "tableView:")[]) : [`NSTableView] Objc.nativeNSObject)
   method setWidth (width : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWidth:")[make_float width]) : unit)
   method width =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "width:")[]) : float)
   method setMinWidth (minWidth : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinWidth:")[make_float minWidth]) : unit)
   method minWidth =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "minWidth:")[]) : float)
   method setMaxWidth (maxWidth : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaxWidth:")[make_float maxWidth]) : unit)
   method maxWidth =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "maxWidth:")[]) : float)
   method setHeaderCell (cell : [`NSCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHeaderCell:")[make_pointer_from_object cell]) : unit)
   method headerCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "headerCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDataCell (cell : [`NSCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDataCell:")[make_pointer_from_object cell]) : unit)
   method dataCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dataCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method dataCellForRow (row : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dataCellForRow:")[make_int row]) : [`NSObject] Objc.nativeNSObject)
   method setEditable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEditable:")[make_bool flag]) : unit)
   method isEditable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEditable:")[]) : bool)
   method sizeToFit =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "sizeToFit:")[]) : unit)
   method setSortDescriptorPrototype (sortDescriptor : [`NSSortDescriptor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSortDescriptorPrototype:")[make_pointer_from_object sortDescriptor]) : unit)
   method sortDescriptorPrototype =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sortDescriptorPrototype:")[]) : [`NSSortDescriptor] Objc.nativeNSObject)
   method setResizingMask (resizingMask : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setResizingMask:")[make_int resizingMask]) : unit)
   method resizingMask =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "resizingMask:")[]) : int)
   method setResizable (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setResizable:")[make_bool flag]) : unit)
   method isResizable =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isResizable:")[]) : bool)
end
