(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSResponder


external init : unit -> unit = "caml_init_NSInterfaceStyle"
let _ = init()
(* Class object for NSResponder *)
let class_NSResponder = object
   val repr = Classes.find "NSResponder"
   method _new = (Objc.objcnew repr : [`NSResponder] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSResponder] nativeNSObject)
(* methods for category NSInterfaceStyle *)
end
(* Encapsulation for native instance of NSResponder *)
class native_NSResponder = fun (o : [`NSResponder] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSInterfaceStyle *)
   method interfaceStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "interfaceStyle:")[]) : int)
   method setInterfaceStyle (interfaceStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setInterfaceStyle:")[make_int interfaceStyle]) : unit)
end
