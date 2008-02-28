(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSStatusItemView of NSStatusItem *)
class virtual methods_NSStatusItem = object (self)
  method virtual repr : [`NSStatusItem] Objc.id
  method view =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "view")[])
       : [`NSView] Objc.id))
  method setView (view : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setView:")
      [make_pointer_from_object view]) : unit)
end
