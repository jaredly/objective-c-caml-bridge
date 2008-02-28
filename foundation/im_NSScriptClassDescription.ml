(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScriptClassDescription *)
class virtual methods = object (self)
  method virtual repr : [`NSScriptClassDescription] Objc.id
  method initWithSuiteName  ~className:(className : [`NSString] Objc.t ) ~dictionary:(classDeclaration : [`NSDictionary] Objc.t ) (suiteName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg suiteName "initWithSuiteName" make_pointer_from_object
      ++ Objc.arg className "className" make_pointer_from_object
      ++ Objc.arg classDeclaration "dictionary" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method suiteName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "suiteName")[])
       : [`NSString] Objc.id))
  method className =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "className")[])
       : [`NSString] Objc.id))
  method superclassDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "superclassDescription")[])
       : [`NSScriptClassDescription] Objc.id))
  method appleEventCode =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "appleEventCode")[])
       : int64)
  method matchesAppleEventCode (appleEventCode : int64) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "matchesAppleEventCode:")
      [make_int64 appleEventCode]) : bool)
  method supportsCommand (commandDescription : [`NSScriptCommandDescription] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "supportsCommand:")
      [make_pointer_from_object commandDescription]) : bool)
  method selectorForCommand (commandDescription : [`NSScriptCommandDescription] Objc.t) =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "selectorForCommand:")
      [make_pointer_from_object commandDescription]) : selector)
  method typeForKey (key : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "typeForKey:")
      [make_pointer_from_object key]) : [`NSString] Objc.id))
  method classDescriptionForKey (key : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classDescriptionForKey:")
      [make_pointer_from_object key]) : [`NSScriptClassDescription] Objc.id))
  method appleEventCodeForKey (key : [`NSString] Objc.t) =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "appleEventCodeForKey:")
      [make_pointer_from_object key]) : int64)
  method isReadOnlyKey (key : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isReadOnlyKey:")
      [make_pointer_from_object key]) : bool)
  method keyWithAppleEventCode (appleEventCode : int64) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyWithAppleEventCode:")
      [make_int64 appleEventCode]) : [`NSString] Objc.id))
  method defaultSubcontainerAttributeKey =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "defaultSubcontainerAttributeKey")[])
       : [`NSString] Objc.id))
  method isLocationRequiredToCreateForKey (toManyRelationshipKey : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLocationRequiredToCreateForKey:")
      [make_pointer_from_object toManyRelationshipKey]) : bool)
end
