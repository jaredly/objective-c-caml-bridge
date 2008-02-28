(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDecimalNumberHandler *)
class virtual methods = object (self)
  method virtual repr : [`NSDecimalNumberHandler] Objc.id
  method initWithRoundingMode  ~scale:(scale : int ) ~raiseOnExactness:(exact : bool ) ~raiseOnOverflow:(overflow : bool ) ~raiseOnUnderflow:(underflow : bool ) ~raiseOnDivideByZero:(divideByZero : bool ) (roundingMode : int) =
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
