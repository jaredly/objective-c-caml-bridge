(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDecimalNumber *)
class virtual methods = object (self)
  method virtual repr : [`NSDecimalNumber] Objc.id
  method initWithMantissa  ~exponent:(exponent : int ) ~isNegative:(flag : bool ) (mantissa : int64) =
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
  (* skipping selector initWithString *)
  method initWithString  ?locale:(locale : [`NSDictionary] Objc.t option) (numberValue : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg numberValue "initWithString" make_pointer_from_object
      ++ Objc.opt_arg locale "locale" make_pointer_from_object
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
  (* skipping selector decimalNumberByAdding *)
  method decimalNumberByAdding  ?withBehavior:(behavior : [`NSObject] Objc.t option) (decimalNumber : [`NSDecimalNumber] Objc.t) =
    let sel, args = (
      Objc.arg decimalNumber "decimalNumberByAdding" make_pointer_from_object
      ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  (* skipping selector decimalNumberBySubtracting *)
  method decimalNumberBySubtracting  ?withBehavior:(behavior : [`NSObject] Objc.t option) (decimalNumber : [`NSDecimalNumber] Objc.t) =
    let sel, args = (
      Objc.arg decimalNumber "decimalNumberBySubtracting" make_pointer_from_object
      ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  (* skipping selector decimalNumberByMultiplyingBy *)
  method decimalNumberByMultiplyingBy  ?withBehavior:(behavior : [`NSObject] Objc.t option) (decimalNumber : [`NSDecimalNumber] Objc.t) =
    let sel, args = (
      Objc.arg decimalNumber "decimalNumberByMultiplyingBy" make_pointer_from_object
      ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  (* skipping selector decimalNumberByDividingBy *)
  method decimalNumberByDividingBy  ?withBehavior:(behavior : [`NSObject] Objc.t option) (decimalNumber : [`NSDecimalNumber] Objc.t) =
    let sel, args = (
      Objc.arg decimalNumber "decimalNumberByDividingBy" make_pointer_from_object
      ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  (* skipping selector decimalNumberByRaisingToPower *)
  method decimalNumberByRaisingToPower  ?withBehavior:(behavior : [`NSObject] Objc.t option) (power : int) =
    let sel, args = (
      Objc.arg power "decimalNumberByRaisingToPower" make_int
      ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
  (* skipping selector decimalNumberByMultiplyingByPowerOf10 *)
  method decimalNumberByMultiplyingByPowerOf10  ?withBehavior:(behavior : [`NSObject] Objc.t option) (power : int) =
    let sel, args = (
      Objc.arg power "decimalNumberByMultiplyingByPowerOf10" make_int
      ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
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
