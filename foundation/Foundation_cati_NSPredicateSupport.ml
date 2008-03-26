(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSPredicateSupport of NSMutableArray *)
class virtual methods_NSMutableArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method filterUsingPredicate (predicate : [`NSPredicate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "filterUsingPredicate:")
      [make_pointer_from_object predicate]) : unit)
end
(* instance methods for category NSPredicateSupport of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method filteredArrayUsingPredicate (predicate : [`NSPredicate] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "filteredArrayUsingPredicate:")
      [make_pointer_from_object predicate]) : [`NSArray] Objc.id))
end
