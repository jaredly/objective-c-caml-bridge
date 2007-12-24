(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSNibConnector


external init : unit -> unit = "caml_init_NSNibControlConnector"
let _ = init()
let make_NSNibConnector_of_NSNibControlConnector (o : [`NSNibControlConnector] nativeNSObject) = (Obj.magic o : [`NSNibConnector] nativeNSObject)
(* Class object for NSNibControlConnector *)
let class_NSNibControlConnector = object
   val repr = Classes.find "NSNibControlConnector"
   method _new = (Objc.objcnew repr : [`NSNibControlConnector] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNibControlConnector] nativeNSObject)
end
(* Encapsulation for native instance of NSNibControlConnector *)
class native_NSNibControlConnector = fun (o : [`NSNibControlConnector] nativeNSObject) -> object (self)
   inherit native_NSNibConnector (make_NSNibConnector_of_NSNibControlConnector o) as super
   method establishConnection =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "establishConnection:")[]) : unit)
end
