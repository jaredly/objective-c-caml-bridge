open Objc
open NSObject
open NSDate


external init : unit -> unit = "caml_init_NSConnection"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSDistantObjectRequestMethods *)
(* methods for category NSConnectionDelegateMethods *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSDistantObjectRequestMethods *)
   method connection  ~handleRequest:(doreq : [`NSDistantObjectRequest] Objc.t ) (connection : [`NSConnection] Objc.t) =
     let sel, args = (
       Objc.arg connection "connection" make_pointer_from_object
       ++ Objc.arg doreq "handleRequest" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
(* methods for category NSConnectionDelegateMethods *)
   method makeNewConnection  ~sender:(ancestor : [`NSConnection] Objc.t ) (conn : [`NSConnection] Objc.t) =
     let sel, args = (
       Objc.arg conn "makeNewConnection" make_pointer_from_object
       ++ Objc.arg ancestor "sender" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   (* skipping selector connection:shouldMakeNewConnection *)
   method authenticationDataForComponents (components : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "authenticationDataForComponents:")[make_pointer_from_object components]) : [`NSData] Objc.nativeNSObject)
   method authenticateComponents  ~withData:(signature : [`NSData] Objc.t ) (components : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg components "authenticateComponents" make_pointer_from_object
       ++ Objc.arg signature "withData" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method createConversationForConnection (conn : [`NSConnection] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "createConversationForConnection:")[make_pointer_from_object conn]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSConnection *)
let class_NSConnection = object
   val o = Classes.find "NSConnection"
   method _new = (Objc.objcnew o : [`NSConnection] nativeNSObject)
   method allConnections =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allConnections:")[]) : [`NSArray] Objc.nativeNSObject)
   method defaultConnection =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultConnection:")[]) : [`NSConnection] Objc.nativeNSObject)
   (* skipping selector connectionWithRegisteredName:host *)
   method connectionWithRegisteredName  ~host:(hostName : [`NSString] Objc.t ) ?usingNameServer:(server : [`NSPortNameServer] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "connectionWithRegisteredName" make_pointer_from_object
       ++ Objc.arg hostName "host" make_pointer_from_object
       ++ Objc.opt_arg server "usingNameServer" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSConnection] Objc.nativeNSObject)
   (* skipping selector rootProxyForConnectionWithRegisteredName:host *)
   method rootProxyForConnectionWithRegisteredName  ~host:(hostName : [`NSString] Objc.t ) ?usingNameServer:(server : [`NSPortNameServer] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "rootProxyForConnectionWithRegisteredName" make_pointer_from_object
       ++ Objc.arg hostName "host" make_pointer_from_object
       ++ Objc.opt_arg server "usingNameServer" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSDistantObject] Objc.nativeNSObject)
   method connectionWithReceivePort  ~sendPort:(sendPort : [`NSPort] Objc.t ) (receivePort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg receivePort "connectionWithReceivePort" make_pointer_from_object
       ++ Objc.arg sendPort "sendPort" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSConnection] Objc.nativeNSObject)
   method currentConversation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentConversation:")[]) : [`NSConnection] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSConnection *)
class native_NSConnection = fun (o : [`NSConnection] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method statistics =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "statistics:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setRequestTimeout (ti : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRequestTimeout:")[make_float ti]) : unit)
   method requestTimeout =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "requestTimeout:")[]) : float)
   method setReplyTimeout (ti : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setReplyTimeout:")[make_float ti]) : unit)
   method replyTimeout =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "replyTimeout:")[]) : float)
   method setRootObject (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setRootObject:")[make_pointer_from_object anObject]) : unit)
   method rootObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "rootObject:")[]) : [`NSObject] Objc.nativeNSObject)
   method rootProxy =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "rootProxy:")[]) : [`NSDistantObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setIndependentConversationQueueing (yorn : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIndependentConversationQueueing:")[make_bool yorn]) : unit)
   method independentConversationQueueing =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "independentConversationQueueing:")[]) : bool)
   method isValid =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isValid:")[]) : bool)
   method invalidate =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "invalidate:")[]) : unit)
   method addRequestMode (rmode : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addRequestMode:")[make_pointer_from_object rmode]) : unit)
   method removeRequestMode (rmode : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeRequestMode:")[make_pointer_from_object rmode]) : unit)
   method requestModes =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "requestModes:")[]) : [`NSArray] Objc.nativeNSObject)
   (* skipping selector registerName *)
   method registerName  ?withNameServer:(server : [`NSPortNameServer] Objc.t option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "registerName" make_pointer_from_object
       ++ Objc.opt_arg server "withNameServer" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method initWithReceivePort  ~sendPort:(sendPort : [`NSPort] Objc.t ) (receivePort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg receivePort "initWithReceivePort" make_pointer_from_object
       ++ Objc.arg sendPort "sendPort" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method sendPort =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sendPort:")[]) : [`NSPort] Objc.nativeNSObject)
   method receivePort =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "receivePort:")[]) : [`NSPort] Objc.nativeNSObject)
   method enableMultipleThreads =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "enableMultipleThreads:")[]) : unit)
   method multipleThreadsEnabled =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "multipleThreadsEnabled:")[]) : bool)
   method addRunLoop (runloop : [`NSRunLoop] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "addRunLoop:")[make_pointer_from_object runloop]) : unit)
   method removeRunLoop (runloop : [`NSRunLoop] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeRunLoop:")[make_pointer_from_object runloop]) : unit)
   method runInNewThread =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "runInNewThread:")[]) : unit)
   method remoteObjects =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "remoteObjects:")[]) : [`NSArray] Objc.nativeNSObject)
   method localObjects =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localObjects:")[]) : [`NSArray] Objc.nativeNSObject)
end
(* Class object for NSDistantObjectRequest *)
let class_NSDistantObjectRequest = object
   val o = Classes.find "NSDistantObjectRequest"
   method _new = (Objc.objcnew o : [`NSDistantObjectRequest] nativeNSObject)
end
(* Encapsulation for native instance of NSDistantObjectRequest *)
class native_NSDistantObjectRequest = fun (o : [`NSDistantObjectRequest] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method invocation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "invocation:")[]) : [`NSInvocation] Objc.nativeNSObject)
   method connection =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "connection:")[]) : [`NSConnection] Objc.nativeNSObject)
   method conversation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "conversation:")[]) : [`NSObject] Objc.nativeNSObject)
   method replyWithException (_exception : [`NSException] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "replyWithException:")[make_pointer_from_object _exception]) : unit)
end
