(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSPropertyList"
let _ = init()
let make_NSObject_of_NSPropertyListSerialization (o : [`NSPropertyListSerialization] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSPropertyListSerialization *)
let class_NSPropertyListSerialization = object
   val repr = Classes.find "NSPropertyListSerialization"
   method _new = (Objc.objcnew repr : [`NSPropertyListSerialization] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPropertyListSerialization] nativeNSObject)
   method propertyList  ~isValidForFormat:(format : int ) (plist : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg plist "propertyList" make_pointer_from_object
       ++ Objc.arg format "isValidForFormat" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPropertyListSerialization] Objc.nativeNSObject)
(*  UNSUPPORTED
   method dataFromPropertyList  ~format:(format : int ) ~errorDescription:(errorString : (*pointer to pointer to NSString*) unsupported ) (plist : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg plist "dataFromPropertyList" make_pointer_from_object
       ++ Objc.arg format "format" make_int
       ++ Objc.arg errorString "errorDescription" (*pointer to pointer to NSString*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method propertyListFromData  ~mutabilityOption:(opt : int ) ~format:(format : [`NSPropertyListFormat] Objc.t ) ~errorDescription:(errorString : (*pointer to pointer to NSString*) unsupported ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "propertyListFromData" make_pointer_from_object
       ++ Objc.arg opt "mutabilityOption" make_int
       ++ Objc.arg format "format" make_pointer_from_object
       ++ Objc.arg errorString "errorDescription" (*pointer to pointer to NSString*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSPropertyListSerialization] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSPropertyListSerialization *)
class native_NSPropertyListSerialization = fun (o : [`NSPropertyListSerialization] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSPropertyListSerialization o) as super
end
