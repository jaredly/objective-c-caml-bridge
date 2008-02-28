(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSStatusBar *)
class virtual methods = object (self)
  method virtual repr : [`NSStatusBar] Objc.id
  method statusItemWithLength (length : float) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "statusItemWithLength:")
      [make_float length]) : [`NSStatusItem] Objc.id))
  method removeStatusItem (item : [`NSStatusItem] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeStatusItem:")
      [make_pointer_from_object item]) : unit)
  method isVertical =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isVertical")[])
       : bool)
  method thickness =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "thickness")[])
       : float)
end
