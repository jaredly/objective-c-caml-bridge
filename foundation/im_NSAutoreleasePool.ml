(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAutoreleasePool *)
class virtual methods = object (self)
  method virtual repr : [`NSAutoreleasePool] Objc.id
  method addObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addObject:")
      [make_pointer_from_object anObject]) : unit)
  method drain =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drain")[])
       : unit)
end
