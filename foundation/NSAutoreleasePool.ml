(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSAutoreleasePoolDebugging.methods_NSAutoreleasePool
  inherit Im_NSAutoreleasePool.methods
end

class t = fun (r :[`NSAutoreleasePool] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSAutoreleasePool *)
let c = Classes.find "NSAutoreleasePool"
let _new()= (Objc.objcnew c : [`NSAutoreleasePool] id)
let alloc() = (Objc.objcalloc c : [`NSAutoreleasePool] id)
(* class methods for category NSAutoreleasePoolDebugging of NSAutoreleasePool *)
let enableRelease (enable : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "enableRelease:")
      [make_bool enable]) : unit)
let showPools () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "showPools")[])
       : unit)
let resetTotalAutoreleasedObjects () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "resetTotalAutoreleasedObjects")[])
       : unit)
let totalAutoreleasedObjects () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "totalAutoreleasedObjects")[])
       : int)
let enableFreedObjectCheck (enable : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "enableFreedObjectCheck:")
      [make_bool enable]) : unit)
let autoreleasedObjectCount () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "autoreleasedObjectCount")[])
       : int)
let topAutoreleasePoolCount () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "topAutoreleasePoolCount")[])
       : int)
let poolCountHighWaterMark () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "poolCountHighWaterMark")[])
       : int)
let setPoolCountHighWaterMark (count : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setPoolCountHighWaterMark:")
      [make_int count]) : unit)
let poolCountHighWaterResolution () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "poolCountHighWaterResolution")[])
       : int)
let setPoolCountHighWaterResolution (res : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setPoolCountHighWaterResolution:")
      [make_int res]) : unit)
let addObject (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "addObject:")
      [make_pointer_from_object anObject]) : unit)
