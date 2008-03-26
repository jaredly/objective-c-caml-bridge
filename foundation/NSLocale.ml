(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSLocaleGeneralInfo.methods_NSLocale
  inherit Foundation_cati_NSLocaleCreation.methods_NSLocale
  inherit Foundation_cati_NSExtendedLocale.methods_NSLocale
  inherit Im_NSLocale.methods
end

class t = fun (r :[`NSLocale] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSLocale *)
let c = Classes.find "NSLocale"
let _new()= (Objc.objcnew c : [`NSLocale] id)
let alloc() = (Objc.objcalloc c : [`NSLocale] id)
(* class methods for category NSLocaleGeneralInfo of NSLocale *)
let availableLocaleIdentifiers () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "availableLocaleIdentifiers")[])
       : [`NSArray] Objc.id))
let isoLanguageCodes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "ISOLanguageCodes")[])
       : [`NSArray] Objc.id))
let isoCountryCodes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "ISOCountryCodes")[])
       : [`NSArray] Objc.id))
let isoCurrencyCodes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "ISOCurrencyCodes")[])
       : [`NSArray] Objc.id))
let componentsFromLocaleIdentifier (string : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "componentsFromLocaleIdentifier:")
      [make_pointer_from_object string]) : [`NSDictionary] Objc.id))
let localeIdentifierFromComponents (dict : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "localeIdentifierFromComponents:")
      [make_pointer_from_object dict]) : [`NSString] Objc.id))
let canonicalLocaleIdentifierFromString (string : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "canonicalLocaleIdentifierFromString:")
      [make_pointer_from_object string]) : [`NSString] Objc.id))
(* class methods for category NSLocaleCreation of NSLocale *)
let systemLocale () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "systemLocale")[])
       : [`NSLocale] Objc.id))
let currentLocale () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentLocale")[])
       : [`NSLocale] Objc.id))
(* class methods for category NSExtendedLocale of NSLocale *)
