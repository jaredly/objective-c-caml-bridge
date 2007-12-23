open Objc
open NSNibConnector


external init : unit -> unit = "caml_init_NSNibOutletConnector"
let _ = init()
(* Class object for NSNibOutletConnector *)
let class_NSNibOutletConnector = object
   val o = Classes.find "NSNibOutletConnector"
   method _new = (Objc.objcnew o : [`NSNibOutletConnector] nativeNSObject)
end
(* Encapsulation for native instance of NSNibOutletConnector *)
class native_NSNibOutletConnector = fun (o : [`NSNibOutletConnector] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method establishConnection =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "establishConnection:")[]) : unit)
end
