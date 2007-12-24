(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSEnumerator"
let _ = init()
let make_NSObject_of_NSEnumerator (o : [`NSEnumerator] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSEnumerator *)
let class_NSEnumerator = object
   val repr = Classes.find "NSEnumerator"
   method _new = (Objc.objcnew repr : [`NSEnumerator] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSEnumerator] nativeNSObject)
(* methods for category NSExtendedEnumerator *)
end
(* Encapsulation for native instance of NSEnumerator *)
class native_NSEnumerator = fun (o : [`NSEnumerator] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSEnumerator o) as super
(* methods for category NSExtendedEnumerator *)
   method allObjects =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "allObjects:")[]) : [`NSArray] Objc.nativeNSObject)
   method nextObject =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "nextObject:")[]) : [`NSObject] Objc.nativeNSObject)
end
