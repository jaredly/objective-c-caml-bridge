(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSLocale] id) -> object
  inherit Cati_NSLocaleGeneralInfo.methods_NSLocale
  inherit Cati_NSLocaleCreation.methods_NSLocale
  inherit Cati_NSExtendedLocale.methods_NSLocale
  inherit Im_NSLocale.methods
  method repr = r
end

(* Class object for NSLocale *)
let c = Classes.find "NSLocale"
let _new()= (Objc.objcnew c : [`NSLocale] id)
let alloc() = (Objc.objcalloc c : [`NSLocale] id)
(* class methods for category NSLocaleGeneralInfo of NSLocale *)
let availableLocaleIdentifiers () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "availableLocaleIdentifiers")[])
       : [`NSArray] Objc.id))
let l_ISOLanguageCodes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "l_ISOLanguageCodes")[])
       : [`NSArray] Objc.id))
let l_ISOCountryCodes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "l_ISOCountryCodes")[])
       : [`NSArray] Objc.id))
let l_ISOCurrencyCodes () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "l_ISOCurrencyCodes")[])
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
