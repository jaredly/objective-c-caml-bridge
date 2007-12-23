open Objc
open NSPredicate


external init : unit -> unit = "caml_init_NSComparisonPredicate"
let _ = init()
(* Class object for NSComparisonPredicate *)
let class_NSComparisonPredicate = object
   val o = Classes.find "NSComparisonPredicate"
   method _new = (Objc.objcnew o : [`NSComparisonPredicate] nativeNSObject)
   method predicateWithLeftExpression  ~rightExpression:(rhs : [`NSExpression] Objc.t ) ~modifier:(modifier : int ) ~l_type:(_type : int ) ~options:(options : int ) (lhs : [`NSExpression] Objc.t) =
     let sel, args = (
       Objc.arg lhs "predicateWithLeftExpression" make_pointer_from_object
       ++ Objc.arg rhs "rightExpression" make_pointer_from_object
       ++ Objc.arg modifier "modifier" make_int
       ++ Objc.arg _type "l_type" make_int
       ++ Objc.arg options "options" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPredicate] Objc.nativeNSObject)
   (* skipping selector predicateWithLeftExpression:rightExpression:customSelector *)
end
(* Encapsulation for native instance of NSComparisonPredicate *)
class native_NSComparisonPredicate = fun (o : [`NSComparisonPredicate] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithLeftExpression  ~rightExpression:(rhs : [`NSExpression] Objc.t ) ~modifier:(modifier : int ) ~l_type:(_type : int ) ~options:(options : int ) (lhs : [`NSExpression] Objc.t) =
     let sel, args = (
       Objc.arg lhs "initWithLeftExpression" make_pointer_from_object
       ++ Objc.arg rhs "rightExpression" make_pointer_from_object
       ++ Objc.arg modifier "modifier" make_int
       ++ Objc.arg _type "l_type" make_int
       ++ Objc.arg options "options" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithLeftExpression:rightExpression:customSelector *)
   method predicateOperatorType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "predicateOperatorType:")[]) : int)
   method comparisonPredicateModifier =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "comparisonPredicateModifier:")[]) : int)
   method leftExpression =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "leftExpression:")[]) : [`NSExpression] Objc.nativeNSObject)
   method rightExpression =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "rightExpression:")[]) : [`NSExpression] Objc.nativeNSObject)
   method customSelector =
     (get_selector (Objc.invoke Objc.tag_selector o (Selector.find "customSelector:")[]) : selector)
   method options =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "options:")[]) : int)
end
