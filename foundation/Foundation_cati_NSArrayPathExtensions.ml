(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSArrayPathExtensions of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method pathsMatchingExtensions (filterTypes : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "pathsMatchingExtensions:")
      [make_pointer_from_object filterTypes]) : [`NSArray] Objc.id))
end
