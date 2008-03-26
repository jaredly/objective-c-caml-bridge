(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSSubmenuAction of NSMenu *)
class virtual methods_NSMenu = object (self)
  method virtual repr : [`NSObject] Objc.id
  method submenuAction (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "submenuAction:")
      [make_pointer_from_object sender]) : unit)
end
