open Objc
open NSObject
open NSArray
open NSRange


external init : unit -> unit = "caml_init_NSFileHandle"
let _ = init()
(* Class object for NSPipe *)
let class_NSPipe = object
   val o = Classes.find "NSPipe"
   method _new = (Objc.objcnew o : [`NSPipe] nativeNSObject)
   method pipe =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "pipe:")[]) : [`NSPipe] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPipe *)
class native_NSPipe = fun (o : [`NSPipe] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method fileHandleForReading =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleForReading:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleForWriting =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleForWriting:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSFileHandle *)
let class_NSFileHandle = object
   val o = Classes.find "NSFileHandle"
   method _new = (Objc.objcnew o : [`NSFileHandle] nativeNSObject)
(* methods for category NSFileHandlePlatformSpecific *)
(* methods for category NSFileHandleAsynchronousAccess *)
(* methods for category NSFileHandleCreation *)
   method fileHandleWithStandardInput =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleWithStandardInput:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleWithStandardOutput =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleWithStandardOutput:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleWithStandardError =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleWithStandardError:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleWithNullDevice =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleWithNullDevice:")[]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleForReadingAtPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleForReadingAtPath:")[make_pointer_from_object path]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleForWritingAtPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleForWritingAtPath:")[make_pointer_from_object path]) : [`NSFileHandle] Objc.nativeNSObject)
   method fileHandleForUpdatingAtPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "fileHandleForUpdatingAtPath:")[make_pointer_from_object path]) : [`NSFileHandle] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSFileHandle *)
class native_NSFileHandle = fun (o : [`NSFileHandle] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSFileHandlePlatformSpecific *)
   method initWithNativeHandle  ?closeOnDealloc:(closeopt : bool option) (nativeHandle : [`void] Objc.t) =
     let sel, args = (
       Objc.arg nativeHandle "initWithNativeHandle" make_pointer_from_object
       ++ Objc.opt_arg closeopt "closeOnDealloc" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithNativeHandle *)
   method nativeHandle =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nativeHandle:")[]) : [`void] Objc.nativeNSObject)
   method initWithFileDescriptor  ?closeOnDealloc:(closeopt : bool option) (fd : int) =
     let sel, args = (
       Objc.arg fd "initWithFileDescriptor" make_int
       ++ Objc.opt_arg closeopt "closeOnDealloc" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithFileDescriptor *)
   method fileDescriptor =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "fileDescriptor:")[]) : int)
(* methods for category NSFileHandleAsynchronousAccess *)
   method readInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "readInBackgroundAndNotifyForModes:")[make_pointer_from_object modes]) : unit)
   method readInBackgroundAndNotify =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "readInBackgroundAndNotify:")[]) : unit)
   method readToEndOfFileInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "readToEndOfFileInBackgroundAndNotifyForModes:")[make_pointer_from_object modes]) : unit)
   method readToEndOfFileInBackgroundAndNotify =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "readToEndOfFileInBackgroundAndNotify:")[]) : unit)
   method acceptConnectionInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "acceptConnectionInBackgroundAndNotifyForModes:")[make_pointer_from_object modes]) : unit)
   method acceptConnectionInBackgroundAndNotify =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "acceptConnectionInBackgroundAndNotify:")[]) : unit)
   method waitForDataInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "waitForDataInBackgroundAndNotifyForModes:")[make_pointer_from_object modes]) : unit)
   method waitForDataInBackgroundAndNotify =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "waitForDataInBackgroundAndNotify:")[]) : unit)
(* methods for category NSFileHandleCreation *)
   method availableData =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "availableData:")[]) : [`NSData] Objc.nativeNSObject)
   method readDataToEndOfFile =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "readDataToEndOfFile:")[]) : [`NSData] Objc.nativeNSObject)
   method readDataOfLength (length : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "readDataOfLength:")[make_int length]) : [`NSData] Objc.nativeNSObject)
   method writeData (data : [`NSData] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "writeData:")[make_pointer_from_object data]) : unit)
   method offsetInFile =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "offsetInFile:")[]) : int64)
   method seekToEndOfFile =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "seekToEndOfFile:")[]) : int64)
   method seekToFileOffset (offset : int64) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "seekToFileOffset:")[make_int64 offset]) : unit)
   method truncateFileAtOffset (offset : int64) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "truncateFileAtOffset:")[make_int64 offset]) : unit)
   method synchronizeFile =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "synchronizeFile:")[]) : unit)
   method closeFile =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "closeFile:")[]) : unit)
end
