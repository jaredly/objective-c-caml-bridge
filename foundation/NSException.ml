(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSExceptionRaisingConveniences.methods_NSException
  inherit Im_NSException.methods
end

class t = fun (r :[`NSException] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSException *)
let c = Classes.find "NSException"
let _new()= (Objc.objcnew c : [`NSException] id)
let alloc() = (Objc.objcalloc c : [`NSException] id)
(* class methods for category NSExceptionRaisingConveniences of NSException *)
(*  UNSUPPORTED
let raise_format_arguments  (name : [`NSString] Objc.t) (format : [`NSString] Objc.t) (argList : (*va_list*) unsupported) =
    let sel, args = (
      Objc.arg name "raise" make_pointer_from_object
      ++ Objc.arg format "format" make_pointer_from_object
      ++ Objc.arg argList "arguments" (*va_list*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)

*)
let exceptionWithName_reason_userInfo  (name : [`NSString] Objc.t) (reason : [`NSString] Objc.t) (userInfo : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg name "exceptionWithName" make_pointer_from_object
      ++ Objc.arg reason "reason" make_pointer_from_object
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSException] Objc.id))
