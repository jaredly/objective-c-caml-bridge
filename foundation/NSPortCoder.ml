open Objc
open NSCoder


external init : unit -> unit = "caml_init_NSPortCoder"
let _ = init()
(* Class object for NSPortCoder *)
let class_NSPortCoder = object
   val o = Classes.find "NSPortCoder"
   method _new = (Objc.objcnew o : [`NSPortCoder] nativeNSObject)
   method portCoderWithReceivePort  ~sendPort:(sndPort : [`NSPort] Objc.t ) ~components:(comps : [`NSArray] Objc.t ) (rcvPort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg rcvPort "portCoderWithReceivePort" make_pointer_from_object
       ++ Objc.arg sndPort "sendPort" make_pointer_from_object
       ++ Objc.arg comps "components" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPortCoder] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPortCoder *)
class native_NSPortCoder = fun (o : [`NSPortCoder] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method isBycopy =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isBycopy:")[]) : bool)
   method isByref =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isByref:")[]) : bool)
   method connection =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "connection:")[]) : [`NSConnection] Objc.nativeNSObject)
   method encodePortObject (aport : [`NSPort] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "encodePortObject:")[make_pointer_from_object aport]) : unit)
   method decodePortObject =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decodePortObject:")[]) : [`NSPort] Objc.nativeNSObject)
   method initWithReceivePort  ~sendPort:(sndPort : [`NSPort] Objc.t ) ~components:(comps : [`NSArray] Objc.t ) (rcvPort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg rcvPort "initWithReceivePort" make_pointer_from_object
       ++ Objc.arg sndPort "sendPort" make_pointer_from_object
       ++ Objc.arg comps "components" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method dispatch =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "dispatch:")[]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSDistributedObjects *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSDistributedObjects *)
   method classForPortCoder =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "classForPortCoder:")[]) : [`NSObject] Objc.nativeNSObject)
   method replacementObjectForPortCoder (coder : [`NSPortCoder] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "replacementObjectForPortCoder:")[make_pointer_from_object coder]) : [`NSObject] Objc.nativeNSObject)
end
