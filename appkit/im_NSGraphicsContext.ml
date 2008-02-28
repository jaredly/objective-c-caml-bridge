(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSGraphicsContext *)
class virtual methods = object (self)
  method virtual repr : [`NSGraphicsContext] Objc.id
  method attributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributes")[])
       : [`NSDictionary] Objc.id))
  method isDrawingToScreen =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDrawingToScreen")[])
       : bool)
  method saveGraphicsState =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "saveGraphicsState")[])
       : unit)
  method restoreGraphicsState =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "restoreGraphicsState")[])
       : unit)
  method flushGraphics =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "flushGraphics")[])
       : unit)
  method focusStack =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "focusStack")[])
       : [`void] Objc.id))
  method setFocusStack (stack : [`void] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFocusStack:")
      [make_pointer_from_object stack]) : unit)
  method graphicsPort =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "graphicsPort")[])
       : [`void] Objc.id))
  method isFlipped =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFlipped")[])
       : bool)
end
