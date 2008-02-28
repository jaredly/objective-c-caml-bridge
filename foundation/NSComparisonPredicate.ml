(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSCaseInsensitivePredicateOption = 1L
let _NSDiacriticInsensitivePredicateOption = 2L


class t = fun (r :[`NSComparisonPredicate] id) -> object
  inherit Im_NSComparisonPredicate.methods
  method repr = r
end

(* Class object for NSComparisonPredicate *)
let c = Classes.find "NSComparisonPredicate"
let _new()= (Objc.objcnew c : [`NSComparisonPredicate] id)
let alloc() = (Objc.objcalloc c : [`NSComparisonPredicate] id)
let predicateWithLeftExpression  ~rightExpression:(rhs : [`NSExpression] Objc.t ) ~modifier:(modifier : int ) ~l_type:(_type : int ) ~options:(options : int ) (lhs : [`NSExpression] Objc.t) =
    let sel, args = (
      Objc.arg lhs "predicateWithLeftExpression" make_pointer_from_object
      ++ Objc.arg rhs "rightExpression" make_pointer_from_object
      ++ Objc.arg modifier "modifier" make_int
      ++ Objc.arg _type "l_type" make_int
      ++ Objc.arg options "options" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPredicate] Objc.id))
  (* skipping selector predicateWithLeftExpression:rightExpression:customSelector *)
