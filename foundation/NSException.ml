open Objc
open NSObject


external init : unit -> unit = "caml_init_NSException"
let _ = init()
(* Class object for NSAssertionHandler *)
let class_NSAssertionHandler = object
   val o = Classes.find "NSAssertionHandler"
   method _new = (Objc.objcnew o : [`NSAssertionHandler] nativeNSObject)
   method currentHandler =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentHandler:")[]) : [`NSAssertionHandler] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAssertionHandler *)
class native_NSAssertionHandler = fun (o : [`NSAssertionHandler] nativeNSObject) -> object (self)
   val o = o
   method o = o
end
(* Class object for NSException *)
let class_NSException = object
   val o = Classes.find "NSException"
   method _new = (Objc.objcnew o : [`NSException] nativeNSObject)
(* methods for category NSExceptionRaisingConveniences *)
(*  UNSUPPORTED
   method raise  ~format:(format : [`NSString] Objc.t ) ?arguments:(argList : (*va_list*) unsupported option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "raise" make_pointer_from_object
       ++ Objc.arg format "format" make_pointer_from_object
       ++ Objc.opt_arg argList "arguments" (*va_list*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSException] Objc.nativeNSObject)

*)
   method exceptionWithName  ~reason:(reason : [`NSString] Objc.t ) ~userInfo:(userInfo : [`NSDictionary] Objc.t ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "exceptionWithName" make_pointer_from_object
       ++ Objc.arg reason "reason" make_pointer_from_object
       ++ Objc.arg userInfo "userInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSException] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSException *)
class native_NSException = fun (o : [`NSException] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSExceptionRaisingConveniences *)
   method initWithName  ~reason:(aReason : [`NSString] Objc.t ) ~userInfo:(aUserInfo : [`NSDictionary] Objc.t ) (aName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aName "initWithName" make_pointer_from_object
       ++ Objc.arg aReason "reason" make_pointer_from_object
       ++ Objc.arg aUserInfo "userInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method reason =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "reason:")[]) : [`NSString] Objc.nativeNSObject)
   method userInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "userInfo:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method raise =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "raise:")[]) : unit)
end
