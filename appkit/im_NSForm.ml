(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSForm *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method indexOfSelectedItem =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfSelectedItem")[])
       : int)
  method setEntryWidth (width : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEntryWidth:")
      [make_float width]) : unit)
  method setInterlineSpacing (spacing : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInterlineSpacing:")
      [make_float spacing]) : unit)
  method setBordered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBordered:")
      [make_bool flag]) : unit)
  method setBezeled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezeled:")
      [make_bool flag]) : unit)
  method setTitleAlignment (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleAlignment:")
      [make_int mode]) : unit)
  method setTextAlignment (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextAlignment:")
      [make_int mode]) : unit)
  method setTitleFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleFont:")
      [make_pointer_from_object fontObj]) : unit)
  method setTextFont (fontObj : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextFont:")
      [make_pointer_from_object fontObj]) : unit)
  method cellAtIndex (index : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cellAtIndex:")
      [make_int index]) : [`NSObject] Objc.id)
  method drawCellAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawCellAtIndex:")
      [make_int index]) : unit)
  method addEntry (title : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "addEntry:")
      [make_pointer_from_object title]) : [`NSFormCell] Objc.id))
  method insertEntry_atIndex  (title : [`NSString] Objc.t) (index : int) =
    let sel, args = (
      Objc.arg title "insertEntry" make_pointer_from_object
      ++ Objc.arg index "atIndex" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSFormCell] Objc.id))
  method removeEntryAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeEntryAtIndex:")
      [make_int index]) : unit)
  method indexOfCellWithTag (aTag : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfCellWithTag:")
      [make_int aTag]) : int)
  method selectTextAtIndex (index : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "selectTextAtIndex:")
      [make_int index]) : unit)
  method setFrameSize (newSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameSize:")
      [make_size newSize]) : unit)
  method setTitleBaseWritingDirection (writingDirection : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleBaseWritingDirection:")
      [make_int writingDirection]) : unit)
  method setTextBaseWritingDirection (writingDirection : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextBaseWritingDirection:")
      [make_int writingDirection]) : unit)
end
