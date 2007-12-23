open Objc
open NSObject


external init : unit -> unit = "caml_init_NSPort"
let _ = init()
(* Class object for NSSocketPort *)
let class_NSSocketPort = object
   val o = Classes.find "NSSocketPort"
   method _new = (Objc.objcnew o : [`NSSocketPort] nativeNSObject)
end
(* Encapsulation for native instance of NSSocketPort *)
class native_NSSocketPort = fun (o : [`NSSocketPort] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method initWithTCPPort (port : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithTCPPort:")[make_int port]) : [`NSObject] Objc.nativeNSObject)
   method initWithProtocolFamily  ~socketType:(_type : int ) ~protocol:(protocol : int ) ~address:(address : [`NSData] Objc.t ) (family : int) =
     let sel, args = (
       Objc.arg family "initWithProtocolFamily" make_int
       ++ Objc.arg _type "socketType" make_int
       ++ Objc.arg protocol "protocol" make_int
       ++ Objc.arg address "address" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithProtocolFamily:socketType:protocol:socket *)
   method initRemoteWithTCPPort  ~host:(hostName : [`NSString] Objc.t ) (port : int) =
     let sel, args = (
       Objc.arg port "initRemoteWithTCPPort" make_int
       ++ Objc.arg hostName "host" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initRemoteWithProtocolFamily  ~socketType:(_type : int ) ~protocol:(protocol : int ) ~address:(address : [`NSData] Objc.t ) (family : int) =
     let sel, args = (
       Objc.arg family "initRemoteWithProtocolFamily" make_int
       ++ Objc.arg _type "socketType" make_int
       ++ Objc.arg protocol "protocol" make_int
       ++ Objc.arg address "address" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method protocolFamily =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "protocolFamily:")[]) : int)
   method socketType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "socketType:")[]) : int)
   method protocol =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "protocol:")[]) : int)
   method address =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "address:")[]) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method socket =
     ((*NSSocketNativeHandle*) unsupported (Objc.invoke (*NSSocketNativeHandle*) Objc.tag_unsupported o (Selector.find "socket:")[]) : (*NSSocketNativeHandle*) unsupported)

*)
end
(* Class object for NSMessagePort *)
let class_NSMessagePort = object
   val o = Classes.find "NSMessagePort"
   method _new = (Objc.objcnew o : [`NSMessagePort] nativeNSObject)
end
(* Encapsulation for native instance of NSMessagePort *)
class native_NSMessagePort = fun (o : [`NSMessagePort] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSMachPortDelegateMethods *)
(* methods for category NSPortDelegateMethods *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSMachPortDelegateMethods *)
   method handleMachMessage (msg : [`void] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "handleMachMessage:")[make_pointer_from_object msg]) : unit)
(* methods for category NSPortDelegateMethods *)
   method handlePortMessage (message : [`NSPortMessage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "handlePortMessage:")[make_pointer_from_object message]) : unit)
end
(* Class object for NSPort *)
let class_NSPort = object
   val o = Classes.find "NSPort"
   method _new = (Objc.objcnew o : [`NSPort] nativeNSObject)
   method allocWithZone (zone : [`NSZone] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allocWithZone:")[make_pointer_from_object zone]) : [`NSPort] Objc.nativeNSObject)
   method port =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "port:")[]) : [`NSPort] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPort *)
class native_NSPort = fun (o : [`NSPort] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method invalidate =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "invalidate:")[]) : unit)
   method isValid =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isValid:")[]) : bool)
   method setDelegate (anId : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anId]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method scheduleInRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (runLoop : [`NSRunLoop] Objc.t) =
     let sel, args = (
       Objc.arg runLoop "scheduleInRunLoop" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeFromRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (runLoop : [`NSRunLoop] Objc.t) =
     let sel, args = (
       Objc.arg runLoop "removeFromRunLoop" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method reservedSpaceLength =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "reservedSpaceLength:")[]) : int)
   (* skipping selector sendBeforeDate:components:from:reserved *)
   method sendBeforeDate  ~msgid:(msgID : int ) ~components:(components : [`NSMutableArray] Objc.t ) ~from:(receivePort : [`NSPort] Objc.t ) ~reserved:(headerSpaceReserved : int ) (limitDate : [`NSDate] Objc.t) =
     let sel, args = (
       Objc.arg limitDate "sendBeforeDate" make_pointer_from_object
       ++ Objc.arg msgID "msgid" make_int
       ++ Objc.arg components "components" make_pointer_from_object
       ++ Objc.arg receivePort "from" make_pointer_from_object
       ++ Objc.arg headerSpaceReserved "reserved" make_int
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool o (Selector.find_list sel) args) : bool)
   method addConnection  ~toRunLoop:(runLoop : [`NSRunLoop] Objc.t ) ~forMode:(mode : [`NSString] Objc.t ) (conn : [`NSConnection] Objc.t) =
     let sel, args = (
       Objc.arg conn "addConnection" make_pointer_from_object
       ++ Objc.arg runLoop "toRunLoop" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeConnection  ~fromRunLoop:(runLoop : [`NSRunLoop] Objc.t ) ~forMode:(mode : [`NSString] Objc.t ) (conn : [`NSConnection] Objc.t) =
     let sel, args = (
       Objc.arg conn "removeConnection" make_pointer_from_object
       ++ Objc.arg runLoop "fromRunLoop" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
(* Class object for NSMachPort *)
let class_NSMachPort = object
   val o = Classes.find "NSMachPort"
   method _new = (Objc.objcnew o : [`NSMachPort] nativeNSObject)
   method portWithMachPort (machPort : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "portWithMachPort:")[make_int machPort]) : [`NSPort] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSMachPort *)
class native_NSMachPort = fun (o : [`NSMachPort] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithMachPort (machPort : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithMachPort:")[make_int machPort]) : [`NSObject] Objc.nativeNSObject)
   method machPort =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "machPort:")[]) : int)
   method scheduleInRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (runLoop : [`NSRunLoop] Objc.t) =
     let sel, args = (
       Objc.arg runLoop "scheduleInRunLoop" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeFromRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (runLoop : [`NSRunLoop] Objc.t) =
     let sel, args = (
       Objc.arg runLoop "removeFromRunLoop" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
end
