open Objc
open NSObject


external init : unit -> unit = "caml_init_NSHost"
let _ = init()
(* Class object for NSHost *)
let class_NSHost = object
   val o = Classes.find "NSHost"
   method _new = (Objc.objcnew o : [`NSHost] nativeNSObject)
   method currentHost =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentHost:")[]) : [`NSHost] Objc.nativeNSObject)
   method hostWithName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "hostWithName:")[make_pointer_from_object name]) : [`NSHost] Objc.nativeNSObject)
   method hostWithAddress (address : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "hostWithAddress:")[make_pointer_from_object address]) : [`NSHost] Objc.nativeNSObject)
   method setHostCacheEnabled (flag : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setHostCacheEnabled:")[make_bool flag]) : [`NSHost] Objc.nativeNSObject)
   method isHostCacheEnabled =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "isHostCacheEnabled:")[]) : [`NSHost] Objc.nativeNSObject)
   method flushHostCache =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "flushHostCache:")[]) : [`NSHost] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSHost *)
class native_NSHost = fun (o : [`NSHost] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method isEqualToHost (aHost : [`NSHost] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEqualToHost:")[make_pointer_from_object aHost]) : bool)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method names =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "names:")[]) : [`NSArray] Objc.nativeNSObject)
   method address =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "address:")[]) : [`NSString] Objc.nativeNSObject)
   method addresses =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "addresses:")[]) : [`NSArray] Objc.nativeNSObject)
end
