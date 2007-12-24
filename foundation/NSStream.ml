(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSStream"
let _ = init()
let make_NSObject_of_NSStream (o : [`NSStream] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSStream *)
let class_NSStream = object
   val repr = Classes.find "NSStream"
   method _new = (Objc.objcnew repr : [`NSStream] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSStream] nativeNSObject)
(* methods for category NSSocketStreamCreationExtensions *)
(*  UNSUPPORTED
   method getStreamsToHost  ~port:(port : int ) ~inputStream:(inputStream : (*pointer to pointer to NSInputStream*) unsupported ) ~outputStream:(outputStream : (*pointer to pointer to NSOutputStream*) unsupported ) (host : [`NSHost] Objc.t) =
     let sel, args = (
       Objc.arg host "getStreamsToHost" make_pointer_from_object
       ++ Objc.arg port "port" make_int
       ++ Objc.arg inputStream "inputStream" (*pointer to pointer to NSInputStream*) unsupported
       ++ Objc.arg outputStream "outputStream" (*pointer to pointer to NSOutputStream*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSStream] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSStream *)
class native_NSStream = fun (o : [`NSStream] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSStream o) as super
(* methods for category NSSocketStreamCreationExtensions *)
   method open_ =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "open:")[]) : unit)
   method close =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "close:")[]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (delegate : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object delegate]) : unit)
   method propertyForKey (key : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "propertyForKey:")[make_pointer_from_object key]) : [`NSObject] Objc.nativeNSObject)
   method setProperty  ~forKey:(key : [`NSString] Objc.t ) (property : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg property "setProperty" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method scheduleInRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (aRunLoop : [`NSRunLoop] Objc.t) =
     let sel, args = (
       Objc.arg aRunLoop "scheduleInRunLoop" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeFromRunLoop  ~forMode:(mode : [`NSString] Objc.t ) (aRunLoop : [`NSRunLoop] Objc.t) =
     let sel, args = (
       Objc.arg aRunLoop "removeFromRunLoop" make_pointer_from_object
       ++ Objc.arg mode "forMode" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method streamStatus =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "streamStatus:")[]) : int)
   method streamError =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "streamError:")[]) : [`NSError] Objc.nativeNSObject)
end
let make_NSStream_of_NSInputStream (o : [`NSInputStream] nativeNSObject) = (Obj.magic o : [`NSStream] nativeNSObject)
(* Class object for NSInputStream *)
let class_NSInputStream = object
   val repr = Classes.find "NSInputStream"
   method _new = (Objc.objcnew repr : [`NSInputStream] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSInputStream] nativeNSObject)
(* methods for category NSInputStreamExtensions *)
   method inputStreamWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "inputStreamWithData:")[make_pointer_from_object data]) : [`NSInputStream] Objc.nativeNSObject)
   method inputStreamWithFileAtPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "inputStreamWithFileAtPath:")[make_pointer_from_object path]) : [`NSInputStream] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSInputStream *)
class native_NSInputStream = fun (o : [`NSInputStream] nativeNSObject) -> object (self)
   inherit native_NSStream (make_NSStream_of_NSInputStream o) as super
(* methods for category NSInputStreamExtensions *)
   method initWithData (data : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithData:")[make_pointer_from_object data]) : [`NSObject] Objc.nativeNSObject)
   method initWithFileAtPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithFileAtPath:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   method read  ~maxLength:(len : int ) (buffer : [`uint8_t] Objc.t) =
     let sel, args = (
       Objc.arg buffer "read" make_pointer_from_object
       ++ Objc.arg len "maxLength" make_int
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
(*  UNSUPPORTED
   method getBuffer  ~length:(len : (*pointer to unsigned int*) unsupported ) (buffer : (*pointer to pointer to uint8_t*) unsupported) =
     let sel, args = (
       Objc.arg buffer "getBuffer" (*pointer to pointer to uint8_t*) unsupported
       ++ Objc.arg len "length" (*pointer to unsigned int*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
   method hasBytesAvailable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasBytesAvailable:")[]) : bool)
end
let make_NSStream_of_NSOutputStream (o : [`NSOutputStream] nativeNSObject) = (Obj.magic o : [`NSStream] nativeNSObject)
(* Class object for NSOutputStream *)
let class_NSOutputStream = object
   val repr = Classes.find "NSOutputStream"
   method _new = (Objc.objcnew repr : [`NSOutputStream] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSOutputStream] nativeNSObject)
(* methods for category NSOutputStreamExtensions *)
   method outputStreamToMemory =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "outputStreamToMemory:")[]) : [`NSOutputStream] Objc.nativeNSObject)
   method outputStreamToBuffer  ~capacity:(capacity : int ) (buffer : [`uint8_t] Objc.t) =
     let sel, args = (
       Objc.arg buffer "outputStreamToBuffer" make_pointer_from_object
       ++ Objc.arg capacity "capacity" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSOutputStream] Objc.nativeNSObject)
   method outputStreamToFileAtPath  ~append:(shouldAppend : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "outputStreamToFileAtPath" make_pointer_from_object
       ++ Objc.arg shouldAppend "append" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSOutputStream] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSOutputStream *)
class native_NSOutputStream = fun (o : [`NSOutputStream] nativeNSObject) -> object (self)
   inherit native_NSStream (make_NSStream_of_NSOutputStream o) as super
(* methods for category NSOutputStreamExtensions *)
   method initToMemory =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initToMemory:")[]) : [`NSObject] Objc.nativeNSObject)
   method initToBuffer  ~capacity:(capacity : int ) (buffer : [`uint8_t] Objc.t) =
     let sel, args = (
       Objc.arg buffer "initToBuffer" make_pointer_from_object
       ++ Objc.arg capacity "capacity" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initToFileAtPath  ~append:(shouldAppend : bool ) (path : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg path "initToFileAtPath" make_pointer_from_object
       ++ Objc.arg shouldAppend "append" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method write  ~maxLength:(len : int ) (buffer : (*pointer to const uint8_t*) unsupported) =
     let sel, args = (
       Objc.arg buffer "write" (*pointer to const uint8_t*) unsupported
       ++ Objc.arg len "maxLength" make_int
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)

*)
   method hasSpaceAvailable =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasSpaceAvailable:")[]) : bool)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSStreamDelegateEventExtensions *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSStreamDelegateEventExtensions *)
   method stream  ~handleEvent:(eventCode : int ) (aStream : [`NSStream] Objc.t) =
     let sel, args = (
       Objc.arg aStream "stream" make_pointer_from_object
       ++ Objc.arg eventCode "handleEvent" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
end
