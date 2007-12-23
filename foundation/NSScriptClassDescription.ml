open Objc
open NSClassDescription


external init : unit -> unit = "caml_init_NSScriptClassDescription"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSScriptClassDescription *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSScriptClassDescription *)
   method classCode =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "classCode:")[]) : int64)
   method className =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "className:")[]) : [`NSString] Objc.nativeNSObject)
end
(* Class object for NSScriptClassDescription *)
let class_NSScriptClassDescription = object
   val o = Classes.find "NSScriptClassDescription"
   method _new = (Objc.objcnew o : [`NSScriptClassDescription] nativeNSObject)
end
(* Encapsulation for native instance of NSScriptClassDescription *)
class native_NSScriptClassDescription = fun (o : [`NSScriptClassDescription] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithSuiteName  ~className:(className : [`NSString] Objc.t ) ~dictionary:(classDeclaration : [`NSDictionary] Objc.t ) (suiteName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg suiteName "initWithSuiteName" make_pointer_from_object
       ++ Objc.arg className "className" make_pointer_from_object
       ++ Objc.arg classDeclaration "dictionary" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method suiteName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "suiteName:")[]) : [`NSString] Objc.nativeNSObject)
   method className =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "className:")[]) : [`NSString] Objc.nativeNSObject)
   method superclassDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "superclassDescription:")[]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method appleEventCode =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "appleEventCode:")[]) : int64)
   method matchesAppleEventCode (appleEventCode : int64) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "matchesAppleEventCode:")[make_int64 appleEventCode]) : bool)
   method supportsCommand (commandDescription : [`NSScriptCommandDescription] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "supportsCommand:")[make_pointer_from_object commandDescription]) : bool)
   method selectorForCommand (commandDescription : [`NSScriptCommandDescription] Objc.t) =
     (get_selector (Objc.invoke Objc.tag_selector o (Selector.find "selectorForCommand:")[make_pointer_from_object commandDescription]) : selector)
   method typeForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "typeForKey:")[make_pointer_from_object key]) : [`NSString] Objc.nativeNSObject)
   method classDescriptionForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classDescriptionForKey:")[make_pointer_from_object key]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method appleEventCodeForKey (key : [`NSString] Objc.t) =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "appleEventCodeForKey:")[make_pointer_from_object key]) : int64)
   method isReadOnlyKey (key : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isReadOnlyKey:")[make_pointer_from_object key]) : bool)
   method keyWithAppleEventCode (appleEventCode : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keyWithAppleEventCode:")[make_int64 appleEventCode]) : [`NSString] Objc.nativeNSObject)
   method defaultSubcontainerAttributeKey =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultSubcontainerAttributeKey:")[]) : [`NSString] Objc.nativeNSObject)
   method isLocationRequiredToCreateForKey (toManyRelationshipKey : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isLocationRequiredToCreateForKey:")[make_pointer_from_object toManyRelationshipKey]) : bool)
end
