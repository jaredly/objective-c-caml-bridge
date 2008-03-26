(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSplitView *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method adjustSubviews =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "adjustSubviews")[])
       : unit)
  method dividerThickness =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "dividerThickness")[])
       : float)
  method drawDividerInRect (aRect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawDividerInRect:")
      [make_rect aRect]) : unit)
  method setVertical (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVertical:")
      [make_bool flag]) : unit)
  method isVertical =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isVertical")[])
       : bool)
  method setIsPaneSplitter (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIsPaneSplitter:")
      [make_bool flag]) : unit)
  method isPaneSplitter =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isPaneSplitter")[])
       : bool)
  method isSubviewCollapsed (subview : [`NSView] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSubviewCollapsed:")
      [make_pointer_from_object subview]) : bool)
end
