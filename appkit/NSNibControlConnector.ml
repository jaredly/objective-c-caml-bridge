open Objc
open NSNibConnector


external init : unit -> unit = "caml_init_NSNibControlConnector"
let _ = init()
(* Class object for NSNibControlConnector *)
let class_NSNibControlConnector = object
   val o = Classes.find "NSNibControlConnector"
   method _new = (Objc.objcnew o : [`NSNibControlConnector] nativeNSObject)
end
(* Encapsulation for native instance of NSNibControlConnector *)
class native_NSNibControlConnector = fun (o : [`NSNibControlConnector] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method establishConnection =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "establishConnection:")[]) : unit)
end
