(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSStatusItem *)
class virtual methods = object (self)
  method virtual repr : [`NSStatusItem] Objc.id
  method statusBar =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "statusBar")[])
       : [`NSStatusBar] Objc.id))
  method length =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "length")[])
       : float)
  method setLength (length : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLength:")
      [make_float length]) : unit)
end
