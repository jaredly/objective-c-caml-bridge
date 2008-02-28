(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSRulerSupport of NSScrollView *)
class virtual methods_NSScrollView = object (self)
  method virtual repr : [`NSScrollView] Objc.id
  method setRulersVisible (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRulersVisible:")
      [make_bool flag]) : unit)
  method rulersVisible =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "rulersVisible")[])
       : bool)
  method setHasHorizontalRuler (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasHorizontalRuler:")
      [make_bool flag]) : unit)
  method hasHorizontalRuler =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasHorizontalRuler")[])
       : bool)
  method setHasVerticalRuler (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasVerticalRuler:")
      [make_bool flag]) : unit)
  method hasVerticalRuler =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasVerticalRuler")[])
       : bool)
  method setHorizontalRulerView (ruler : [`NSRulerView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHorizontalRulerView:")
      [make_pointer_from_object ruler]) : unit)
  method horizontalRulerView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "horizontalRulerView")[])
       : [`NSRulerView] Objc.id))
  method setVerticalRulerView (ruler : [`NSRulerView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setVerticalRulerView:")
      [make_pointer_from_object ruler]) : unit)
  method verticalRulerView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "verticalRulerView")[])
       : [`NSRulerView] Objc.id))
end
