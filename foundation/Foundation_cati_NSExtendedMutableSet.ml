(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedMutableSet of NSMutableSet *)
class virtual methods_NSMutableSet = object (self)
  method virtual repr : [`NSObject] Objc.id
  method addObjectsFromArray (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addObjectsFromArray:")
      [make_pointer_from_object array]) : unit)
  method intersectSet (otherSet : [`NSSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "intersectSet:")
      [make_pointer_from_object otherSet]) : unit)
  method minusSet (otherSet : [`NSSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "minusSet:")
      [make_pointer_from_object otherSet]) : unit)
  method removeAllObjects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllObjects")[])
       : unit)
  method unionSet (otherSet : [`NSSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unionSet:")
      [make_pointer_from_object otherSet]) : unit)
  method setSet (otherSet : [`NSSet] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSet:")
      [make_pointer_from_object otherSet]) : unit)
end
