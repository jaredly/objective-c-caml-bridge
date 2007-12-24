(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSAutoreleasePool
open NSDate
open NSPort


external init : unit -> unit = "caml_init_NSDebug"
let _ = init()
(* Class object for NSAutoreleasePool *)
let class_NSAutoreleasePool = object
   val repr = Classes.find "NSAutoreleasePool"
   method _new = (Objc.objcnew repr : [`NSAutoreleasePool] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAutoreleasePool] nativeNSObject)
(* methods for category NSAutoreleasePoolDebugging *)
   method enableRelease (enable : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "enableRelease:")[make_bool enable]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method showPools =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "showPools:")[]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method resetTotalAutoreleasedObjects =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resetTotalAutoreleasedObjects:")[]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method totalAutoreleasedObjects =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "totalAutoreleasedObjects:")[]) : int)
   method enableFreedObjectCheck (enable : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "enableFreedObjectCheck:")[make_bool enable]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method autoreleasedObjectCount =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "autoreleasedObjectCount:")[]) : int)
   method topAutoreleasePoolCount =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "topAutoreleasePoolCount:")[]) : int)
   method poolCountHighWaterMark =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "poolCountHighWaterMark:")[]) : int)
   method setPoolCountHighWaterMark (count : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setPoolCountHighWaterMark:")[make_int count]) : [`NSAutoreleasePool] Objc.nativeNSObject)
   method poolCountHighWaterResolution =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "poolCountHighWaterResolution:")[]) : int)
   method setPoolCountHighWaterResolution (res : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setPoolCountHighWaterResolution:")[make_int res]) : [`NSAutoreleasePool] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAutoreleasePool *)
class native_NSAutoreleasePool = fun (o : [`NSAutoreleasePool] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSAutoreleasePoolDebugging *)
end
