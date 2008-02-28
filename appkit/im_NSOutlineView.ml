(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSOutlineView *)
class virtual methods = object (self)
  method virtual repr : [`NSOutlineView] Objc.id
  method setOutlineTableColumn (outlineTableColumn : [`NSTableColumn] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOutlineTableColumn:")
      [make_pointer_from_object outlineTableColumn]) : unit)
  method outlineTableColumn =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "outlineTableColumn")[])
       : [`NSTableColumn] Objc.id))
  method isExpandable (item : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isExpandable:")
      [make_pointer_from_object item]) : bool)
  method expandItem  ?expandChildren:(expandChildren : bool option) (item : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg item "expandItem" make_pointer_from_object
      ++ Objc.opt_arg expandChildren "expandChildren" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector expandItem *)
  method collapseItem  ?collapseChildren:(collapseChildren : bool option) (item : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg item "collapseItem" make_pointer_from_object
      ++ Objc.opt_arg collapseChildren "collapseChildren" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector collapseItem *)
  method reloadItem  ?reloadChildren:(reloadChildren : bool option) (item : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg item "reloadItem" make_pointer_from_object
      ++ Objc.opt_arg reloadChildren "reloadChildren" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector reloadItem *)
  method itemAtRow (row : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "itemAtRow:")
      [make_int row]) : [`NSObject] Objc.id)
  method rowForItem (item : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "rowForItem:")
      [make_pointer_from_object item]) : int)
  method levelForItem (item : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "levelForItem:")
      [make_pointer_from_object item]) : int)
  method levelForRow (row : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "levelForRow:")
      [make_int row]) : int)
  method isItemExpanded (item : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isItemExpanded:")
      [make_pointer_from_object item]) : bool)
  method setIndentationPerLevel (indentationPerLevel : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIndentationPerLevel:")
      [make_float indentationPerLevel]) : unit)
  method indentationPerLevel =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "indentationPerLevel")[])
       : float)
  method setIndentationMarkerFollowsCell (drawInCell : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIndentationMarkerFollowsCell:")
      [make_bool drawInCell]) : unit)
  method indentationMarkerFollowsCell =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "indentationMarkerFollowsCell")[])
       : bool)
  method setAutoresizesOutlineColumn (resize : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutoresizesOutlineColumn:")
      [make_bool resize]) : unit)
  method autoresizesOutlineColumn =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autoresizesOutlineColumn")[])
       : bool)
  method setDropItem  ~dropChildIndex:(index : int ) (item : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg item "setDropItem" make_pointer_from_object
      ++ Objc.arg index "dropChildIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method shouldCollapseAutoExpandedItemsForDeposited (deposited : bool) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldCollapseAutoExpandedItemsForDeposited:")
      [make_bool deposited]) : bool)
  method autosaveExpandedItems =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autosaveExpandedItems")[])
       : bool)
  method setAutosaveExpandedItems (save : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutosaveExpandedItems:")
      [make_bool save]) : unit)
end
