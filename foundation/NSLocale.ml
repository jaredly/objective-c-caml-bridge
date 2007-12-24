(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSLocale"
let _ = init()
let make_NSObject_of_NSLocale (o : [`NSLocale] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSLocale *)
let class_NSLocale = object
   val repr = Classes.find "NSLocale"
   method _new = (Objc.objcnew repr : [`NSLocale] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSLocale] nativeNSObject)
(* methods for category NSLocaleGeneralInfo *)
   method availableLocaleIdentifiers =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "availableLocaleIdentifiers:")[]) : [`NSArray] Objc.nativeNSObject)
   method l_ISOLanguageCodes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_ISOLanguageCodes:")[]) : [`NSArray] Objc.nativeNSObject)
   method l_ISOCountryCodes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_ISOCountryCodes:")[]) : [`NSArray] Objc.nativeNSObject)
   method l_ISOCurrencyCodes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_ISOCurrencyCodes:")[]) : [`NSArray] Objc.nativeNSObject)
   method componentsFromLocaleIdentifier (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "componentsFromLocaleIdentifier:")[make_pointer_from_object string]) : [`NSDictionary] Objc.nativeNSObject)
   method localeIdentifierFromComponents (dict : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "localeIdentifierFromComponents:")[make_pointer_from_object dict]) : [`NSString] Objc.nativeNSObject)
   method canonicalLocaleIdentifierFromString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canonicalLocaleIdentifierFromString:")[make_pointer_from_object string]) : [`NSString] Objc.nativeNSObject)
(* methods for category NSLocaleCreation *)
   method systemLocale =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "systemLocale:")[]) : [`NSLocale] Objc.nativeNSObject)
   method currentLocale =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentLocale:")[]) : [`NSLocale] Objc.nativeNSObject)
(* methods for category NSExtendedLocale *)
end
(* Encapsulation for native instance of NSLocale *)
class native_NSLocale = fun (o : [`NSLocale] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSLocale o) as super
(* methods for category NSLocaleGeneralInfo *)
(* methods for category NSLocaleCreation *)
   method initWithLocaleIdentifier (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithLocaleIdentifier:")[make_pointer_from_object string]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedLocale *)
   method localeIdentifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "localeIdentifier:")[]) : [`NSString] Objc.nativeNSObject)
   method objectForKey (key : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "objectForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method displayNameForKey  ~value:(value : [`NSObject] Objc.t ) (key : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg key "displayNameForKey" make_pointer_from_object
       ++ Objc.arg value "value" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
end
