(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSCaseInsensitivePredicateOption = 1L
let _NSDiacriticInsensitivePredicateOption = 2L


class virtual methods = object
  inherit Im_NSComparisonPredicate.methods
end

class t = fun (r :[`NSComparisonPredicate] id) -> object
  inherit methods
  inherit NSPredicate.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSComparisonPredicate *)
let c = Classes.find "NSComparisonPredicate"
let _new()= (Objc.objcnew c : [`NSComparisonPredicate] id)
let alloc() = (Objc.objcalloc c : [`NSComparisonPredicate] id)
let predicateWithLeftExpression_rightExpression_modifier_type_options  (lhs : [`NSExpression] Objc.t) (rhs : [`NSExpression] Objc.t) (modifier : int) (_type : int) (options : int) =
    let sel, args = (
      Objc.arg lhs "predicateWithLeftExpression" make_pointer_from_object
      ++ Objc.arg rhs "rightExpression" make_pointer_from_object
      ++ Objc.arg modifier "modifier" make_int
      ++ Objc.arg _type "type" make_int
      ++ Objc.arg options "options" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPredicate] Objc.id))
let predicateWithLeftExpression_rightExpression_customSelector  (lhs : [`NSExpression] Objc.t) (rhs : [`NSExpression] Objc.t) (selector : selector) =
    let sel, args = (
      Objc.arg lhs "predicateWithLeftExpression" make_pointer_from_object
      ++ Objc.arg rhs "rightExpression" make_pointer_from_object
      ++ Objc.arg selector "customSelector" make_selector
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPredicate] Objc.id))
