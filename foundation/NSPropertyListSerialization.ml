(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPropertyListSerialization.methods
end

class t = fun (r :[`NSPropertyListSerialization] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPropertyListSerialization *)
let c = Classes.find "NSPropertyListSerialization"
let _new()= (Objc.objcnew c : [`NSPropertyListSerialization] id)
let alloc() = (Objc.objcalloc c : [`NSPropertyListSerialization] id)
let propertyList_isValidForFormat  (plist : [`NSObject] Objc.t) (format : int) =
    let sel, args = (
      Objc.arg plist "propertyList" make_pointer_from_object
      ++ Objc.arg format "isValidForFormat" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool c (Selector.find_list sel) args)
       : bool)
(*  UNSUPPORTED
let dataFromPropertyList_format_errorDescription  (plist : [`NSObject] Objc.t) (format : int) (errorString : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg plist "dataFromPropertyList" make_pointer_from_object
      ++ Objc.arg format "format" make_int
      ++ Objc.arg errorString "errorDescription" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))

*)
(*  UNSUPPORTED
let propertyListFromData_mutabilityOption_format_errorDescription  (data : [`NSData] Objc.t) (opt : int) (format : [`NSPropertyListFormat] Objc.t) (errorString : (*pointer to pointer to NSString*) unsupported) =
    let sel, args = (
      Objc.arg data "propertyListFromData" make_pointer_from_object
      ++ Objc.arg opt "mutabilityOption" make_int
      ++ Objc.arg format "format" make_pointer_from_object
      ++ Objc.arg errorString "errorDescription" (*pointer to pointer to NSString*) unsupported
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSPropertyListSerialization] Objc.id))

*)
