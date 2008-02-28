(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNumberFormatter *)
class virtual methods = object (self)
  method virtual repr : [`NSNumberFormatter] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method getObjectValue  ~forString:(string : [`NSString] Objc.t ) ~range:(rangep : [`NSRange] Objc.t ) ~error:(error : bool ) (obj : [`id] Objc.t) =
    let sel, args = (
      Objc.arg obj "getObjectValue" make_pointer_from_object
      ++ Objc.arg string "forString" make_pointer_from_object
      ++ Objc.arg rangep "range" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method stringFromNumber (number : [`NSNumber] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringFromNumber:")
      [make_pointer_from_object number]) : [`NSString] Objc.id))
  method numberFromString (string : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "numberFromString:")
      [make_pointer_from_object string]) : [`NSNumber] Objc.id))
  method numberStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberStyle")[])
       : int)
  method setNumberStyle (style : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNumberStyle:")
      [make_int style]) : unit)
  method locale =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "locale")[])
       : [`NSLocale] Objc.id))
  method setLocale (string : [`NSLocale] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLocale:")
      [make_pointer_from_object string]) : unit)
  method generatesDecimalNumbers =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "generatesDecimalNumbers")[])
       : bool)
  method setGeneratesDecimalNumbers (b : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGeneratesDecimalNumbers:")
      [make_bool b]) : unit)
  method formatterBehavior =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "formatterBehavior")[])
       : int)
  method setFormatterBehavior (behavior : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFormatterBehavior:")
      [make_int behavior]) : unit)
  method negativeFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "negativeFormat")[])
       : [`NSString] Objc.id))
  method setNegativeFormat (format : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNegativeFormat:")
      [make_pointer_from_object format]) : unit)
  method textAttributesForNegativeValues =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textAttributesForNegativeValues")[])
       : [`NSDictionary] Objc.id))
  method setTextAttributesForNegativeValues (newAttributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextAttributesForNegativeValues:")
      [make_pointer_from_object newAttributes]) : unit)
  method positiveFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "positiveFormat")[])
       : [`NSString] Objc.id))
  method setPositiveFormat (format : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPositiveFormat:")
      [make_pointer_from_object format]) : unit)
  method textAttributesForPositiveValues =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textAttributesForPositiveValues")[])
       : [`NSDictionary] Objc.id))
  method setTextAttributesForPositiveValues (newAttributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextAttributesForPositiveValues:")
      [make_pointer_from_object newAttributes]) : unit)
  method allowsFloats =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsFloats")[])
       : bool)
  method setAllowsFloats (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsFloats:")
      [make_bool flag]) : unit)
  method decimalSeparator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decimalSeparator")[])
       : [`NSString] Objc.id))
  method setDecimalSeparator (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDecimalSeparator:")
      [make_pointer_from_object string]) : unit)
  method alwaysShowsDecimalSeparator =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "alwaysShowsDecimalSeparator")[])
       : bool)
  method setAlwaysShowsDecimalSeparator (b : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlwaysShowsDecimalSeparator:")
      [make_bool b]) : unit)
  method currencyDecimalSeparator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currencyDecimalSeparator")[])
       : [`NSString] Objc.id))
  method setCurrencyDecimalSeparator (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCurrencyDecimalSeparator:")
      [make_pointer_from_object string]) : unit)
  method usesGroupingSeparator =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "usesGroupingSeparator")[])
       : bool)
  method setUsesGroupingSeparator (b : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUsesGroupingSeparator:")
      [make_bool b]) : unit)
  method groupingSeparator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "groupingSeparator")[])
       : [`NSString] Objc.id))
  method setGroupingSeparator (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGroupingSeparator:")
      [make_pointer_from_object string]) : unit)
  method zeroSymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "zeroSymbol")[])
       : [`NSString] Objc.id))
  method setZeroSymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setZeroSymbol:")
      [make_pointer_from_object string]) : unit)
  method textAttributesForZero =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textAttributesForZero")[])
       : [`NSDictionary] Objc.id))
  method setTextAttributesForZero (newAttributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextAttributesForZero:")
      [make_pointer_from_object newAttributes]) : unit)
  method nilSymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nilSymbol")[])
       : [`NSString] Objc.id))
  method setNilSymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNilSymbol:")
      [make_pointer_from_object string]) : unit)
  method textAttributesForNil =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textAttributesForNil")[])
       : [`NSDictionary] Objc.id))
  method setTextAttributesForNil (newAttributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextAttributesForNil:")
      [make_pointer_from_object newAttributes]) : unit)
  method notANumberSymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "notANumberSymbol")[])
       : [`NSString] Objc.id))
  method setNotANumberSymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNotANumberSymbol:")
      [make_pointer_from_object string]) : unit)
  method textAttributesForNotANumber =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textAttributesForNotANumber")[])
       : [`NSDictionary] Objc.id))
  method setTextAttributesForNotANumber (newAttributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextAttributesForNotANumber:")
      [make_pointer_from_object newAttributes]) : unit)
  method positiveInfinitySymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "positiveInfinitySymbol")[])
       : [`NSString] Objc.id))
  method setPositiveInfinitySymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPositiveInfinitySymbol:")
      [make_pointer_from_object string]) : unit)
  method textAttributesForPositiveInfinity =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textAttributesForPositiveInfinity")[])
       : [`NSDictionary] Objc.id))
  method setTextAttributesForPositiveInfinity (newAttributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextAttributesForPositiveInfinity:")
      [make_pointer_from_object newAttributes]) : unit)
  method negativeInfinitySymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "negativeInfinitySymbol")[])
       : [`NSString] Objc.id))
  method setNegativeInfinitySymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNegativeInfinitySymbol:")
      [make_pointer_from_object string]) : unit)
  method textAttributesForNegativeInfinity =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textAttributesForNegativeInfinity")[])
       : [`NSDictionary] Objc.id))
  method setTextAttributesForNegativeInfinity (newAttributes : [`NSDictionary] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextAttributesForNegativeInfinity:")
      [make_pointer_from_object newAttributes]) : unit)
  method positivePrefix =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "positivePrefix")[])
       : [`NSString] Objc.id))
  method setPositivePrefix (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPositivePrefix:")
      [make_pointer_from_object string]) : unit)
  method positiveSuffix =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "positiveSuffix")[])
       : [`NSString] Objc.id))
  method setPositiveSuffix (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPositiveSuffix:")
      [make_pointer_from_object string]) : unit)
  method negativePrefix =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "negativePrefix")[])
       : [`NSString] Objc.id))
  method setNegativePrefix (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNegativePrefix:")
      [make_pointer_from_object string]) : unit)
  method negativeSuffix =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "negativeSuffix")[])
       : [`NSString] Objc.id))
  method setNegativeSuffix (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNegativeSuffix:")
      [make_pointer_from_object string]) : unit)
  method currencyCode =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currencyCode")[])
       : [`NSString] Objc.id))
  method setCurrencyCode (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCurrencyCode:")
      [make_pointer_from_object string]) : unit)
  method currencySymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currencySymbol")[])
       : [`NSString] Objc.id))
  method setCurrencySymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCurrencySymbol:")
      [make_pointer_from_object string]) : unit)
  method internationalCurrencySymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "internationalCurrencySymbol")[])
       : [`NSString] Objc.id))
  method setInternationalCurrencySymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInternationalCurrencySymbol:")
      [make_pointer_from_object string]) : unit)
  method percentSymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "percentSymbol")[])
       : [`NSString] Objc.id))
  method setPercentSymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPercentSymbol:")
      [make_pointer_from_object string]) : unit)
  method perMillSymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "perMillSymbol")[])
       : [`NSString] Objc.id))
  method setPerMillSymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPerMillSymbol:")
      [make_pointer_from_object string]) : unit)
  method minusSign =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "minusSign")[])
       : [`NSString] Objc.id))
  method setMinusSign (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinusSign:")
      [make_pointer_from_object string]) : unit)
  method plusSign =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "plusSign")[])
       : [`NSString] Objc.id))
  method setPlusSign (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPlusSign:")
      [make_pointer_from_object string]) : unit)
  method exponentSymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "exponentSymbol")[])
       : [`NSString] Objc.id))
  method setExponentSymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setExponentSymbol:")
      [make_pointer_from_object string]) : unit)
  method groupingSize =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "groupingSize")[])
       : int)
  method setGroupingSize (number : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGroupingSize:")
      [make_int number]) : unit)
  method secondaryGroupingSize =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "secondaryGroupingSize")[])
       : int)
  method setSecondaryGroupingSize (number : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSecondaryGroupingSize:")
      [make_int number]) : unit)
  method multiplier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "multiplier")[])
       : [`NSNumber] Objc.id))
  method setMultiplier (number : [`NSNumber] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMultiplier:")
      [make_pointer_from_object number]) : unit)
  method formatWidth =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "formatWidth")[])
       : int)
  method setFormatWidth (number : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFormatWidth:")
      [make_int number]) : unit)
  method paddingCharacter =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "paddingCharacter")[])
       : [`NSString] Objc.id))
  method setPaddingCharacter (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPaddingCharacter:")
      [make_pointer_from_object string]) : unit)
  method paddingPosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "paddingPosition")[])
       : int)
  method setPaddingPosition (position : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPaddingPosition:")
      [make_int position]) : unit)
  method roundingMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "roundingMode")[])
       : int)
  method setRoundingMode (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRoundingMode:")
      [make_int mode]) : unit)
  method roundingIncrement =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "roundingIncrement")[])
       : [`NSNumber] Objc.id))
  method setRoundingIncrement (number : [`NSNumber] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRoundingIncrement:")
      [make_pointer_from_object number]) : unit)
  method minimumIntegerDigits =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "minimumIntegerDigits")[])
       : int)
  method setMinimumIntegerDigits (number : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinimumIntegerDigits:")
      [make_int number]) : unit)
  method maximumIntegerDigits =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "maximumIntegerDigits")[])
       : int)
  method setMaximumIntegerDigits (number : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaximumIntegerDigits:")
      [make_int number]) : unit)
  method minimumFractionDigits =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "minimumFractionDigits")[])
       : int)
  method setMinimumFractionDigits (number : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinimumFractionDigits:")
      [make_int number]) : unit)
  method maximumFractionDigits =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "maximumFractionDigits")[])
       : int)
  method setMaximumFractionDigits (number : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaximumFractionDigits:")
      [make_int number]) : unit)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
  method minimum =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "minimum")[])
       : [`NSNumber] Objc.id))

*)
  (* skipping selector setMinimum *)
(*  UNSUPPORTED
(* unsupported: already have a method with that name compiled *)
  method maximum =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "maximum")[])
       : [`NSNumber] Objc.id))

*)
  (* skipping selector setMaximum *)
end
