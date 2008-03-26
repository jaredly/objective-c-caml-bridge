(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
(* let_NSDateFormatterNoStyle = ?? *)
(* let_NSDateFormatterShortStyle = ?? *)
(* let_NSDateFormatterMediumStyle = ?? *)
(* let_NSDateFormatterLongStyle = ?? *)
(* let_NSDateFormatterFullStyle = ?? *)
let _NSDateFormatterBehaviorDefault = 0L
let _NSDateFormatterBehavior10_0 = 1000L
let _NSDateFormatterBehavior10_4 = 1040L


class virtual methods = object
  inherit Foundation_cati_NSDateFormatterCompatibility.methods_NSDateFormatter
  inherit Im_NSDateFormatter.methods
end

class t = fun (r :[`NSDateFormatter] id) -> object
  inherit methods
  inherit NSFormatter.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDateFormatter *)
let c = Classes.find "NSDateFormatter"
let _new()= (Objc.objcnew c : [`NSDateFormatter] id)
let alloc() = (Objc.objcalloc c : [`NSDateFormatter] id)
(* class methods for category NSDateFormatterCompatibility of NSDateFormatter *)
let defaultFormatterBehavior () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "defaultFormatterBehavior")[])
       : int)
let setDefaultFormatterBehavior (behavior : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultFormatterBehavior:")
      [make_int behavior]) : unit)
