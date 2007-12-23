open Objc
open NSTextFieldCell


external init : unit -> unit = "caml_init_NSSearchFieldCell"
let _ = init()
(* Class object for NSSearchFieldCell *)
let class_NSSearchFieldCell = object
   val o = Classes.find "NSSearchFieldCell"
   method _new = (Objc.objcnew o : [`NSSearchFieldCell] nativeNSObject)
end
(* Encapsulation for native instance of NSSearchFieldCell *)
class native_NSSearchFieldCell = fun (o : [`NSSearchFieldCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method searchButtonCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "searchButtonCell:")[]) : [`NSButtonCell] Objc.nativeNSObject)
   method setSearchButtonCell (cell : [`NSButtonCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSearchButtonCell:")[make_pointer_from_object cell]) : unit)
   method cancelButtonCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cancelButtonCell:")[]) : [`NSButtonCell] Objc.nativeNSObject)
   method setCancelButtonCell (cell : [`NSButtonCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCancelButtonCell:")[make_pointer_from_object cell]) : unit)
   method resetSearchButtonCell =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "resetSearchButtonCell:")[]) : unit)
   method resetCancelButtonCell =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "resetCancelButtonCell:")[]) : unit)
(*  UNSUPPORTED
   method searchTextRectForBounds (rect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "searchTextRectForBounds:")[(*NSRect*) unsupported rect]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method searchButtonRectForBounds (rect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "searchButtonRectForBounds:")[(*NSRect*) unsupported rect]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method cancelButtonRectForBounds (rect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "cancelButtonRectForBounds:")[(*NSRect*) unsupported rect]) : (*NSRect*) unsupported)

*)
   method setSearchMenuTemplate (menu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSearchMenuTemplate:")[make_pointer_from_object menu]) : unit)
   method searchMenuTemplate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "searchMenuTemplate:")[]) : [`NSMenu] Objc.nativeNSObject)
   method setSendsWholeSearchString (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSendsWholeSearchString:")[make_bool flag]) : unit)
   method sendsWholeSearchString =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "sendsWholeSearchString:")[]) : bool)
   method setMaximumRecents (maxRecents : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaximumRecents:")[make_int maxRecents]) : unit)
   method maximumRecents =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "maximumRecents:")[]) : int)
   method setRecentSearches (searches : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRecentSearches:")[make_pointer_from_object searches]) : unit)
   method recentSearches =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "recentSearches:")[]) : [`NSArray] Objc.nativeNSObject)
   method setRecentsAutosaveName (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRecentsAutosaveName:")[make_pointer_from_object string]) : unit)
   method recentsAutosaveName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "recentsAutosaveName:")[]) : [`NSString] Objc.nativeNSObject)
   method sendsSearchStringImmediately =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "sendsSearchStringImmediately:")[]) : bool)
   method setSendsSearchStringImmediately (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSendsSearchStringImmediately:")[make_bool flag]) : unit)
end
