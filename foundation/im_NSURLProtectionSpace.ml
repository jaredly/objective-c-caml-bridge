(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLProtectionSpace *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithHost_port_protocol_realm_authenticationMethod  (host : [`NSString] Objc.t) (port : int) (protocol : [`NSString] Objc.t) (realm : [`NSString] Objc.t) (authenticationMethod : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg host "initWithHost" make_pointer_from_object
      ++ Objc.arg port "port" make_int
      ++ Objc.arg protocol "protocol" make_pointer_from_object
      ++ Objc.arg realm "realm" make_pointer_from_object
      ++ Objc.arg authenticationMethod "authenticationMethod" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithProxyHost_port_type_realm_authenticationMethod  (host : [`NSString] Objc.t) (port : int) (_type : [`NSString] Objc.t) (realm : [`NSString] Objc.t) (authenticationMethod : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg host "initWithProxyHost" make_pointer_from_object
      ++ Objc.arg port "port" make_int
      ++ Objc.arg _type "type" make_pointer_from_object
      ++ Objc.arg realm "realm" make_pointer_from_object
      ++ Objc.arg authenticationMethod "authenticationMethod" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method realm =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "realm")[])
       : [`NSString] Objc.id))
  method receivesCredentialSecurely =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "receivesCredentialSecurely")[])
       : bool)
  method isProxy =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isProxy")[])
       : bool)
  method host =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "host")[])
       : [`NSString] Objc.id))
  method port =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "port")[])
       : int)
  method proxyType =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "proxyType")[])
       : [`NSString] Objc.id))
  method protocol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "protocol")[])
       : [`NSString] Objc.id))
  method authenticationMethod =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "authenticationMethod")[])
       : [`NSString] Objc.id))
end
