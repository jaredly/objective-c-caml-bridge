open Objc
open NSObject


external init : unit -> unit = "caml_init_NSObjectScripting"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSScripting *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSScripting *)
   method scriptingProperties =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "scriptingProperties:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method setScriptingProperties (properties : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setScriptingProperties:")[make_pointer_from_object properties]) : unit)
end
