(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScriptCommandDescription *)
class virtual methods = object (self)
  method virtual repr : [`NSScriptCommandDescription] Objc.id
  method initWithSuiteName  ~commandName:(commandName : [`NSString] Objc.t ) ~dictionary:(commandDeclaration : [`NSDictionary] Objc.t ) (suiteName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg suiteName "initWithSuiteName" make_pointer_from_object
      ++ Objc.arg commandName "commandName" make_pointer_from_object
      ++ Objc.arg commandDeclaration "dictionary" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method suiteName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "suiteName")[])
       : [`NSString] Objc.id))
  method commandName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "commandName")[])
       : [`NSString] Objc.id))
  method appleEventClassCode =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "appleEventClassCode")[])
       : int64)
  method appleEventCode =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "appleEventCode")[])
       : int64)
  method commandClassName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "commandClassName")[])
       : [`NSString] Objc.id))
  method returnType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "returnType")[])
       : [`NSString] Objc.id))
  method appleEventCodeForReturnType =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "appleEventCodeForReturnType")[])
       : int64)
  method argumentNames =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "argumentNames")[])
       : [`NSArray] Objc.id))
  method typeForArgumentWithName (argumentName : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "typeForArgumentWithName:")
      [make_pointer_from_object argumentName]) : [`NSString] Objc.id))
  method appleEventCodeForArgumentWithName (argumentName : [`NSString] Objc.t) =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "appleEventCodeForArgumentWithName:")
      [make_pointer_from_object argumentName]) : int64)
  method isOptionalArgumentWithName (argumentName : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOptionalArgumentWithName:")
      [make_pointer_from_object argumentName]) : bool)
  method createCommandInstance =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "createCommandInstance")[])
       : [`NSScriptCommand] Objc.id))
  method createCommandInstanceWithZone (zone : [`NSZone] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "createCommandInstanceWithZone:")
      [make_pointer_from_object zone]) : [`NSScriptCommand] Objc.id))
end
