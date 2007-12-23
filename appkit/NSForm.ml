open Objc
open NSMatrix


external init : unit -> unit = "caml_init_NSForm"
let _ = init()
(* Class object for NSForm *)
let class_NSForm = object
   val o = Classes.find "NSForm"
   method _new = (Objc.objcnew o : [`NSForm] nativeNSObject)
end
(* Encapsulation for native instance of NSForm *)
class native_NSForm = fun (o : [`NSForm] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method indexOfSelectedItem =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfSelectedItem:")[]) : int)
   method setEntryWidth (width : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEntryWidth:")[make_float width]) : unit)
   method setInterlineSpacing (spacing : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setInterlineSpacing:")[make_float spacing]) : unit)
   method setBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBordered:")[make_bool flag]) : unit)
   method setBezeled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBezeled:")[make_bool flag]) : unit)
(*  UNSUPPORTED
   method setTitleAlignment (mode : (*NSTextAlignment*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitleAlignment:")[(*NSTextAlignment*) unsupported mode]) : unit)

*)
   method setTextAlignment (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextAlignment:")[make_int mode]) : unit)
   method setTitleFont (fontObj : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitleFont:")[make_pointer_from_object fontObj]) : unit)
   method setTextFont (fontObj : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextFont:")[make_pointer_from_object fontObj]) : unit)
   method cellAtIndex (index : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cellAtIndex:")[make_int index]) : [`NSObject] Objc.nativeNSObject)
   method drawCellAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "drawCellAtIndex:")[make_int index]) : unit)
   method addEntry (title : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "addEntry:")[make_pointer_from_object title]) : [`NSFormCell] Objc.nativeNSObject)
   method insertEntry  ~atIndex:(index : int ) (title : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg title "insertEntry" make_pointer_from_object
       ++ Objc.arg index "atIndex" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSFormCell] Objc.nativeNSObject)
   method removeEntryAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeEntryAtIndex:")[make_int index]) : unit)
   method indexOfCellWithTag (aTag : int) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfCellWithTag:")[make_int aTag]) : int)
   method selectTextAtIndex (index : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "selectTextAtIndex:")[make_int index]) : unit)
(*  UNSUPPORTED
   method setFrameSize (newSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFrameSize:")[(*NSSize*) unsupported newSize]) : unit)

*)
(*  UNSUPPORTED
   method setTitleBaseWritingDirection (writingDirection : (*NSWritingDirection*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitleBaseWritingDirection:")[(*NSWritingDirection*) unsupported writingDirection]) : unit)

*)
(*  UNSUPPORTED
   method setTextBaseWritingDirection (writingDirection : (*NSWritingDirection*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextBaseWritingDirection:")[(*NSWritingDirection*) unsupported writingDirection]) : unit)

*)
end