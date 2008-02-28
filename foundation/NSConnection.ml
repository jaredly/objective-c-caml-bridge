(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSConnection] id) -> object
  inherit Im_NSConnection.methods
  method repr = r
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
  (* skipping selector connectionWithRegisteredName:host *)
let connectionWithRegisteredName  ~host:(hostName : [`NSString] Objc.t ) ?usingNameServer:(server : [`NSPortNameServer] Objc.t option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "connectionWithRegisteredName" make_pointer_from_object
      ++ Objc.arg hostName "host" make_pointer_from_object
      ++ Objc.opt_arg server "usingNameServer" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSConnection] Objc.id))
  (* skipping selector rootProxyForConnectionWithRegisteredName:host *)
let rootProxyForConnectionWithRegisteredName  ~host:(hostName : [`NSString] Objc.t ) ?usingNameServer:(server : [`NSPortNameServer] Objc.t option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "rootProxyForConnectionWithRegisteredName" make_pointer_from_object
      ++ Objc.arg hostName "host" make_pointer_from_object
      ++ Objc.opt_arg server "usingNameServer" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDistantObject] Objc.id))
let connectionWithReceivePort  ~sendPort:(sendPort : [`NSPort] Objc.t ) (receivePort : [`NSPort] Objc.t) =
    let sel, args = (
      Objc.arg receivePort "connectionWithReceivePort" make_pointer_from_object
      ++ Objc.arg sendPort "sendPort" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSConnection] Objc.id))
let currentConversation () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentConversation")[])
       : [`NSConnection] Objc.id))
