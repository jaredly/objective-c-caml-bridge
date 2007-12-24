(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSTextFieldCell


external init : unit -> unit = "caml_init_NSTableHeaderCell"
let _ = init()
let make_NSTextFieldCell_of_NSTableHeaderCell (o : [`NSTableHeaderCell] nativeNSObject) = (Obj.magic o : [`NSTextFieldCell] nativeNSObject)
(* Class object for NSTableHeaderCell *)
let class_NSTableHeaderCell = object
   val repr = Classes.find "NSTableHeaderCell"
   method _new = (Objc.objcnew repr : [`NSTableHeaderCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSTableHeaderCell] nativeNSObject)
end
(* Encapsulation for native instance of NSTableHeaderCell *)
class native_NSTableHeaderCell = fun (o : [`NSTableHeaderCell] nativeNSObject) -> object (self)
   inherit native_NSTextFieldCell (make_NSTextFieldCell_of_NSTableHeaderCell o) as super
(*  UNSUPPORTED
   method drawSortIndicatorWithFrame  ~inView:(controlView : [`NSView] Objc.t ) ~ascending:(ascending : bool ) ~priority:(priority : int ) (cellFrame : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg cellFrame "drawSortIndicatorWithFrame" (*NSRect*) unsupported
       ++ Objc.arg controlView "inView" make_pointer_from_object
       ++ Objc.arg ascending "ascending" make_bool
       ++ Objc.arg priority "priority" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method sortIndicatorRectForBounds (theRect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "sortIndicatorRectForBounds:")[(*NSRect*) unsupported theRect]) : (*NSRect*) unsupported)

*)
end
