(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSNull"
let _ = init()
let make_NSObject_of_NSNull (o : [`NSNull] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSNull *)
let class_NSNull = object
   val repr = Classes.find "NSNull"
   method _new = (Objc.objcnew repr : [`NSNull] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSNull] nativeNSObject)
   method null =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "null:")[]) : [`NSNull] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSNull *)
class native_NSNull = fun (o : [`NSNull] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSNull o) as super
end
