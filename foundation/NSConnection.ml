(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSConnection.methods
end

class t = fun (r :[`NSConnection] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSConnection *)
let c = Classes.find "NSConnection"
let _new()= (Objc.objcnew c : [`NSConnection] id)
let alloc() = (Objc.objcalloc c : [`NSConnection] id)
let allConnections () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "allConnections")[])
       : [`NSArray] Objc.id))
let defaultConnection () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultConnection")[])
       : [`NSConnection] Objc.id))
let connectionWithRegisteredName_host  (name : [`NSString] Objc.t) (hostName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "connectionWithRegisteredName" make_pointer_from_object
      ++ Objc.arg hostName "host" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSConnection] Objc.id))
let connectionWithRegisteredName_host_usingNameServer  (name : [`NSString] Objc.t) (hostName : [`NSString] Objc.t) (server : [`NSPortNameServer] Objc.t) =
    let sel, args = (
      Objc.arg name "connectionWithRegisteredName" make_pointer_from_object
      ++ Objc.arg hostName "host" make_pointer_from_object
      ++ Objc.arg server "usingNameServer" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSConnection] Objc.id))
let rootProxyForConnectionWithRegisteredName_host  (name : [`NSString] Objc.t) (hostName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "rootProxyForConnectionWithRegisteredName" make_pointer_from_object
      ++ Objc.arg hostName "host" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDistantObject] Objc.id))
let rootProxyForConnectionWithRegisteredName_host_usingNameServer  (name : [`NSString] Objc.t) (hostName : [`NSString] Objc.t) (server : [`NSPortNameServer] Objc.t) =
    let sel, args = (
      Objc.arg name "rootProxyForConnectionWithRegisteredName" make_pointer_from_object
      ++ Objc.arg hostName "host" make_pointer_from_object
      ++ Objc.arg server "usingNameServer" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDistantObject] Objc.id))
let connectionWithReceivePort_sendPort  (receivePort : [`NSPort] Objc.t) (sendPort : [`NSPort] Objc.t) =
    let sel, args = (
      Objc.arg receivePort "connectionWithReceivePort" make_pointer_from_object
      ++ Objc.arg sendPort "sendPort" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSConnection] Objc.id))
let currentConversation () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentConversation")[])
       : [`NSConnection] Objc.id))
