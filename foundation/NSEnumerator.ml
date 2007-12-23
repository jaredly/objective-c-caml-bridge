open Objc
open NSObject


external init : unit -> unit = "caml_init_NSEnumerator"
let _ = init()
(* Class object for NSEnumerator *)
let class_NSEnumerator = object
   val o = Classes.find "NSEnumerator"
   method _new = (Objc.objcnew o : [`NSEnumerator] nativeNSObject)
(* methods for category NSExtendedEnumerator *)
end
(* Encapsulation for native instance of NSEnumerator *)
class native_NSEnumerator = fun (o : [`NSEnumerator] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSExtendedEnumerator *)
   method allObjects =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allObjects:")[]) : [`NSArray] Objc.nativeNSObject)
   method nextObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "nextObject:")[]) : [`NSObject] Objc.nativeNSObject)
end
