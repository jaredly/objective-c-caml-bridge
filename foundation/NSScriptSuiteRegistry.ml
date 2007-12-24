(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSScriptSuiteRegistry"
let _ = init()
let make_NSObject_of_NSScriptSuiteRegistry (o : [`NSScriptSuiteRegistry] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSScriptSuiteRegistry *)
let class_NSScriptSuiteRegistry = object
   val repr = Classes.find "NSScriptSuiteRegistry"
   method _new = (Objc.objcnew repr : [`NSScriptSuiteRegistry] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScriptSuiteRegistry] nativeNSObject)
   method sharedScriptSuiteRegistry =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedScriptSuiteRegistry:")[]) : [`NSScriptSuiteRegistry] Objc.nativeNSObject)
   method setSharedScriptSuiteRegistry (registry : [`NSScriptSuiteRegistry] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setSharedScriptSuiteRegistry:")[make_pointer_from_object registry]) : [`NSScriptSuiteRegistry] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScriptSuiteRegistry *)
class native_NSScriptSuiteRegistry = fun (o : [`NSScriptSuiteRegistry] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSScriptSuiteRegistry o) as super
   method loadSuitesFromBundle (bundle : [`NSBundle] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "loadSuitesFromBundle:")[make_pointer_from_object bundle]) : unit)
   method loadSuiteWithDictionary  ~fromBundle:(bundle : [`NSBundle] Objc.t ) (suiteDeclaration : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg suiteDeclaration "loadSuiteWithDictionary" make_pointer_from_object
       ++ Objc.arg bundle "fromBundle" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method registerClassDescription (classDescription : [`NSScriptClassDescription] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "registerClassDescription:")[make_pointer_from_object classDescription]) : unit)
   method registerCommandDescription (commandDescription : [`NSScriptCommandDescription] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "registerCommandDescription:")[make_pointer_from_object commandDescription]) : unit)
   method suiteNames =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "suiteNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method appleEventCodeForSuite (suiteName : [`NSString] Objc.t) =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "appleEventCodeForSuite:")[make_pointer_from_object suiteName]) : int64)
   method bundleForSuite (suiteName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "bundleForSuite:")[make_pointer_from_object suiteName]) : [`NSBundle] Objc.nativeNSObject)
   method classDescriptionsInSuite (suiteName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classDescriptionsInSuite:")[make_pointer_from_object suiteName]) : [`NSDictionary] Objc.nativeNSObject)
   method commandDescriptionsInSuite (suiteName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "commandDescriptionsInSuite:")[make_pointer_from_object suiteName]) : [`NSDictionary] Objc.nativeNSObject)
   method suiteForAppleEventCode (appleEventCode : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "suiteForAppleEventCode:")[make_int64 appleEventCode]) : [`NSString] Objc.nativeNSObject)
   method classDescriptionWithAppleEventCode (appleEventCode : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classDescriptionWithAppleEventCode:")[make_int64 appleEventCode]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method commandDescriptionWithAppleEventClass  ~andAppleEventCode:(appleEventIDCode : int64 ) (appleEventClassCode : int64) =
     let sel, args = (
       Objc.arg appleEventClassCode "commandDescriptionWithAppleEventClass" make_int64
       ++ Objc.arg appleEventIDCode "andAppleEventCode" make_int64
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSScriptCommandDescription] Objc.nativeNSObject)
   method aeteResource (languageName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "aeteResource:")[make_pointer_from_object languageName]) : [`NSData] Objc.nativeNSObject)
end
