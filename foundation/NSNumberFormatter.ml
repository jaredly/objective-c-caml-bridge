open Objc
open NSFormatter


external init : unit -> unit = "caml_init_NSNumberFormatter"
let _ = init()
(* Class object for NSNumberFormatter *)
let class_NSNumberFormatter = object
   val o = Classes.find "NSNumberFormatter"
   method _new = (Objc.objcnew o : [`NSNumberFormatter] nativeNSObject)
(* methods for category NSNumberFormatterCompatibility *)
   method defaultFormatterBehavior =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultFormatterBehavior:")[]) : [`NSNumberFormatter] Objc.nativeNSObject)
   method setDefaultFormatterBehavior (behavior : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultFormatterBehavior:")[make_int behavior]) : [`NSNumberFormatter] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSNumberFormatter *)
class native_NSNumberFormatter = fun (o : [`NSNumberFormatter] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSNumberFormatterCompatibility *)
   method hasThousandSeparators =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "hasThousandSeparators:")[]) : bool)
   method setHasThousandSeparators (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHasThousandSeparators:")[make_bool flag]) : unit)
   method thousandSeparator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "thousandSeparator:")[]) : [`NSString] Objc.nativeNSObject)
   method setThousandSeparator (newSeparator : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setThousandSeparator:")[make_pointer_from_object newSeparator]) : unit)
   method localizesFormat =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "localizesFormat:")[]) : bool)
   method setLocalizesFormat (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLocalizesFormat:")[make_bool flag]) : unit)
   method format =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "format:")[]) : [`NSString] Objc.nativeNSObject)
   method setFormat (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFormat:")[make_pointer_from_object string]) : unit)
   method attributedStringForZero =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributedStringForZero:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method setAttributedStringForZero (newAttributedString : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAttributedStringForZero:")[make_pointer_from_object newAttributedString]) : unit)
   method attributedStringForNil =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributedStringForNil:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method setAttributedStringForNil (newAttributedString : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAttributedStringForNil:")[make_pointer_from_object newAttributedString]) : unit)
   method attributedStringForNotANumber =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "attributedStringForNotANumber:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method setAttributedStringForNotANumber (newAttributedString : [`NSAttributedString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAttributedStringForNotANumber:")[make_pointer_from_object newAttributedString]) : unit)
   method roundingBehavior =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "roundingBehavior:")[]) : [`NSDecimalNumberHandler] Objc.nativeNSObject)
   method setRoundingBehavior (newRoundingBehavior : [`NSDecimalNumberHandler] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRoundingBehavior:")[make_pointer_from_object newRoundingBehavior]) : unit)
   method minimum =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "minimum:")[]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method setMinimum (aMinimum : [`NSDecimalNumber] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinimum:")[make_pointer_from_object aMinimum]) : unit)
   method maximum =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "maximum:")[]) : [`NSDecimalNumber] Objc.nativeNSObject)
   method setMaximum (aMaximum : [`NSDecimalNumber] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaximum:")[make_pointer_from_object aMaximum]) : unit)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method getObjectValue  ~forString:(string : [`NSString] Objc.t ) ~range:(rangep : [`NSRange] Objc.t ) ~error:(error : bool ) (obj : [`id] Objc.t) =
     let sel, args = (
       Objc.arg obj "getObjectValue" make_pointer_from_object
       ++ Objc.arg string "forString" make_pointer_from_object
       ++ Objc.arg rangep "range" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method stringFromNumber (number : [`NSNumber] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stringFromNumber:")[make_pointer_from_object number]) : [`NSString] Objc.nativeNSObject)
   method numberFromString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "numberFromString:")[make_pointer_from_object string]) : [`NSNumber] Objc.nativeNSObject)
   method numberStyle =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberStyle:")[]) : int)
   method setNumberStyle (style : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNumberStyle:")[make_int style]) : unit)
   method locale =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "locale:")[]) : [`NSLocale] Objc.nativeNSObject)
   method setLocale (string : [`NSLocale] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLocale:")[make_pointer_from_object string]) : unit)
   method generatesDecimalNumbers =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "generatesDecimalNumbers:")[]) : bool)
   method setGeneratesDecimalNumbers (b : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setGeneratesDecimalNumbers:")[make_bool b]) : unit)
   method formatterBehavior =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "formatterBehavior:")[]) : int)
   method setFormatterBehavior (behavior : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFormatterBehavior:")[make_int behavior]) : unit)
   method negativeFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "negativeFormat:")[]) : [`NSString] Objc.nativeNSObject)
   method setNegativeFormat (format : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNegativeFormat:")[make_pointer_from_object format]) : unit)
   method textAttributesForNegativeValues =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textAttributesForNegativeValues:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setTextAttributesForNegativeValues (newAttributes : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextAttributesForNegativeValues:")[make_pointer_from_object newAttributes]) : unit)
   method positiveFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "positiveFormat:")[]) : [`NSString] Objc.nativeNSObject)
   method setPositiveFormat (format : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPositiveFormat:")[make_pointer_from_object format]) : unit)
   method textAttributesForPositiveValues =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textAttributesForPositiveValues:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setTextAttributesForPositiveValues (newAttributes : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextAttributesForPositiveValues:")[make_pointer_from_object newAttributes]) : unit)
   method allowsFloats =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsFloats:")[]) : bool)
   method setAllowsFloats (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsFloats:")[make_bool flag]) : unit)
   method decimalSeparator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decimalSeparator:")[]) : [`NSString] Objc.nativeNSObject)
   method setDecimalSeparator (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDecimalSeparator:")[make_pointer_from_object string]) : unit)
   method alwaysShowsDecimalSeparator =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "alwaysShowsDecimalSeparator:")[]) : bool)
   method setAlwaysShowsDecimalSeparator (b : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAlwaysShowsDecimalSeparator:")[make_bool b]) : unit)
   method currencyDecimalSeparator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currencyDecimalSeparator:")[]) : [`NSString] Objc.nativeNSObject)
   method setCurrencyDecimalSeparator (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCurrencyDecimalSeparator:")[make_pointer_from_object string]) : unit)
   method usesGroupingSeparator =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "usesGroupingSeparator:")[]) : bool)
   method setUsesGroupingSeparator (b : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setUsesGroupingSeparator:")[make_bool b]) : unit)
   method groupingSeparator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "groupingSeparator:")[]) : [`NSString] Objc.nativeNSObject)
   method setGroupingSeparator (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setGroupingSeparator:")[make_pointer_from_object string]) : unit)
   method zeroSymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "zeroSymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setZeroSymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setZeroSymbol:")[make_pointer_from_object string]) : unit)
   method textAttributesForZero =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textAttributesForZero:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setTextAttributesForZero (newAttributes : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextAttributesForZero:")[make_pointer_from_object newAttributes]) : unit)
   method nilSymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nilSymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setNilSymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNilSymbol:")[make_pointer_from_object string]) : unit)
   method textAttributesForNil =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textAttributesForNil:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setTextAttributesForNil (newAttributes : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextAttributesForNil:")[make_pointer_from_object newAttributes]) : unit)
   method notANumberSymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "notANumberSymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setNotANumberSymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNotANumberSymbol:")[make_pointer_from_object string]) : unit)
   method textAttributesForNotANumber =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textAttributesForNotANumber:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setTextAttributesForNotANumber (newAttributes : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextAttributesForNotANumber:")[make_pointer_from_object newAttributes]) : unit)
   method positiveInfinitySymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "positiveInfinitySymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setPositiveInfinitySymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPositiveInfinitySymbol:")[make_pointer_from_object string]) : unit)
   method textAttributesForPositiveInfinity =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textAttributesForPositiveInfinity:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setTextAttributesForPositiveInfinity (newAttributes : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextAttributesForPositiveInfinity:")[make_pointer_from_object newAttributes]) : unit)
   method negativeInfinitySymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "negativeInfinitySymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setNegativeInfinitySymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNegativeInfinitySymbol:")[make_pointer_from_object string]) : unit)
   method textAttributesForNegativeInfinity =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textAttributesForNegativeInfinity:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setTextAttributesForNegativeInfinity (newAttributes : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextAttributesForNegativeInfinity:")[make_pointer_from_object newAttributes]) : unit)
   method positivePrefix =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "positivePrefix:")[]) : [`NSString] Objc.nativeNSObject)
   method setPositivePrefix (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPositivePrefix:")[make_pointer_from_object string]) : unit)
   method positiveSuffix =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "positiveSuffix:")[]) : [`NSString] Objc.nativeNSObject)
   method setPositiveSuffix (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPositiveSuffix:")[make_pointer_from_object string]) : unit)
   method negativePrefix =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "negativePrefix:")[]) : [`NSString] Objc.nativeNSObject)
   method setNegativePrefix (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNegativePrefix:")[make_pointer_from_object string]) : unit)
   method negativeSuffix =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "negativeSuffix:")[]) : [`NSString] Objc.nativeNSObject)
   method setNegativeSuffix (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNegativeSuffix:")[make_pointer_from_object string]) : unit)
   method currencyCode =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currencyCode:")[]) : [`NSString] Objc.nativeNSObject)
   method setCurrencyCode (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCurrencyCode:")[make_pointer_from_object string]) : unit)
   method currencySymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currencySymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setCurrencySymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCurrencySymbol:")[make_pointer_from_object string]) : unit)
   method internationalCurrencySymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "internationalCurrencySymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setInternationalCurrencySymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setInternationalCurrencySymbol:")[make_pointer_from_object string]) : unit)
   method percentSymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "percentSymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setPercentSymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPercentSymbol:")[make_pointer_from_object string]) : unit)
   method perMillSymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "perMillSymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setPerMillSymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPerMillSymbol:")[make_pointer_from_object string]) : unit)
   method minusSign =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "minusSign:")[]) : [`NSString] Objc.nativeNSObject)
   method setMinusSign (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinusSign:")[make_pointer_from_object string]) : unit)
   method plusSign =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "plusSign:")[]) : [`NSString] Objc.nativeNSObject)
   method setPlusSign (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPlusSign:")[make_pointer_from_object string]) : unit)
   method exponentSymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "exponentSymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setExponentSymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setExponentSymbol:")[make_pointer_from_object string]) : unit)
   method groupingSize =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "groupingSize:")[]) : int)
   method setGroupingSize (number : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setGroupingSize:")[make_int number]) : unit)
   method secondaryGroupingSize =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "secondaryGroupingSize:")[]) : int)
   method setSecondaryGroupingSize (number : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSecondaryGroupingSize:")[make_int number]) : unit)
   method multiplier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "multiplier:")[]) : [`NSNumber] Objc.nativeNSObject)
   method setMultiplier (number : [`NSNumber] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMultiplier:")[make_pointer_from_object number]) : unit)
   method formatWidth =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "formatWidth:")[]) : int)
   method setFormatWidth (number : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFormatWidth:")[make_int number]) : unit)
   method paddingCharacter =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "paddingCharacter:")[]) : [`NSString] Objc.nativeNSObject)
   method setPaddingCharacter (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPaddingCharacter:")[make_pointer_from_object string]) : unit)
   method paddingPosition =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "paddingPosition:")[]) : int)
   method setPaddingPosition (position : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setPaddingPosition:")[make_int position]) : unit)
   method roundingMode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "roundingMode:")[]) : int)
   method setRoundingMode (mode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRoundingMode:")[make_int mode]) : unit)
   method roundingIncrement =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "roundingIncrement:")[]) : [`NSNumber] Objc.nativeNSObject)
   method setRoundingIncrement (number : [`NSNumber] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRoundingIncrement:")[make_pointer_from_object number]) : unit)
   method minimumIntegerDigits =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "minimumIntegerDigits:")[]) : int)
   method setMinimumIntegerDigits (number : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinimumIntegerDigits:")[make_int number]) : unit)
   method maximumIntegerDigits =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "maximumIntegerDigits:")[]) : int)
   method setMaximumIntegerDigits (number : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaximumIntegerDigits:")[make_int number]) : unit)
   method minimumFractionDigits =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "minimumFractionDigits:")[]) : int)
   method setMinimumFractionDigits (number : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinimumFractionDigits:")[make_int number]) : unit)
   method maximumFractionDigits =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "maximumFractionDigits:")[]) : int)
   method setMaximumFractionDigits (number : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaximumFractionDigits:")[make_int number]) : unit)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method minimum =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "minimum:")[]) : [`NSNumber] Objc.nativeNSObject)

*)
   (* skipping selector setMinimum *)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
   method maximum =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "maximum:")[]) : [`NSNumber] Objc.nativeNSObject)

*)
   (* skipping selector setMaximum *)
end
