open Objc
open NSObject


external init : unit -> unit = "caml_init_NSPropertyList"
let _ = init()
(* Class object for NSPropertyListSerialization *)
let class_NSPropertyListSerialization = object
   val o = Classes.find "NSPropertyListSerialization"
   method _new = (Objc.objcnew o : [`NSPropertyListSerialization] nativeNSObject)
   method propertyList  ~isValidForFormat:(format : int ) (plist : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg plist "propertyList" make_pointer_from_object
       ++ Objc.arg format "isValidForFormat" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPropertyListSerialization] Objc.nativeNSObject)
(*  UNSUPPORTED
   method dataFromPropertyList  ~format:(format : int ) ~errorDescription:(errorString : (*pointer to pointer to NSString*) unsupported ) (plist : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg plist "dataFromPropertyList" make_pointer_from_object
       ++ Objc.arg format "format" make_int
       ++ Objc.arg errorString "errorDescription" (*pointer to pointer to NSString*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method propertyListFromData  ~mutabilityOption:(opt : int ) ~format:(format : [`NSPropertyListFormat] Objc.t ) ~errorDescription:(errorString : (*pointer to pointer to NSString*) unsupported ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "propertyListFromData" make_pointer_from_object
       ++ Objc.arg opt "mutabilityOption" make_int
       ++ Objc.arg format "format" make_pointer_from_object
       ++ Objc.arg errorString "errorDescription" (*pointer to pointer to NSString*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSPropertyListSerialization] Objc.nativeNSObject)

*)
end
(* Encapsulation for native instance of NSPropertyListSerialization *)
class native_NSPropertyListSerialization = fun (o : [`NSPropertyListSerialization] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
