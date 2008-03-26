(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextTableBlock *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithTable_startingRow_rowSpan_startingColumn_columnSpan  (table : [`NSTextTable] Objc.t) (row : int) (rowSpan : int) (col : int) (colSpan : int) =
    let sel, args = (
      Objc.arg table "initWithTable" make_pointer_from_object
      ++ Objc.arg row "startingRow" make_int
      ++ Objc.arg rowSpan "rowSpan" make_int
      ++ Objc.arg col "startingColumn" make_int
      ++ Objc.arg colSpan "columnSpan" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method table =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "table")[])
       : [`NSTextTable] Objc.id))
  method startingRow =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "startingRow")[])
       : int)
  method rowSpan =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "rowSpan")[])
       : int)
  method startingColumn =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "startingColumn")[])
       : int)
  method columnSpan =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "columnSpan")[])
       : int)
end
