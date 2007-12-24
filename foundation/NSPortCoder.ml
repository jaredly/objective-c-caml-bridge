(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSCoder


external init : unit -> unit = "caml_init_NSPortCoder"
let _ = init()
let make_NSCoder_of_NSPortCoder (o : [`NSPortCoder] nativeNSObject) = (Obj.magic o : [`NSCoder] nativeNSObject)
(* Class object for NSPortCoder *)
let class_NSPortCoder = object
   val repr = Classes.find "NSPortCoder"
   method _new = (Objc.objcnew repr : [`NSPortCoder] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPortCoder] nativeNSObject)
   method portCoderWithReceivePort  ~sendPort:(sndPort : [`NSPort] Objc.t ) ~components:(comps : [`NSArray] Objc.t ) (rcvPort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg rcvPort "portCoderWithReceivePort" make_pointer_from_object
       ++ Objc.arg sndPort "sendPort" make_pointer_from_object
       ++ Objc.arg comps "components" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPortCoder] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPortCoder *)
class native_NSPortCoder = fun (o : [`NSPortCoder] nativeNSObject) -> object (self)
   inherit native_NSCoder (make_NSCoder_of_NSPortCoder o) as super
   method isBycopy =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isBycopy:")[]) : bool)
   method isByref =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isByref:")[]) : bool)
   method connection =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "connection:")[]) : [`NSConnection] Objc.nativeNSObject)
   method encodePortObject (aport : [`NSPort] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "encodePortObject:")[make_pointer_from_object aport]) : unit)
   method decodePortObject =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "decodePortObject:")[]) : [`NSPort] Objc.nativeNSObject)
   method initWithReceivePort  ~sendPort:(sndPort : [`NSPort] Objc.t ) ~components:(comps : [`NSArray] Objc.t ) (rcvPort : [`NSPort] Objc.t) =
     let sel, args = (
       Objc.arg rcvPort "initWithReceivePort" make_pointer_from_object
       ++ Objc.arg sndPort "sendPort" make_pointer_from_object
       ++ Objc.arg comps "components" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method dispatch =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "dispatch:")[]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSDistributedObjects *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSDistributedObjects *)
   method classForPortCoder =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "classForPortCoder:")[]) : [`NSObject] Objc.nativeNSObject)
   method replacementObjectForPortCoder (coder : [`NSPortCoder] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "replacementObjectForPortCoder:")[make_pointer_from_object coder]) : [`NSObject] Objc.nativeNSObject)
end
