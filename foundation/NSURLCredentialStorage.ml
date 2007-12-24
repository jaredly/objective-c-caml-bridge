(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSURLCredentialStorage"
let _ = init()
let make_NSObject_of_NSURLCredentialStorage (o : [`NSURLCredentialStorage] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURLCredentialStorage *)
let class_NSURLCredentialStorage = object
   val repr = Classes.find "NSURLCredentialStorage"
   method _new = (Objc.objcnew repr : [`NSURLCredentialStorage] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURLCredentialStorage] nativeNSObject)
   method sharedCredentialStorage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedCredentialStorage:")[]) : [`NSURLCredentialStorage] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLCredentialStorage *)
class native_NSURLCredentialStorage = fun (o : [`NSURLCredentialStorage] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURLCredentialStorage o) as super
   method credentialsForProtectionSpace (space : [`NSURLProtectionSpace] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "credentialsForProtectionSpace:")[make_pointer_from_object space]) : [`NSDictionary] Objc.nativeNSObject)
   method allCredentials =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "allCredentials:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
     let sel, args = (
       Objc.arg credential "setCredential" make_pointer_from_object
       ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
     let sel, args = (
       Objc.arg credential "removeCredential" make_pointer_from_object
       ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method defaultCredentialForProtectionSpace (space : [`NSURLProtectionSpace] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultCredentialForProtectionSpace:")[make_pointer_from_object space]) : [`NSURLCredential] Objc.nativeNSObject)
   method setDefaultCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
     let sel, args = (
       Objc.arg credential "setDefaultCredential" make_pointer_from_object
       ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
