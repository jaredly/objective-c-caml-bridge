(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSNumberFormatterCompatibility of NSNumberFormatter *)
class virtual methods_NSNumberFormatter = object (self)
  method virtual repr : [`NSNumberFormatter] Objc.id
  method hasThousandSeparators =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasThousandSeparators")[])
       : bool)
  method setHasThousandSeparators (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasThousandSeparators:")
      [make_bool flag]) : unit)
  method thousandSeparator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "thousandSeparator")[])
       : [`NSString] Objc.id))
  method setThousandSeparator (newSeparator : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setThousandSeparator:")
      [make_pointer_from_object newSeparator]) : unit)
  method localizesFormat =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "localizesFormat")[])
       : bool)
  method setLocalizesFormat (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLocalizesFormat:")
      [make_bool flag]) : unit)
  method format =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "format")[])
       : [`NSString] Objc.id))
  method setFormat (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFormat:")
      [make_pointer_from_object string]) : unit)
  method attributedStringForZero =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedStringForZero")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedStringForZero (newAttributedString : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedStringForZero:")
      [make_pointer_from_object newAttributedString]) : unit)
  method attributedStringForNil =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedStringForNil")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedStringForNil (newAttributedString : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedStringForNil:")
      [make_pointer_from_object newAttributedString]) : unit)
  method attributedStringForNotANumber =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributedStringForNotANumber")[])
       : [`NSAttributedString] Objc.id))
  method setAttributedStringForNotANumber (newAttributedString : [`NSAttributedString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAttributedStringForNotANumber:")
      [make_pointer_from_object newAttributedString]) : unit)
  method roundingBehavior =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "roundingBehavior")[])
       : [`NSDecimalNumberHandler] Objc.id))
  method setRoundingBehavior (newRoundingBehavior : [`NSDecimalNumberHandler] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRoundingBehavior:")
      [make_pointer_from_object newRoundingBehavior]) : unit)
  method minimum =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "minimum")[])
       : [`NSDecimalNumber] Objc.id))
  method setMinimum (aMinimum : [`NSDecimalNumber] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinimum:")
      [make_pointer_from_object aMinimum]) : unit)
  method maximum =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "maximum")[])
       : [`NSDecimalNumber] Objc.id))
  method setMaximum (aMaximum : [`NSDecimalNumber] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaximum:")
      [make_pointer_from_object aMaximum]) : unit)
end
