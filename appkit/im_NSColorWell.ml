(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSColorWell *)
class virtual methods = object (self)
  method virtual repr : [`NSColorWell] Objc.id
  method deactivate =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deactivate")[])
       : unit)
  method activate (exclusive : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "activate:")
      [make_bool exclusive]) : unit)
  method isActive =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isActive")[])
       : bool)
(*  UNSUPPORTED
  method drawWellInside (insideRect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawWellInside:")
      [(*NSRect*) unsupported insideRect]) : unit)

*)
  method isBordered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBordered")[])
       : bool)
  method setBordered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBordered:")
      [make_bool flag]) : unit)
  method takeColorFrom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "takeColorFrom:")
      [make_pointer_from_object sender]) : unit)
  method setColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setColor:")
      [make_pointer_from_object color]) : unit)
  method color =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "color")[])
       : [`NSColor] Objc.id))
end
