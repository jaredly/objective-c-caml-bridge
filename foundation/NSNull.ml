open Objc
open NSObject


external init : unit -> unit = "caml_init_NSNull"
let _ = init()
(* Class object for NSNull *)
let class_NSNull = object
   val o = Classes.find "NSNull"
   method _new = (Objc.objcnew o : [`NSNull] nativeNSObject)
   method null =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "null:")[]) : [`NSNull] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSNull *)
class native_NSNull = fun (o : [`NSNull] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
