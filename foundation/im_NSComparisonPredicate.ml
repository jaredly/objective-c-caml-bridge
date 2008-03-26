(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSComparisonPredicate *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithLeftExpression_rightExpression_modifier_type_options  (lhs : [`NSExpression] Objc.t) (rhs : [`NSExpression] Objc.t) (modifier : int) (_type : int) (options : int) =
    let sel, args = (
      Objc.arg lhs "initWithLeftExpression" make_pointer_from_object
      ++ Objc.arg rhs "rightExpression" make_pointer_from_object
      ++ Objc.arg modifier "modifier" make_int
      ++ Objc.arg _type "type" make_int
      ++ Objc.arg options "options" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithLeftExpression_rightExpression_customSelector  (lhs : [`NSExpression] Objc.t) (rhs : [`NSExpression] Objc.t) (selector : selector) =
    let sel, args = (
      Objc.arg lhs "initWithLeftExpression" make_pointer_from_object
      ++ Objc.arg rhs "rightExpression" make_pointer_from_object
      ++ Objc.arg selector "customSelector" make_selector
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method predicateOperatorType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "predicateOperatorType")[])
       : int)
  method comparisonPredicateModifier =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "comparisonPredicateModifier")[])
       : int)
  method leftExpression =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "leftExpression")[])
       : [`NSExpression] Objc.id))
  method rightExpression =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "rightExpression")[])
       : [`NSExpression] Objc.id))
  method customSelector =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "customSelector")[])
       : selector)
  method options =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "options")[])
       : int)
end
