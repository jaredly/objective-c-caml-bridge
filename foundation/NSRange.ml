open Objc
open NSValue


external init : unit -> unit = "caml_init_NSRange"
let _ = init()
(* Class object for NSValue *)
let class_NSValue = object
   val o = Classes.find "NSValue"
   method _new = (Objc.objcnew o : [`NSValue] nativeNSObject)
(* methods for category NSValueRangeExtensions *)
   method valueWithRange (range : int * int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "valueWithRange:")[make_range range]) : [`NSValue] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSValue *)
class native_NSValue = fun (o : [`NSValue] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSValueRangeExtensions *)
   method rangeValue =
     (get_range (Objc.invoke Objc.tag_nsrange o (Selector.find "rangeValue:")[]) : (int * int))
end
