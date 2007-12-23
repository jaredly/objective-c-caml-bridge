open Objc
open NSObject


external init : unit -> unit = "caml_init_NSURLCredentialStorage"
let _ = init()
(* Class object for NSURLCredentialStorage *)
let class_NSURLCredentialStorage = object
   val o = Classes.find "NSURLCredentialStorage"
   method _new = (Objc.objcnew o : [`NSURLCredentialStorage] nativeNSObject)
   method sharedCredentialStorage =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedCredentialStorage:")[]) : [`NSURLCredentialStorage] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLCredentialStorage *)
class native_NSURLCredentialStorage = fun (o : [`NSURLCredentialStorage] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method credentialsForProtectionSpace (space : [`NSURLProtectionSpace] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "credentialsForProtectionSpace:")[make_pointer_from_object space]) : [`NSDictionary] Objc.nativeNSObject)
   method allCredentials =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allCredentials:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
     let sel, args = (
       Objc.arg credential "setCredential" make_pointer_from_object
       ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
     let sel, args = (
       Objc.arg credential "removeCredential" make_pointer_from_object
       ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method defaultCredentialForProtectionSpace (space : [`NSURLProtectionSpace] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultCredentialForProtectionSpace:")[make_pointer_from_object space]) : [`NSURLCredential] Objc.nativeNSObject)
   method setDefaultCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
     let sel, args = (
       Objc.arg credential "setDefaultCredential" make_pointer_from_object
       ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
