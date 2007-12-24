(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSArray
open NSRange


external init : unit -> unit = "caml_init_NSFileHandle"
let _ = init()
let make_NSObject_of_NSFileHandle (o : [`NSFileHandle] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSFileHandle *)
let class_NSFileHandle = object
   val repr = Classes.find "NSFileHandle"
   method _new = (Objc.objcnew repr : [`NSFileHandle] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSFileHandle] nativeNSObject)
(* methods for category NSFileHandlePlatformSpecific *)
(* methods for category NSFileHandleAsynchronousAccess *)
(* methods for category NSFileHandleCreation *)
   method fileHandleWithStandardInput =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleWithStandardInput:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleWithStandardOutput =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleWithStandardOutput:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleWithStandardError =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleWithStandardError:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleWithNullDevice =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleWithNullDevice:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleForReadingAtPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleForReadingAtPath:")[make_pointer_from_object path]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleForWritingAtPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleForWritingAtPath:")[make_pointer_from_object path]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleForUpdatingAtPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleForUpdatingAtPath:")[make_pointer_from_object path]) : [`NSFileHandle] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSFileHandle *)
class native_NSFileHandle = fun (o : [`NSFileHandle] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSFileHandle o) as super
(* methods for category NSFileHandlePlatformSpecific *)
   method initWithNativeHandle  ?closeOnDealloc:(closeopt : bool option) (nativeHandle : [`void] Objc.t) =
     let sel, args = (
       Objc.arg nativeHandle "initWithNativeHandle" make_pointer_from_object
       ++ Objc.opt_arg closeopt "closeOnDealloc" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithNativeHandle *)
   method nativeHandle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "nativeHandle:")[]) : [`void] Objc.nativeNSObject)
   method initWithFileDescriptor  ?closeOnDealloc:(closeopt : bool option) (fd : int) =
     let sel, args = (
       Objc.arg fd "initWithFileDescriptor" make_int
       ++ Objc.opt_arg closeopt "closeOnDealloc" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithFileDescriptor *)
   method fileDescriptor =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "fileDescriptor:")[]) : int)
(* methods for category NSFileHandleAsynchronousAccess *)
   method readInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "readInBackgroundAndNotifyForModes:")[make_pointer_from_object modes]) : unit)
   method readInBackgroundAndNotify =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "readInBackgroundAndNotify:")[]) : unit)
   method readToEndOfFileInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "readToEndOfFileInBackgroundAndNotifyForModes:")[make_pointer_from_object modes]) : unit)
   method readToEndOfFileInBackgroundAndNotify =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "readToEndOfFileInBackgroundAndNotify:")[]) : unit)
   method acceptConnectionInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "acceptConnectionInBackgroundAndNotifyForModes:")[make_pointer_from_object modes]) : unit)
   method acceptConnectionInBackgroundAndNotify =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "acceptConnectionInBackgroundAndNotify:")[]) : unit)
   method waitForDataInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "waitForDataInBackgroundAndNotifyForModes:")[make_pointer_from_object modes]) : unit)
   method waitForDataInBackgroundAndNotify =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "waitForDataInBackgroundAndNotify:")[]) : unit)
(* methods for category NSFileHandleCreation *)
   method availableData =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "availableData:")[]) : [`NSData] Objc.nativeNSObject)
   method readDataToEndOfFile =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "readDataToEndOfFile:")[]) : [`NSData] Objc.nativeNSObject)
   method readDataOfLength (length : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "readDataOfLength:")[make_int length]) : [`NSData] Objc.nativeNSObject)
   method writeData (data : [`NSData] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "writeData:")[make_pointer_from_object data]) : unit)
   method offsetInFile =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "offsetInFile:")[]) : int64)
   method seekToEndOfFile =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "seekToEndOfFile:")[]) : int64)
   method seekToFileOffset (offset : int64) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "seekToFileOffset:")[make_int64 offset]) : unit)
   method truncateFileAtOffset (offset : int64) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "truncateFileAtOffset:")[make_int64 offset]) : unit)
   method synchronizeFile =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "synchronizeFile:")[]) : unit)
   method closeFile =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "closeFile:")[]) : unit)
end
let make_NSObject_of_NSPipe (o : [`NSPipe] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPipe *)
let class_NSPipe = object
   val repr = Classes.find "NSPipe"
   method _new = (Objc.objcnew repr : [`NSPipe] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPipe] nativeNSObject)
   method pipe =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pipe:")[]) : [`NSPipe] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPipe *)
class native_NSPipe = fun (o : [`NSPipe] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPipe o) as super
   method fileHandleForReading =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleForReading:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleForWriting =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileHandleForWriting:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
end
