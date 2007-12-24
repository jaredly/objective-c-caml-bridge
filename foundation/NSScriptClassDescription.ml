(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSClassDescription


external init : unit -> unit = "caml_init_NSScriptClassDescription"
let _ = init()
let make_NSClassDescription_of_NSScriptClassDescription (o : [`NSScriptClassDescription] nativeNSObject) = (Obj.magic o : [`NSClassDescription] nativeNSObject)
(* Class object for NSScriptClassDescription *)
let class_NSScriptClassDescription = object
   val repr = Classes.find "NSScriptClassDescription"
   method _new = (Objc.objcnew repr : [`NSScriptClassDescription] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScriptClassDescription] nativeNSObject)
end
(* Encapsulation for native instance of NSScriptClassDescription *)
class native_NSScriptClassDescription = fun (o : [`NSScriptClassDescription] nativeNSObject) -> object (self)
   inherit native_NSClassDescription (make_NSClassDescription_of_NSScriptClassDescription o) as super
   method initWithSuiteName  ~className:(className : [`NSString] Objc.t ) ~dictionary:(classDeclaration : [`NSDictionary] Objc.t ) (suiteName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg suiteName "initWithSuiteName" make_pointer_from_object
       ++ Objc.arg className "className" make_pointer_from_object
       ++ Objc.arg classDeclaration "dictionary" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method suiteName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "suiteName:")[]) : [`NSString] Objc.nativeNSObject)
   method className =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "className:")[]) : [`NSString] Objc.nativeNSObject)
   method superclassDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "superclassDescription:")[]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method appleEventCode =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "appleEventCode:")[]) : int64)
   method matchesAppleEventCode (appleEventCode : int64) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "matchesAppleEventCode:")[make_int64 appleEventCode]) : bool)
   method supportsCommand (commandDescription : [`NSScriptCommandDescription] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "supportsCommand:")[make_pointer_from_object commandDescription]) : bool)
   method selectorForCommand (commandDescription : [`NSScriptCommandDescription] Objc.t) =
     (get_selector (Objc.invoke Objc.tag_selector repr (Selector.find "selectorForCommand:")[make_pointer_from_object commandDescription]) : selector)
   method typeForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "typeForKey:")[make_pointer_from_object key]) : [`NSString] Objc.nativeNSObject)
   method classDescriptionForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classDescriptionForKey:")[make_pointer_from_object key]) : [`NSScriptClassDescription] Objc.nativeNSObject)
   method appleEventCodeForKey (key : [`NSString] Objc.t) =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "appleEventCodeForKey:")[make_pointer_from_object key]) : int64)
   method isReadOnlyKey (key : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isReadOnlyKey:")[make_pointer_from_object key]) : bool)
   method keyWithAppleEventCode (appleEventCode : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keyWithAppleEventCode:")[make_int64 appleEventCode]) : [`NSString] Objc.nativeNSObject)
   method defaultSubcontainerAttributeKey =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultSubcontainerAttributeKey:")[]) : [`NSString] Objc.nativeNSObject)
   method isLocationRequiredToCreateForKey (toManyRelationshipKey : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isLocationRequiredToCreateForKey:")[make_pointer_from_object toManyRelationshipKey]) : bool)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSScriptClassDescription *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSScriptClassDescription *)
   method classCode =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "classCode:")[]) : int64)
   method className =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "className:")[]) : [`NSString] Objc.nativeNSObject)
end
