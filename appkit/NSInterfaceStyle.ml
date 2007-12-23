open Objc
open NSResponder


external init : unit -> unit = "caml_init_NSInterfaceStyle"
let _ = init()
(* Class object for NSResponder *)
let class_NSResponder = object
   val o = Classes.find "NSResponder"
   method _new = (Objc.objcnew o : [`NSResponder] nativeNSObject)
(* methods for category NSInterfaceStyle *)
end
(* Encapsulation for native instance of NSResponder *)
class native_NSResponder = fun (o : [`NSResponder] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSInterfaceStyle *)
   method interfaceStyle =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "interfaceStyle:")[]) : int)
   method setInterfaceStyle (interfaceStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setInterfaceStyle:")[make_int interfaceStyle]) : unit)
end
