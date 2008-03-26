(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScriptSuiteRegistry *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method loadSuitesFromBundle (bundle : [`NSBundle] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "loadSuitesFromBundle:")
      [make_pointer_from_object bundle]) : unit)
  method loadSuiteWithDictionary_fromBundle  (suiteDeclaration : [`NSDictionary] Objc.t) (bundle : [`NSBundle] Objc.t) =
    let sel, args = (
      Objc.arg suiteDeclaration "loadSuiteWithDictionary" make_pointer_from_object
      ++ Objc.arg bundle "fromBundle" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method registerClassDescription (classDescription : [`NSScriptClassDescription] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "registerClassDescription:")
      [make_pointer_from_object classDescription]) : unit)
  method registerCommandDescription (commandDescription : [`NSScriptCommandDescription] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "registerCommandDescription:")
      [make_pointer_from_object commandDescription]) : unit)
  method suiteNames =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "suiteNames")[])
       : [`NSArray] Objc.id))
  method appleEventCodeForSuite (suiteName : [`NSString] Objc.t) =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "appleEventCodeForSuite:")
      [make_pointer_from_object suiteName]) : int64)
  method bundleForSuite (suiteName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bundleForSuite:")
      [make_pointer_from_object suiteName]) : [`NSBundle] Objc.id))
  method classDescriptionsInSuite (suiteName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classDescriptionsInSuite:")
      [make_pointer_from_object suiteName]) : [`NSDictionary] Objc.id))
  method commandDescriptionsInSuite (suiteName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "commandDescriptionsInSuite:")
      [make_pointer_from_object suiteName]) : [`NSDictionary] Objc.id))
  method suiteForAppleEventCode (appleEventCode : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "suiteForAppleEventCode:")
      [make_int64 appleEventCode]) : [`NSString] Objc.id))
  method classDescriptionWithAppleEventCode (appleEventCode : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classDescriptionWithAppleEventCode:")
      [make_int64 appleEventCode]) : [`NSScriptClassDescription] Objc.id))
  method commandDescriptionWithAppleEventClass_andAppleEventCode  (appleEventClassCode : int64) (appleEventIDCode : int64) =
    let sel, args = (
      Objc.arg appleEventClassCode "commandDescriptionWithAppleEventClass" make_int64
      ++ Objc.arg appleEventIDCode "andAppleEventCode" make_int64
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSScriptCommandDescription] Objc.id))
  method aeteResource (languageName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "aeteResource:")
      [make_pointer_from_object languageName]) : [`NSData] Objc.id))
end
