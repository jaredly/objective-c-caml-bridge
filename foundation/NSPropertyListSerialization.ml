(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSPropertyListSerialization] id) -> object
  inherit Im_NSPropertyListSerialization.methods
  method repr = r
end

(* Class object for NSPropertyListSerialization *)
let c = Classes.find "NSPropertyListSerialization"
let _new()= (Objc.objcnew c : [`NSPropertyListSerialization] id)
let alloc() = (Objc.objcalloc c : [`NSPropertyListSerialization] id)
let propertyList  ~isValidForFormat:(format : int ) (plist : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg plist "propertyList" make_pointer_from_object
      ++ Objc.arg format "isValidForFormat" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool c (Selector.find_list sel) args)
       : bool)
(*  UNSUPPORTED
let dataFromPropertyList  ~format:(format : int ) ~errorDescription:(errorString : (*pointer to pointer to NSString*) unsupported ) (plist : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg plist "dataFromPropertyList" make_pointer_from_object
      ++ Objc.arg format "format" make_int
      ++ Objc.arg errorString "errorDescription" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))

*)
(*  UNSUPPORTED
let propertyListFromData  ~mutabilityOption:(opt : int ) ~format:(format : [`NSPropertyListFormat] Objc.t ) ~errorDescription:(errorString : (*pointer to pointer to NSString*) unsupported ) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg data "propertyListFromData" make_pointer_from_object
      ++ Objc.arg opt "mutabilityOption" make_int
      ++ Objc.arg format "format" make_pointer_from_object
      ++ Objc.arg errorString "errorDescription" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPropertyListSerialization] Objc.id))

*)
