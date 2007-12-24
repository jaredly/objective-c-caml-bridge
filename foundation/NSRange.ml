(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSValue


external init : unit -> unit = "caml_init_NSRange"
let _ = init()
(* Class object for NSValue *)
let class_NSValue = object
   val repr = Classes.find "NSValue"
   method _new = (Objc.objcnew repr : [`NSValue] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSValue] nativeNSObject)
(* methods for category NSValueRangeExtensions *)
   method valueWithRange (range : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueWithRange:")[make_range range]) : [`NSValue] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSValue *)
class native_NSValue = fun (o : [`NSValue] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSValueRangeExtensions *)
   method rangeValue =
     (get_range (Objc.invoke Objc.tag_nsrange repr (Selector.find "rangeValue:")[]) : (int * int))
end
