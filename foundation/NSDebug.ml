open Objc
open NSObject
open NSAutoreleasePool
open NSDate
open NSPort


external init : unit -> unit = "caml_init_NSDebug"
let _ = init()
(* Class object for NSAutoreleasePool *)
let class_NSAutoreleasePool = object
   val o = Classes.find "NSAutoreleasePool"
   method _new = (Objc.objcnew o : [`NSAutoreleasePool] nativeNSObject)
(* methods for category NSAutoreleasePoolDebugging *)
   method enableRelease (enable : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "enableRelease:")[make_bool enable]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method showPools =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "showPools:")[]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method resetTotalAutoreleasedObjects =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resetTotalAutoreleasedObjects:")[]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method totalAutoreleasedObjects =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "totalAutoreleasedObjects:")[]) : int)
   method enableFreedObjectCheck (enable : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "enableFreedObjectCheck:")[make_bool enable]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method autoreleasedObjectCount =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "autoreleasedObjectCount:")[]) : int)
   method topAutoreleasePoolCount =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "topAutoreleasePoolCount:")[]) : int)
   method poolCountHighWaterMark =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "poolCountHighWaterMark:")[]) : int)
   method setPoolCountHighWaterMark (count : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setPoolCountHighWaterMark:")[make_int count]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method poolCountHighWaterResolution =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "poolCountHighWaterResolution:")[]) : int)
   method setPoolCountHighWaterResolution (res : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setPoolCountHighWaterResolution:")[make_int res]) : [`NSAutoreleasePool] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAutoreleasePool *)
class native_NSAutoreleasePool = fun (o : [`NSAutoreleasePool] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSAutoreleasePoolDebugging *)
end
