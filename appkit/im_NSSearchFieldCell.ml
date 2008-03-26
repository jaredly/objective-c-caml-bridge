(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSearchFieldCell *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method searchButtonCell =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "searchButtonCell")[])
       : [`NSButtonCell] Objc.id))
  method setSearchButtonCell (cell : [`NSButtonCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSearchButtonCell:")
      [make_pointer_from_object cell]) : unit)
  method cancelButtonCell =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cancelButtonCell")[])
       : [`NSButtonCell] Objc.id))
  method setCancelButtonCell (cell : [`NSButtonCell] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCancelButtonCell:")
      [make_pointer_from_object cell]) : unit)
  method resetSearchButtonCell =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resetSearchButtonCell")[])
       : unit)
  method resetCancelButtonCell =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resetCancelButtonCell")[])
       : unit)
  method searchTextRectForBounds (rect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "searchTextRectForBounds:")
      [make_rect rect]) : NSRect.t)
  method searchButtonRectForBounds (rect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "searchButtonRectForBounds:")
      [make_rect rect]) : NSRect.t)
  method cancelButtonRectForBounds (rect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "cancelButtonRectForBounds:")
      [make_rect rect]) : NSRect.t)
  method setSearchMenuTemplate (menu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSearchMenuTemplate:")
      [make_pointer_from_object menu]) : unit)
  method searchMenuTemplate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "searchMenuTemplate")[])
       : [`NSMenu] Objc.id))
  method setSendsWholeSearchString (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSendsWholeSearchString:")
      [make_bool flag]) : unit)
  method sendsWholeSearchString =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "sendsWholeSearchString")[])
       : bool)
  method setMaximumRecents (maxRecents : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaximumRecents:")
      [make_int maxRecents]) : unit)
  method maximumRecents =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "maximumRecents")[])
       : int)
  method setRecentSearches (searches : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRecentSearches:")
      [make_pointer_from_object searches]) : unit)
  method recentSearches =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "recentSearches")[])
       : [`NSArray] Objc.id))
  method setRecentsAutosaveName (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRecentsAutosaveName:")
      [make_pointer_from_object string]) : unit)
  method recentsAutosaveName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "recentsAutosaveName")[])
       : [`NSString] Objc.id))
  method sendsSearchStringImmediately =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "sendsSearchStringImmediately")[])
       : bool)
  method setSendsSearchStringImmediately (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSendsSearchStringImmediately:")
      [make_bool flag]) : unit)
end
