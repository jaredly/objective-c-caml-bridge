(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSShadow *)
class virtual methods = object (self)
  method virtual repr : [`NSShadow] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method shadowOffset =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "shadowOffset")[])
       : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
  method setShadowOffset (offset : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShadowOffset:")
      [(*NSSize*) unsupported offset]) : unit)

*)
  method shadowBlurRadius =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "shadowBlurRadius")[])
       : float)
  method setShadowBlurRadius (_val : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShadowBlurRadius:")
      [make_float _val]) : unit)
  method shadowColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "shadowColor")[])
       : [`NSColor] Objc.id))
  method setShadowColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShadowColor:")
      [make_pointer_from_object color]) : unit)
  method set =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "set")[])
       : unit)
end
