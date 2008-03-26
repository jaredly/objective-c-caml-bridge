(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTableColumn *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithIdentifier (identifier : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithIdentifier:")
      [make_pointer_from_object identifier]) : [`NSObject] Objc.id)
  method setIdentifier (identifier : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIdentifier:")
      [make_pointer_from_object identifier]) : unit)
  method identifier =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "identifier")[])
       : [`NSObject] Objc.id)
  method setTableView (tableView : [`NSTableView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTableView:")
      [make_pointer_from_object tableView]) : unit)
  method tableView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tableView")[])
       : [`NSTableView] Objc.id))
  method setWidth (width : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWidth:")
      [make_float width]) : unit)
  method width =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "width")[])
       : float)
  method setMinWidth (minWidth : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinWidth:")
      [make_float minWidth]) : unit)
  method minWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "minWidth")[])
       : float)
  method setMaxWidth (maxWidth : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxWidth:")
      [make_float maxWidth]) : unit)
  method maxWidth =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "maxWidth")[])
       : float)
  method setHeaderCell (cell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHeaderCell:")
      [make_pointer_from_object cell]) : unit)
  method headerCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "headerCell")[])
       : [`NSObject] Objc.id)
  method setDataCell (cell : [`NSCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDataCell:")
      [make_pointer_from_object cell]) : unit)
  method dataCell =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataCell")[])
       : [`NSObject] Objc.id)
  method dataCellForRow (row : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataCellForRow:")
      [make_int row]) : [`NSObject] Objc.id)
  method setEditable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEditable:")
      [make_bool flag]) : unit)
  method isEditable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEditable")[])
       : bool)
  method sizeToFit =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sizeToFit")[])
       : unit)
  method setSortDescriptorPrototype (sortDescriptor : [`NSSortDescriptor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSortDescriptorPrototype:")
      [make_pointer_from_object sortDescriptor]) : unit)
  method sortDescriptorPrototype =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "sortDescriptorPrototype")[])
       : [`NSSortDescriptor] Objc.id))
  method setResizingMask (resizingMask : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setResizingMask:")
      [make_int resizingMask]) : unit)
  method resizingMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "resizingMask")[])
       : int)
  method setResizable (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setResizable:")
      [make_bool flag]) : unit)
  method isResizable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isResizable")[])
       : bool)
end
