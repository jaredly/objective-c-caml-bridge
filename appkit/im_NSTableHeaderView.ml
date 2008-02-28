(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTableHeaderView *)
class virtual methods = object (self)
  method virtual repr : [`NSTableHeaderView] Objc.id
  method setTableView (tableView : [`NSTableView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTableView:")
      [make_pointer_from_object tableView]) : unit)
  method tableView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "tableView")[])
       : [`NSTableView] Objc.id))
  method draggedColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "draggedColumn")[])
       : int)
  method draggedDistance =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "draggedDistance")[])
       : float)
  method resizedColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "resizedColumn")[])
       : int)
(*  UNSUPPORTED
  method headerRectOfColumn (column : int) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "headerRectOfColumn:")
      [make_int column]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method columnAtPoint (point : (*NSPoint*) unsupported) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "columnAtPoint:")
      [(*NSPoint*) unsupported point]) : int)

*)
end
