(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDecimalNumber *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithMantissa_exponent_isNegative  (mantissa : int64) (exponent : int) (flag : bool) =
    let sel, args = (
      Objc.arg mantissa "initWithMantissa" make_int64
      ++ Objc.arg exponent "exponent" make_int
      ++ Objc.arg flag "isNegative" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithDecimal (dcm : (*NSDecimal*) unsupported) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithDecimal:")
      [(*NSDecimal*) unsupported dcm]) : [`NSObject] Objc.id)

*)
  method initWithString (numberValue : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithString:")
      [make_pointer_from_object numberValue]) : [`NSObject] Objc.id)
  method initWithString_locale  (numberValue : [`NSString] Objc.t) (locale : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg numberValue "initWithString" make_pointer_from_object
      ++ Objc.arg locale "locale" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptionWithLocale:")
      [make_pointer_from_object locale]) : [`NSString] Objc.id))
(*  UNSUPPORTED
  method decimalValue =
    ((*NSDecimal*) unsupported (Objc.invoke (*NSDecimal*) Objc.tag_unsupported self#repr (Selector.find "decimalValue")[])
       : (*NSDecimal*) unsupported)

*)
  method decimalNumberByAdding (decimalNumber : [`NSDecimalNumber] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decimalNumberByAdding:")
      [make_pointer_from_object decimalNumber]) : [`NSDecimalNumber] Objc.id))
  method decimalNumberByAdding_withBehavior  (decimalNumber : [`NSDecimalNumber] Objc.t) (behavior : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg decimalNumber "decimalNumberByAdding" make_pointer_from_object
      ++ Objc.arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  method decimalNumberBySubtracting (decimalNumber : [`NSDecimalNumber] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decimalNumberBySubtracting:")
      [make_pointer_from_object decimalNumber]) : [`NSDecimalNumber] Objc.id))
  method decimalNumberBySubtracting_withBehavior  (decimalNumber : [`NSDecimalNumber] Objc.t) (behavior : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg decimalNumber "decimalNumberBySubtracting" make_pointer_from_object
      ++ Objc.arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  method decimalNumberByMultiplyingBy (decimalNumber : [`NSDecimalNumber] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decimalNumberByMultiplyingBy:")
      [make_pointer_from_object decimalNumber]) : [`NSDecimalNumber] Objc.id))
  method decimalNumberByMultiplyingBy_withBehavior  (decimalNumber : [`NSDecimalNumber] Objc.t) (behavior : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg decimalNumber "decimalNumberByMultiplyingBy" make_pointer_from_object
      ++ Objc.arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  method decimalNumberByDividingBy (decimalNumber : [`NSDecimalNumber] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decimalNumberByDividingBy:")
      [make_pointer_from_object decimalNumber]) : [`NSDecimalNumber] Objc.id))
  method decimalNumberByDividingBy_withBehavior  (decimalNumber : [`NSDecimalNumber] Objc.t) (behavior : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg decimalNumber "decimalNumberByDividingBy" make_pointer_from_object
      ++ Objc.arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  method decimalNumberByRaisingToPower (power : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decimalNumberByRaisingToPower:")
      [make_int power]) : [`NSDecimalNumber] Objc.id))
  method decimalNumberByRaisingToPower_withBehavior  (power : int) (behavior : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg power "decimalNumberByRaisingToPower" make_int
      ++ Objc.arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  method decimalNumberByMultiplyingByPowerOf10 (power : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decimalNumberByMultiplyingByPowerOf10:")
      [make_int power]) : [`NSDecimalNumber] Objc.id))
  method decimalNumberByMultiplyingByPowerOf10_withBehavior  (power : int) (behavior : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg power "decimalNumberByMultiplyingByPowerOf10" make_int
      ++ Objc.arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  method decimalNumberByRoundingAccordingToBehavior (behavior : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decimalNumberByRoundingAccordingToBehavior:")
      [make_pointer_from_object behavior]) : [`NSDecimalNumber] Objc.id))
  method compare (decimalNumber : [`NSNumber] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "compare:")
      [make_pointer_from_object decimalNumber]) : int)
  method objCType =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "objCType")[])
       : string)
  method doubleValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "doubleValue")[])
       : float)
end
