(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSDecimalNumberHandler.methods
end

class t = fun (r :[`NSDecimalNumberHandler] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDecimalNumberHandler *)
let c = Classes.find "NSDecimalNumberHandler"
let _new()= (Objc.objcnew c : [`NSDecimalNumberHandler] id)
let alloc() = (Objc.objcalloc c : [`NSDecimalNumberHandler] id)
let defaultDecimalNumberHandler () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultDecimalNumberHandler")[])
       : [`NSDecimalNumberHandler] Objc.id))
let decimalNumberHandlerWithRoundingMode_scale_raiseOnExactness_raiseOnOverflow_raiseOnUnderflow_raiseOnDivideByZero  (roundingMode : int) (scale : int) (exact : bool) (overflow : bool) (underflow : bool) (divideByZero : bool) =
    let sel, args = (
      Objc.arg roundingMode "decimalNumberHandlerWithRoundingMode" make_int
      ++ Objc.arg scale "scale" make_int
      ++ Objc.arg exact "raiseOnExactness" make_bool
      ++ Objc.arg overflow "raiseOnOverflow" make_bool
      ++ Objc.arg underflow "raiseOnUnderflow" make_bool
      ++ Objc.arg divideByZero "raiseOnDivideByZero" make_bool
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDecimalNumberHandler] Objc.id))
