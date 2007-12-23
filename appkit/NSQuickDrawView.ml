open Objc
open NSView


external init : unit -> unit = "caml_init_NSQuickDrawView"
let _ = init()
(* Class object for NSQuickDrawView *)
let class_NSQuickDrawView = object
   val o = Classes.find "NSQuickDrawView"
   method _new = (Objc.objcnew o : [`NSQuickDrawView] nativeNSObject)
end
(* Encapsulation for native instance of NSQuickDrawView *)
class native_NSQuickDrawView = fun (o : [`NSQuickDrawView] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method qdPort =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "qdPort:")[]) : [`void] Objc.nativeNSObject)
end
