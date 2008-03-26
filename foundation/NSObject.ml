(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSXMLParserDelegateEventAdditions.methods_NSObject
  inherit Foundation_cati_NSURLDownloadDelegate.methods_NSObject
  inherit Foundation_cati_NSURLConnectionDelegate.methods_NSObject
  inherit Foundation_cati_NSURLClient.methods_NSObject
  inherit Foundation_cati_NSMainThreadPerformAdditions.methods_NSObject
  inherit Foundation_cati_NSStreamDelegateEventExtensions.methods_NSObject
  inherit Foundation_cati_NSSpellServerDelegate.methods_NSObject
  inherit Foundation_cati_NSScriptingComparisonMethods.methods_NSObject
  inherit Foundation_cati_NSComparisonMethods.methods_NSObject
  inherit Foundation_cati_NSScriptObjectSpecifiers.methods_NSObject
  inherit Foundation_cati_NSScriptKeyValueCoding.methods_NSObject
  inherit Foundation_cati_NSScriptClassDescription.methods_NSObject
  inherit Foundation_cati_NSDelayedPerforming.methods_NSObject
  inherit Foundation_cati_NSDistributedObjects.methods_NSObject
  inherit Foundation_cati_NSMachPortDelegateMethods.methods_NSObject
  inherit Foundation_cati_NSPortDelegateMethods.methods_NSObject
  inherit Foundation_cati_NSScripting.methods_NSObject
  inherit Im_NSObject.methods
  inherit Foundation_cati_NSNetServiceBrowserDelegateMethods.methods_NSObject
  inherit Foundation_cati_NSNetServiceDelegateMethods.methods_NSObject
  inherit Foundation_cati_NSMetadataQueryDelegate.methods_NSObject
  inherit Foundation_cati_NSKeyedUnarchiverObjectSubstitution.methods_NSObject
  inherit Foundation_cati_NSKeyedArchiverObjectSubstitution.methods_NSObject
  inherit Foundation_cati_NSKeyedUnarchiverDelegate.methods_NSObject
  inherit Foundation_cati_NSKeyedArchiverDelegate.methods_NSObject
  inherit Foundation_cati_NSKeyValueObservingCustomization.methods_NSObject
  inherit Foundation_cati_NSKeyValueObserverNotification.methods_NSObject
  inherit Foundation_cati_NSKeyValueObserverRegistration.methods_NSObject
  inherit Foundation_cati_NSKeyValueObserving.methods_NSObject
  inherit Foundation_cati_NSDeprecatedKeyValueCoding.methods_NSObject
  inherit Foundation_cati_NSKeyValueCoding.methods_NSObject
  inherit Foundation_cati_NSCopyLinkMoveHandler.methods_NSObject
  inherit Foundation_cati_NSErrorRecoveryAttempting.methods_NSObject
  inherit Foundation_cati_NSDistantObjectRequestMethods.methods_NSObject
  inherit Foundation_cati_NSConnectionDelegateMethods.methods_NSObject
  inherit Foundation_cati_NSClassDescriptionPrimitives.methods_NSObject
  inherit Foundation_cati_NSArchiverCallback.methods_NSObject
end

class t = fun (r :[`NSObject] id) -> object
  inherit methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSObject *)
let c = Classes.find "NSObject"
let _new()= (Objc.objcnew c : [`NSObject] id)
let alloc() = (Objc.objcalloc c : [`NSObject] id)
(* class methods for category NSXMLParserDelegateEventAdditions of NSObject *)
(* class methods for category NSURLDownloadDelegate of NSObject *)
(* class methods for category NSURLConnectionDelegate of NSObject *)
(* class methods for category NSURLClient of NSObject *)
(* class methods for category NSMainThreadPerformAdditions of NSObject *)
(* class methods for category NSStreamDelegateEventExtensions of NSObject *)
(* class methods for category NSSpellServerDelegate of NSObject *)
(* class methods for category NSScriptingComparisonMethods of NSObject *)
(* class methods for category NSComparisonMethods of NSObject *)
(* class methods for category NSScriptObjectSpecifiers of NSObject *)
(* class methods for category NSScriptKeyValueCoding of NSObject *)
(* class methods for category NSScriptClassDescription of NSObject *)
(* class methods for category NSDelayedPerforming of NSObject *)
let cancelPreviousPerformRequestsWithTarget_selector_object  (aTarget : [`NSObject] Objc.t) (aSelector : selector) (anArgument : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg aTarget "cancelPreviousPerformRequestsWithTarget" make_pointer_from_object
      ++ Objc.arg aSelector "selector" make_selector
      ++ Objc.arg anArgument "object" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let cancelPreviousPerformRequestsWithTarget (aTarget : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "cancelPreviousPerformRequestsWithTarget:")
      [make_pointer_from_object aTarget]) : unit)
(* class methods for category NSDistributedObjects of NSObject *)
(* class methods for category NSMachPortDelegateMethods of NSObject *)
(* class methods for category NSPortDelegateMethods of NSObject *)
(* class methods for category NSScripting of NSObject *)
let load () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "load")[])
       : unit)
let initialize () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "initialize")[])
       : unit)
let new_ () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "new")[])
       : [`NSObject] Objc.id))
let allocWithZone (zone : [`NSZone] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "allocWithZone:")
      [make_pointer_from_object zone]) : [`NSObject] Objc.id))
let alloc () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "alloc")[])
       : [`NSObject] Objc.id))
let copyWithZone (zone : [`NSZone] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "copyWithZone:")
      [make_pointer_from_object zone]) : [`NSObject] Objc.id))
let mutableCopyWithZone (zone : [`NSZone] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "mutableCopyWithZone:")
      [make_pointer_from_object zone]) : [`NSObject] Objc.id))
let superclass () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "superclass")[])
       : [`NSObject] Objc.id))
let class_ () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "class")[])
       : [`NSObject] Objc.id))
let poseAsClass (aClass : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "poseAsClass:")
      [make_pointer_from_object aClass]) : unit)
let instancesRespondToSelector (aSelector : selector) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "instancesRespondToSelector:")
      [make_selector aSelector]) : bool)
let conformsToProtocol (protocol : [`Protocol] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "conformsToProtocol:")
      [make_pointer_from_object protocol]) : bool)
(*  UNSUPPORTED
let instanceMethodForSelector (aSelector : selector) =
    ((*IMP*) unsupported (Objc.invoke (*IMP*) Objc.tag_unsupported c (Selector.find "instanceMethodForSelector:")
      [make_selector aSelector]) : (*IMP*) unsupported)

*)
let version () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "version")[])
       : int)
let setVersion (aVersion : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setVersion:")
      [make_int aVersion]) : unit)
let instanceMethodSignatureForSelector (aSelector : selector) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "instanceMethodSignatureForSelector:")
      [make_selector aSelector]) : [`NSMethodSignature] Objc.id))
let isSubclassOfClass (aClass : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "isSubclassOfClass:")
      [make_pointer_from_object aClass]) : bool)
let description () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "description")[])
       : [`NSString] Objc.id))
(* class methods for category NSNetServiceBrowserDelegateMethods of NSObject *)
(* class methods for category NSNetServiceDelegateMethods of NSObject *)
(* class methods for category NSMetadataQueryDelegate of NSObject *)
(* class methods for category NSKeyedUnarchiverObjectSubstitution of NSObject *)
let classForKeyedUnarchiver () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "classForKeyedUnarchiver")[])
       : [`NSObject] Objc.id))
(* class methods for category NSKeyedArchiverObjectSubstitution of NSObject *)
let classFallbacksForKeyedArchiver () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "classFallbacksForKeyedArchiver")[])
       : [`NSArray] Objc.id))
(* class methods for category NSKeyedUnarchiverDelegate of NSObject *)
(* class methods for category NSKeyedArchiverDelegate of NSObject *)
(* class methods for category NSKeyValueObservingCustomization of NSObject *)
let automaticallyNotifiesObserversForKey (key : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "automaticallyNotifiesObserversForKey:")
      [make_pointer_from_object key]) : bool)
let setKeys_triggerChangeNotificationsForDependentKey  (keys : [`NSArray] Objc.t) (dependentKey : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg keys "setKeys" make_pointer_from_object
      ++ Objc.arg dependentKey "triggerChangeNotificationsForDependentKey" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
(* class methods for category NSKeyValueObserverNotification of NSObject *)
(* class methods for category NSKeyValueObserverRegistration of NSObject *)
(* class methods for category NSKeyValueObserving of NSObject *)
(* class methods for category NSDeprecatedKeyValueCoding of NSObject *)
let useStoredAccessor () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "useStoredAccessor")[])
       : bool)
(* class methods for category NSKeyValueCoding of NSObject *)
let accessInstanceVariablesDirectly () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "accessInstanceVariablesDirectly")[])
       : bool)
(* class methods for category NSCopyLinkMoveHandler of NSObject *)
(* class methods for category NSErrorRecoveryAttempting of NSObject *)
(* class methods for category NSDistantObjectRequestMethods of NSObject *)
(* class methods for category NSConnectionDelegateMethods of NSObject *)
(* class methods for category NSClassDescriptionPrimitives of NSObject *)
(* class methods for category NSArchiverCallback of NSObject *)
