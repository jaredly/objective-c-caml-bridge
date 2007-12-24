(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSProcessInfo"
let _ = init()
(* ENUMS *)
let _NSWindowsNTOperatingSystem = 1L
let _NSWindows95OperatingSystem = 2L
let _NSSolarisOperatingSystem = 3L
let _NSHPUXOperatingSystem = 4L
let _NSMACHOperatingSystem = 5L
let _NSSunOSOperatingSystem = 6L
let _NSOSF1OperatingSystem = 7L


let make_NSObject_of_NSProcessInfo (o : [`NSProcessInfo] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSProcessInfo *)
let class_NSProcessInfo = object
   val repr = Classes.find "NSProcessInfo"
   method _new = (Objc.objcnew repr : [`NSProcessInfo] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSProcessInfo] nativeNSObject)
   method processInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "processInfo:")[]) : [`NSProcessInfo] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSProcessInfo *)
class native_NSProcessInfo = fun (o : [`NSProcessInfo] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSProcessInfo o) as super
   method environment =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "environment:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method arguments =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "arguments:")[]) : [`NSArray] Objc.nativeNSObject)
   method hostName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "hostName:")[]) : [`NSString] Objc.nativeNSObject)
   method processName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "processName:")[]) : [`NSString] Objc.nativeNSObject)
   method processIdentifier =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "processIdentifier:")[]) : int)
   method setProcessName (newName : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setProcessName:")[make_pointer_from_object newName]) : unit)
   method globallyUniqueString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "globallyUniqueString:")[]) : [`NSString] Objc.nativeNSObject)
   method operatingSystem =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "operatingSystem:")[]) : int)
   method operatingSystemName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "operatingSystemName:")[]) : [`NSString] Objc.nativeNSObject)
   method operatingSystemVersionString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "operatingSystemVersionString:")[]) : [`NSString] Objc.nativeNSObject)
end
