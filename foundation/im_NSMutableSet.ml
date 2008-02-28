(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableSet *)
class virtual methods = object (self)
  method virtual repr : [`NSMutableSet] Objc.id
  method addObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addObject:")
      [make_pointer_from_object _object]) : unit)
  method removeObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObject:")
      [make_pointer_from_object _object]) : unit)
end
