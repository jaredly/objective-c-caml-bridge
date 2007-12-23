open Objc
open NSTextFieldCell


external init : unit -> unit = "caml_init_NSTableHeaderCell"
let _ = init()
(* Class object for NSTableHeaderCell *)
let class_NSTableHeaderCell = object
   val o = Classes.find "NSTableHeaderCell"
   method _new = (Objc.objcnew o : [`NSTableHeaderCell] nativeNSObject)
end
(* Encapsulation for native instance of NSTableHeaderCell *)
class native_NSTableHeaderCell = fun (o : [`NSTableHeaderCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method drawSortIndicatorWithFrame  ~inView:(controlView : [`NSView] Objc.t ) ~ascending:(ascending : bool ) ~priority:(priority : int ) (cellFrame : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg cellFrame "drawSortIndicatorWithFrame" (*NSRect*) unsupported
       ++ Objc.arg controlView "inView" make_pointer_from_object
       ++ Objc.arg ascending "ascending" make_bool
       ++ Objc.arg priority "priority" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method sortIndicatorRectForBounds (theRect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "sortIndicatorRectForBounds:")[(*NSRect*) unsupported theRect]) : (*NSRect*) unsupported)

*)
end
