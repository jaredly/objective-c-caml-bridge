(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDecimalNumberHandler] id) -> object
  inherit Im_NSDecimalNumberHandler.methods
  method repr = r
end

(* Class object for NSDecimalNumberHandler *)
let c = Classes.find "NSDecimalNumberHandler"
let _new()= (Objc.objcnew c : [`NSDecimalNumberHandler] id)
let alloc() = (Objc.objcalloc c : [`NSDecimalNumberHandler] id)
let defaultDecimalNumberHandler () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultDecimalNumberHandler")[])
       : [`NSDecimalNumberHandler] Objc.id))
let decimalNumberHandlerWithRoundingMode  ~scale:(scale : int ) ~raiseOnExactness:(exact : bool ) ~raiseOnOverflow:(overflow : bool ) ~raiseOnUnderflow:(underflow : bool ) ~raiseOnDivideByZero:(divideByZero : bool ) (roundingMode : int) =
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
