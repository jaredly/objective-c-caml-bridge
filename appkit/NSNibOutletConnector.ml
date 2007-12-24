(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSNibConnector


external init : unit -> unit = "caml_init_NSNibOutletConnector"
let _ = init()
let make_NSNibConnector_of_NSNibOutletConnector (o : [`NSNibOutletConnector] nativeNSObject) = (Obj.magic o : [`NSNibConnector] nativeNSObject)
(* Class object for NSNibOutletConnector *)
let class_NSNibOutletConnector = object
   val repr = Classes.find "NSNibOutletConnector"
   method _new = (Objc.objcnew repr : [`NSNibOutletConnector] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNibOutletConnector] nativeNSObject)
end
(* Encapsulation for native instance of NSNibOutletConnector *)
class native_NSNibOutletConnector = fun (o : [`NSNibOutletConnector] nativeNSObject) -> object (self)
   inherit native_NSNibConnector (make_NSNibConnector_of_NSNibOutletConnector o) as super
   method establishConnection =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "establishConnection:")[]) : unit)
end
