(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDecimalNumberHandler *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithRoundingMode_scale_raiseOnExactness_raiseOnOverflow_raiseOnUnderflow_raiseOnDivideByZero  (roundingMode : int) (scale : int) (exact : bool) (overflow : bool) (underflow : bool) (divideByZero : bool) =
    let sel, args = (
      Objc.arg roundingMode "initWithRoundingMode" make_int
      ++ Objc.arg scale "scale" make_int
      ++ Objc.arg exact "raiseOnExactness" make_bool
      ++ Objc.arg overflow "raiseOnOverflow" make_bool
      ++ Objc.arg underflow "raiseOnUnderflow" make_bool
      ++ Objc.arg divideByZero "raiseOnDivideByZero" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
