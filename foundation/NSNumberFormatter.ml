(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
(* let_NSNumberFormatterNoStyle = ?? *)
(* let_NSNumberFormatterDecimalStyle = ?? *)
(* let_NSNumberFormatterCurrencyStyle = ?? *)
(* let_NSNumberFormatterPercentStyle = ?? *)
(* let_NSNumberFormatterScientificStyle = ?? *)
(* let_NSNumberFormatterSpellOutStyle = ?? *)
let _NSNumberFormatterBehaviorDefault = 0L
let _NSNumberFormatterBehavior10_0 = 1000L
let _NSNumberFormatterBehavior10_4 = 1040L
(* let_NSNumberFormatterPadBeforePrefix = ?? *)
(* let_NSNumberFormatterPadAfterPrefix = ?? *)
(* let_NSNumberFormatterPadBeforeSuffix = ?? *)
(* let_NSNumberFormatterPadAfterSuffix = ?? *)
(* let_NSNumberFormatterRoundCeiling = ?? *)
(* let_NSNumberFormatterRoundFloor = ?? *)
(* let_NSNumberFormatterRoundDown = ?? *)
(* let_NSNumberFormatterRoundUp = ?? *)
(* let_NSNumberFormatterRoundHalfEven = ?? *)
(* let_NSNumberFormatterRoundHalfDown = ?? *)
(* let_NSNumberFormatterRoundHalfUp = ?? *)


class t = fun (r :[`NSNumberFormatter] id) -> object
  inherit Cati_NSNumberFormatterCompatibility.methods_NSNumberFormatter
  inherit Im_NSNumberFormatter.methods
  method repr = r
end

(* Class object for NSNumberFormatter *)
let c = Classes.find "NSNumberFormatter"
let _new()= (Objc.objcnew c : [`NSNumberFormatter] id)
let alloc() = (Objc.objcalloc c : [`NSNumberFormatter] id)
(* class methods for category NSNumberFormatterCompatibility of NSNumberFormatter *)
let defaultFormatterBehavior () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "defaultFormatterBehavior")[])
       : int)
let setDefaultFormatterBehavior (behavior : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultFormatterBehavior:")
      [make_int behavior]) : unit)
