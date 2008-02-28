(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLCredentialStorage *)
class virtual methods = object (self)
  method virtual repr : [`NSURLCredentialStorage] Objc.id
  method credentialsForProtectionSpace (space : [`NSURLProtectionSpace] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "credentialsForProtectionSpace:")
      [make_pointer_from_object space]) : [`NSDictionary] Objc.id))
  method allCredentials =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allCredentials")[])
       : [`NSDictionary] Objc.id))
  method setCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
    let sel, args = (
      Objc.arg credential "setCredential" make_pointer_from_object
      ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
    let sel, args = (
      Objc.arg credential "removeCredential" make_pointer_from_object
      ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method defaultCredentialForProtectionSpace (space : [`NSURLProtectionSpace] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "defaultCredentialForProtectionSpace:")
      [make_pointer_from_object space]) : [`NSURLCredential] Objc.id))
  method setDefaultCredential  ~forProtectionSpace:(space : [`NSURLProtectionSpace] Objc.t ) (credential : [`NSURLCredential] Objc.t) =
    let sel, args = (
      Objc.arg credential "setDefaultCredential" make_pointer_from_object
      ++ Objc.arg space "forProtectionSpace" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
