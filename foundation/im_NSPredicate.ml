(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPredicate *)
class virtual methods = object (self)
  method virtual repr : [`NSPredicate] Objc.id
  method predicateWithSubstitutionVariables (variables : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "predicateWithSubstitutionVariables:")
      [make_pointer_from_object variables]) : [`NSPredicate] Objc.id))
  method evaluateWithObject (_object : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "evaluateWithObject:")
      [make_pointer_from_object _object]) : bool)
  method predicateFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "predicateFormat")[])
       : [`NSString] Objc.id))
end
