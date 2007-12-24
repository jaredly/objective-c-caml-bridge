(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSValue
open NSScanner
open NSDecimal
open NSDictionary


external init : unit -> unit = "caml_init_NSDecimalNumber"
let _ = init()
let make_NSNumber_of_NSDecimalNumber (o : [`NSDecimalNumber] nativeNSObject) = (Obj.magic o : [`NSNumber] nativeNSObject)
(* Class object for NSDecimalNumber *)
let class_NSDecimalNumber = object
   val repr = Classes.find "NSDecimalNumber"
   method _new = (Objc.objcnew repr : [`NSDecimalNumber] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDecimalNumber] nativeNSObject)
   method decimalNumberWithMantissa  ~exponent:(exponent : int ) ~isNegative:(flag : bool ) (mantissa : int64) =
     let sel, args = (
       Objc.arg mantissa "decimalNumberWithMantissa" make_int64
       ++ Objc.arg exponent "exponent" make_int
       ++ Objc.arg flag "isNegative" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumber] Objc.nativeNSObject)
(*  UNSUPPORTED
   method decimalNumberWithDecimal (dcm : (*NSDecimal*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "decimalNumberWithDecimal:")[(*NSDecimal*) unsupported dcm]) : [`NSDecimalNumber] Objc.nativeNSObject)

*)
   (* skipping selector decimalNumberWithString *)
   method decimalNumberWithString  ?locale:(locale : [`NSDictionary] Objc.t option) (numberValue : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg numberValue "decimalNumberWithString" make_pointer_from_object
       ++ Objc.opt_arg locale "locale" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumber] Objc.nativeNSObject)
   method zero =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "zero:")[]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method one =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "one:")[]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method minimumDecimalNumber =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "minimumDecimalNumber:")[]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method maximumDecimalNumber =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "maximumDecimalNumber:")[]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method notANumber =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "notANumber:")[]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method setDefaultBehavior (behavior : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setDefaultBehavior:")[make_pointer_from_object behavior]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method defaultBehavior =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultBehavior:")[]) : [`NSDecimalNumber] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDecimalNumber *)
class native_NSDecimalNumber = fun (o : [`NSDecimalNumber] nativeNSObject) -> object (self)
   inherit native_NSNumber (make_NSNumber_of_NSDecimalNumber o) as super
   method initWithMantissa  ~exponent:(exponent : int ) ~isNegative:(flag : bool ) (mantissa : int64) =
     let sel, args = (
       Objc.arg mantissa "initWithMantissa" make_int64
       ++ Objc.arg exponent "exponent" make_int
       ++ Objc.arg flag "isNegative" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method initWithDecimal (dcm : (*NSDecimal*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithDecimal:")[(*NSDecimal*) unsupported dcm]) : [`NSObject] Objc.nativeNSObject)

*)
   (* skipping selector initWithString *)
   method initWithString  ?locale:(locale : [`NSDictionary] Objc.t option) (numberValue : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg numberValue "initWithString" make_pointer_from_object
       ++ Objc.opt_arg locale "locale" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "descriptionWithLocale:")[make_pointer_from_object locale]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method decimalValue =
     ((*NSDecimal*) unsupported (Objc.invoke (*NSDecimal*) Objc.tag_unsupported repr (Selector.find "decimalValue:")[]) : (*NSDecimal*) unsupported)

*)
   (* skipping selector decimalNumberByAdding *)
   method decimalNumberByAdding  ?withBehavior:(behavior : [`NSObject] Objc.t option) (decimalNumber : [`NSDecimalNumber] Objc.t) =
     let sel, args = (
       Objc.arg decimalNumber "decimalNumberByAdding" make_pointer_from_object
       ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumber] Objc.nativeNSObject)
   (* skipping selector decimalNumberBySubtracting *)
   method decimalNumberBySubtracting  ?withBehavior:(behavior : [`NSObject] Objc.t option) (decimalNumber : [`NSDecimalNumber] Objc.t) =
     let sel, args = (
       Objc.arg decimalNumber "decimalNumberBySubtracting" make_pointer_from_object
       ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumber] Objc.nativeNSObject)
   (* skipping selector decimalNumberByMultiplyingBy *)
   method decimalNumberByMultiplyingBy  ?withBehavior:(behavior : [`NSObject] Objc.t option) (decimalNumber : [`NSDecimalNumber] Objc.t) =
     let sel, args = (
       Objc.arg decimalNumber "decimalNumberByMultiplyingBy" make_pointer_from_object
       ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumber] Objc.nativeNSObject)
   (* skipping selector decimalNumberByDividingBy *)
   method decimalNumberByDividingBy  ?withBehavior:(behavior : [`NSObject] Objc.t option) (decimalNumber : [`NSDecimalNumber] Objc.t) =
     let sel, args = (
       Objc.arg decimalNumber "decimalNumberByDividingBy" make_pointer_from_object
       ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumber] Objc.nativeNSObject)
   (* skipping selector decimalNumberByRaisingToPower *)
   method decimalNumberByRaisingToPower  ?withBehavior:(behavior : [`NSObject] Objc.t option) (power : int) =
     let sel, args = (
       Objc.arg power "decimalNumberByRaisingToPower" make_int
       ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumber] Objc.nativeNSObject)
   (* skipping selector decimalNumberByMultiplyingByPowerOf10 *)
   method decimalNumberByMultiplyingByPowerOf10  ?withBehavior:(behavior : [`NSObject] Objc.t option) (power : int) =
     let sel, args = (
       Objc.arg power "decimalNumberByMultiplyingByPowerOf10" make_int
       ++ Objc.opt_arg behavior "withBehavior" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumber] Objc.nativeNSObject)
   method decimalNumberByRoundingAccordingToBehavior (behavior : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "decimalNumberByRoundingAccordingToBehavior:")[make_pointer_from_object behavior]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method compare (decimalNumber : [`NSNumber] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "compare:")[make_pointer_from_object decimalNumber]) : int)
   method objCType =
     (get_string (Objc.invoke Objc.tag_string repr (Selector.find "objCType:")[]) : string)
   method doubleValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "doubleValue:")[]) : float)
end
let make_NSObject_of_NSDecimalNumberHandler (o : [`NSDecimalNumberHandler] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSDecimalNumberHandler *)
let class_NSDecimalNumberHandler = object
   val repr = Classes.find "NSDecimalNumberHandler"
   method _new = (Objc.objcnew repr : [`NSDecimalNumberHandler] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDecimalNumberHandler] nativeNSObject)
   method defaultDecimalNumberHandler =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultDecimalNumberHandler:")[]) : [`NSDecimalNumberHandler] Objc.nativeNSObject)
   method decimalNumberHandlerWithRoundingMode  ~scale:(scale : int ) ~raiseOnExactness:(exact : bool ) ~raiseOnOverflow:(overflow : bool ) ~raiseOnUnderflow:(underflow : bool ) ~raiseOnDivideByZero:(divideByZero : bool ) (roundingMode : int) =
     let sel, args = (
       Objc.arg roundingMode "decimalNumberHandlerWithRoundingMode" make_int
       ++ Objc.arg scale "scale" make_int
       ++ Objc.arg exact "raiseOnExactness" make_bool
       ++ Objc.arg overflow "raiseOnOverflow" make_bool
       ++ Objc.arg underflow "raiseOnUnderflow" make_bool
       ++ Objc.arg divideByZero "raiseOnDivideByZero" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSDecimalNumberHandler] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDecimalNumberHandler *)
class native_NSDecimalNumberHandler = fun (o : [`NSDecimalNumberHandler] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSDecimalNumberHandler o) as super
   method initWithRoundingMode  ~scale:(scale : int ) ~raiseOnExactness:(exact : bool ) ~raiseOnOverflow:(overflow : bool ) ~raiseOnUnderflow:(underflow : bool ) ~raiseOnDivideByZero:(divideByZero : bool ) (roundingMode : int) =
     let sel, args = (
       Objc.arg roundingMode "initWithRoundingMode" make_int
       ++ Objc.arg scale "scale" make_int
       ++ Objc.arg exact "raiseOnExactness" make_bool
       ++ Objc.arg overflow "raiseOnOverflow" make_bool
       ++ Objc.arg underflow "raiseOnUnderflow" make_bool
       ++ Objc.arg divideByZero "raiseOnDivideByZero" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSNumber *)
let class_NSNumber = object
   val repr = Classes.find "NSNumber"
   method _new = (Objc.objcnew repr : [`NSNumber] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNumber] nativeNSObject)
(* methods for category NSDecimalNumberExtensions *)
end
(* Encapsulation for native instance of NSNumber *)
class native_NSNumber = fun (o : [`NSNumber] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSDecimalNumberExtensions *)
(*  UNSUPPORTED
   method decimalValue =
     ((*NSDecimal*) unsupported (Objc.invoke (*NSDecimal*) Objc.tag_unsupported repr (Selector.find "decimalValue:")[]) : (*NSDecimal*) unsupported)

*)
end
(* Class object for NSScanner *)
let class_NSScanner = object
   val repr = Classes.find "NSScanner"
   method _new = (Objc.objcnew repr : [`NSScanner] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScanner] nativeNSObject)
(* methods for category NSDecimalNumberScanning *)
end
(* Encapsulation for native instance of NSScanner *)
class native_NSScanner = fun (o : [`NSScanner] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSDecimalNumberScanning *)
   method scanDecimal (dcm : [`NSDecimal] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scanDecimal:")[make_pointer_from_object dcm]) : bool)
end
