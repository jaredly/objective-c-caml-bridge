(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSTextFieldCell


external init : unit -> unit = "caml_init_NSSearchFieldCell"
let _ = init()
let make_NSTextFieldCell_of_NSSearchFieldCell (o : [`NSSearchFieldCell] nativeNSObject) = (Obj.magic o : [`NSTextFieldCell] nativeNSObject)
(* Class object for NSSearchFieldCell *)
let class_NSSearchFieldCell = object
   val repr = Classes.find "NSSearchFieldCell"
   method _new = (Objc.objcnew repr : [`NSSearchFieldCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSearchFieldCell] nativeNSObject)
end
(* Encapsulation for native instance of NSSearchFieldCell *)
class native_NSSearchFieldCell = fun (o : [`NSSearchFieldCell] nativeNSObject) -> object (self)
   inherit native_NSTextFieldCell (make_NSTextFieldCell_of_NSSearchFieldCell o) as super
   method searchButtonCell =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "searchButtonCell:")[]) : [`NSButtonCell] Objc.nativeNSObject)
   method setSearchButtonCell (cell : [`NSButtonCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSearchButtonCell:")[make_pointer_from_object cell]) : unit)
   method cancelButtonCell =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "cancelButtonCell:")[]) : [`NSButtonCell] Objc.nativeNSObject)
   method setCancelButtonCell (cell : [`NSButtonCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCancelButtonCell:")[make_pointer_from_object cell]) : unit)
   method resetSearchButtonCell =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resetSearchButtonCell:")[]) : unit)
   method resetCancelButtonCell =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resetCancelButtonCell:")[]) : unit)
(*  UNSUPPORTED
   method searchTextRectForBounds (rect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "searchTextRectForBounds:")[(*NSRect*) unsupported rect]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method searchButtonRectForBounds (rect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "searchButtonRectForBounds:")[(*NSRect*) unsupported rect]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method cancelButtonRectForBounds (rect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "cancelButtonRectForBounds:")[(*NSRect*) unsupported rect]) : (*NSRect*) unsupported)

*)
   method setSearchMenuTemplate (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSearchMenuTemplate:")[make_pointer_from_object menu]) : unit)
   method searchMenuTemplate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "searchMenuTemplate:")[]) : [`NSMenu] Objc.nativeNSObject)
   method setSendsWholeSearchString (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSendsWholeSearchString:")[make_bool flag]) : unit)
   method sendsWholeSearchString =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "sendsWholeSearchString:")[]) : bool)
   method setMaximumRecents (maxRecents : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaximumRecents:")[make_int maxRecents]) : unit)
   method maximumRecents =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "maximumRecents:")[]) : int)
   method setRecentSearches (searches : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRecentSearches:")[make_pointer_from_object searches]) : unit)
   method recentSearches =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "recentSearches:")[]) : [`NSArray] Objc.nativeNSObject)
   method setRecentsAutosaveName (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRecentsAutosaveName:")[make_pointer_from_object string]) : unit)
   method recentsAutosaveName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "recentsAutosaveName:")[]) : [`NSString] Objc.nativeNSObject)
   method sendsSearchStringImmediately =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "sendsSearchStringImmediately:")[]) : bool)
   method setSendsSearchStringImmediately (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSendsSearchStringImmediately:")[make_bool flag]) : unit)
end
