(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDecimalNumber] id) -> object
  inherit Im_NSDecimalNumber.methods
  method repr = r
end

(* Class object for NSDecimalNumber *)
let c = Classes.find "NSDecimalNumber"
let _new()= (Objc.objcnew c : [`NSDecimalNumber] id)
let alloc() = (Objc.objcalloc c : [`NSDecimalNumber] id)
let decimalNumberWithMantissa  ~exponent:(exponent : int ) ~isNegative:(flag : bool ) (mantissa : int64) =
    let sel, args = (
      Objc.arg mantissa "decimalNumberWithMantissa" make_int64
      ++ Objc.arg exponent "exponent" make_int
      ++ Objc.arg flag "isNegative" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
(*  UNSUPPORTED
let decimalNumberWithDecimal (dcm : (*NSDecimal*) unsupported) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "decimalNumberWithDecimal:")
      [(*NSDecimal*) unsupported dcm]) : [`NSDecimalNumber] Objc.id))

*)
  (* skipping selector decimalNumberWithString *)
let decimalNumberWithString  ?locale:(locale : [`NSDictionary] Objc.t option) (numberValue : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg numberValue "decimalNumberWithString" make_pointer_from_object
      ++ Objc.opt_arg locale "locale" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDecimalNumber] Objc.id))
let zero () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "zero")[])
       : [`NSDecimalNumber] Objc.id))
let one () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "one")[])
       : [`NSDecimalNumber] Objc.id))
let minimumDecimalNumber () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "minimumDecimalNumber")[])
       : [`NSDecimalNumber] Objc.id))
let maximumDecimalNumber () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "maximumDecimalNumber")[])
       : [`NSDecimalNumber] Objc.id))
let notANumber () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "notANumber")[])
       : [`NSDecimalNumber] Objc.id))
let setDefaultBehavior (behavior : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultBehavior:")
      [make_pointer_from_object behavior]) : unit)
let defaultBehavior () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultBehavior")[])
       : [`NSDecimalNumber] Objc.id))
