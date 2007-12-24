(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSScriptCommandDescription"
let _ = init()
let make_NSObject_of_NSScriptCommandDescription (o : [`NSScriptCommandDescription] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSScriptCommandDescription *)
let class_NSScriptCommandDescription = object
   val repr = Classes.find "NSScriptCommandDescription"
   method _new = (Objc.objcnew repr : [`NSScriptCommandDescription] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScriptCommandDescription] nativeNSObject)
end
(* Encapsulation for native instance of NSScriptCommandDescription *)
class native_NSScriptCommandDescription = fun (o : [`NSScriptCommandDescription] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSScriptCommandDescription o) as super
   method initWithSuiteName  ~commandName:(commandName : [`NSString] Objc.t ) ~dictionary:(commandDeclaration : [`NSDictionary] Objc.t ) (suiteName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg suiteName "initWithSuiteName" make_pointer_from_object
       ++ Objc.arg commandName "commandName" make_pointer_from_object
       ++ Objc.arg commandDeclaration "dictionary" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method suiteName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "suiteName:")[]) : [`NSString] Objc.nativeNSObject)
   method commandName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "commandName:")[]) : [`NSString] Objc.nativeNSObject)
   method appleEventClassCode =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "appleEventClassCode:")[]) : int64)
   method appleEventCode =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "appleEventCode:")[]) : int64)
   method commandClassName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "commandClassName:")[]) : [`NSString] Objc.nativeNSObject)
   method returnType =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "returnType:")[]) : [`NSString] Objc.nativeNSObject)
   method appleEventCodeForReturnType =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "appleEventCodeForReturnType:")[]) : int64)
   method argumentNames =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "argumentNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method typeForArgumentWithName (argumentName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "typeForArgumentWithName:")[make_pointer_from_object argumentName]) : [`NSString] Objc.nativeNSObject)
   method appleEventCodeForArgumentWithName (argumentName : [`NSString] Objc.t) =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "appleEventCodeForArgumentWithName:")[make_pointer_from_object argumentName]) : int64)
   method isOptionalArgumentWithName (argumentName : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isOptionalArgumentWithName:")[make_pointer_from_object argumentName]) : bool)
   method createCommandInstance =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "createCommandInstance:")[]) : [`NSScriptCommand] Objc.nativeNSObject)
   method createCommandInstanceWithZone (zone : [`NSZone] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "createCommandInstanceWithZone:")[make_pointer_from_object zone]) : [`NSScriptCommand] Objc.nativeNSObject)
end
