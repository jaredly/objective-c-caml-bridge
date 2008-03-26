(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSConnectionDelegateMethods of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method makeNewConnection_sender  (conn : [`NSConnection] Objc.t) (ancestor : [`NSConnection] Objc.t) =
    let sel, args = (
      Objc.arg conn "makeNewConnection" make_pointer_from_object
      ++ Objc.arg ancestor "sender" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method connection_shouldMakeNewConnection  (ancestor : [`NSConnection] Objc.t) (conn : [`NSConnection] Objc.t) =
    let sel, args = (
      Objc.arg ancestor "connection" make_pointer_from_object
      ++ Objc.arg conn "shouldMakeNewConnection" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method authenticationDataForComponents (components : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "authenticationDataForComponents:")
      [make_pointer_from_object components]) : [`NSData] Objc.id))
  method authenticateComponents_withData  (components : [`NSArray] Objc.t) (signature : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg components "authenticateComponents" make_pointer_from_object
      ++ Objc.arg signature "withData" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method createConversationForConnection (conn : [`NSConnection] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "createConversationForConnection:")
      [make_pointer_from_object conn]) : [`NSObject] Objc.id)
end
