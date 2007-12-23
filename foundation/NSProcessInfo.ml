open Objc
open NSObject


external init : unit -> unit = "caml_init_NSProcessInfo"
let _ = init()
(* Class object for NSProcessInfo *)
let class_NSProcessInfo = object
   val o = Classes.find "NSProcessInfo"
   method _new = (Objc.objcnew o : [`NSProcessInfo] nativeNSObject)
   method processInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "processInfo:")[]) : [`NSProcessInfo] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSProcessInfo *)
class native_NSProcessInfo = fun (o : [`NSProcessInfo] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method environment =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "environment:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method arguments =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "arguments:")[]) : [`NSArray] Objc.nativeNSObject)
   method hostName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "hostName:")[]) : [`NSString] Objc.nativeNSObject)
   method processName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "processName:")[]) : [`NSString] Objc.nativeNSObject)
   method processIdentifier =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "processIdentifier:")[]) : int)
   method setProcessName (newName : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setProcessName:")[make_pointer_from_object newName]) : unit)
   method globallyUniqueString =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "globallyUniqueString:")[]) : [`NSString] Objc.nativeNSObject)
   method operatingSystem =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "operatingSystem:")[]) : int)
   method operatingSystemName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "operatingSystemName:")[]) : [`NSString] Objc.nativeNSObject)
   method operatingSystemVersionString =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "operatingSystemVersionString:")[]) : [`NSString] Objc.nativeNSObject)
end
