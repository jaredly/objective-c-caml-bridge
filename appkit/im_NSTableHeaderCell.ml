(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTableHeaderCell *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method drawSortIndicatorWithFrame_inView_ascending_priority  (cellFrame : NSRect.t) (controlView : [`NSView] Objc.t) (ascending : bool) (priority : int) =
    let sel, args = (
      Objc.arg cellFrame "drawSortIndicatorWithFrame" make_rect
      ++ Objc.arg controlView "inView" make_pointer_from_object
      ++ Objc.arg ascending "ascending" make_bool
      ++ Objc.arg priority "priority" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method sortIndicatorRectForBounds (theRect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "sortIndicatorRectForBounds:")
      [make_rect theRect]) : NSRect.t)
end
