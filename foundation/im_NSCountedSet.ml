(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCountedSet *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithCapacity (numItems : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCapacity:")
      [make_int numItems]) : [`NSObject] Objc.id)
  method initWithArray (array : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithArray:")
      [make_pointer_from_object array]) : [`NSObject] Objc.id)
  method initWithSet (set : [`NSSet] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithSet:")
      [make_pointer_from_object set]) : [`NSObject] Objc.id)
  method countForObject (_object : [`NSObject] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "countForObject:")
      [make_pointer_from_object _object]) : int)
  method objectEnumerator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectEnumerator")[])
       : [`NSEnumerator] Objc.id))
  method addObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addObject:")
      [make_pointer_from_object _object]) : unit)
  method removeObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeObject:")
      [make_pointer_from_object _object]) : unit)
end
