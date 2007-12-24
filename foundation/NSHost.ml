(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSHost"
let _ = init()
let make_NSObject_of_NSHost (o : [`NSHost] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSHost *)
let class_NSHost = object
   val repr = Classes.find "NSHost"
   method _new = (Objc.objcnew repr : [`NSHost] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSHost] nativeNSObject)
   method currentHost =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentHost:")[]) : [`NSHost] Objc.nativeNSObject)
   method hostWithName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "hostWithName:")[make_pointer_from_object name]) : [`NSHost] Objc.nativeNSObject)
   method hostWithAddress (address : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "hostWithAddress:")[make_pointer_from_object address]) : [`NSHost] Objc.nativeNSObject)
   method setHostCacheEnabled (flag : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setHostCacheEnabled:")[make_bool flag]) : [`NSHost] Objc.nativeNSObject)
   method isHostCacheEnabled =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "isHostCacheEnabled:")[]) : [`NSHost] Objc.nativeNSObject)
   method flushHostCache =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "flushHostCache:")[]) : [`NSHost] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSHost *)
class native_NSHost = fun (o : [`NSHost] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSHost o) as super
   method isEqualToHost (aHost : [`NSHost] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualToHost:")[make_pointer_from_object aHost]) : bool)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method names =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "names:")[]) : [`NSArray] Objc.nativeNSObject)
   method address =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "address:")[]) : [`NSString] Objc.nativeNSObject)
   method addresses =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "addresses:")[]) : [`NSArray] Objc.nativeNSObject)
end
