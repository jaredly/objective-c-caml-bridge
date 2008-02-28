(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSException] id) -> object
  inherit Cati_NSExceptionRaisingConveniences.methods_NSException
  inherit Im_NSException.methods
  method repr = r
end

(* Class object for NSException *)
let c = Classes.find "NSException"
let _new()= (Objc.objcnew c : [`NSException] id)
let alloc() = (Objc.objcalloc c : [`NSException] id)
(* class methods for category NSExceptionRaisingConveniences of NSException *)
(*  UNSUPPORTED
let raise  ~format:(format : [`NSString] Objc.t ) ?arguments:(argList : (*va_list*) unsupported option) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "raise" make_pointer_from_object
      ++ Objc.arg format "format" make_pointer_from_object
      ++ Objc.opt_arg argList "arguments" (*va_list*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)

*)
let exceptionWithName  ~reason:(reason : [`NSString] Objc.t ) ~userInfo:(userInfo : [`NSDictionary] Objc.t ) (name : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg name "exceptionWithName" make_pointer_from_object
      ++ Objc.arg reason "reason" make_pointer_from_object
      ++ Objc.arg userInfo "userInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSException] Objc.id))
