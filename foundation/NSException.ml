(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSException"
let _ = init()
let make_NSObject_of_NSException (o : [`NSException] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSException *)
let class_NSException = object
   val repr = Classes.find "NSException"
   method _new = (Objc.objcnew repr : [`NSException] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSException] nativeNSObject)
(* methods for category NSExceptionRaisingConveniences *)
(*  UNSUPPORTED
   method raise  ~format:(format : [`NSString] Objc.t ) ?arguments:(argList : (*va_list*) unsupported option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "raise" make_pointer_from_object
       ++ Objc.arg format "format" make_pointer_from_object
       ++ Objc.opt_arg argList "arguments" (*va_list*) unsupported
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSException] Objc.nativeNSObject)

*)
   method exceptionWithName  ~reason:(reason : [`NSString] Objc.t ) ~userInfo:(userInfo : [`NSDictionary] Objc.t ) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "exceptionWithName" make_pointer_from_object
       ++ Objc.arg reason "reason" make_pointer_from_object
       ++ Objc.arg userInfo "userInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSException] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSException *)
class native_NSException = fun (o : [`NSException] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSException o) as super
(* methods for category NSExceptionRaisingConveniences *)
   method initWithName  ~reason:(aReason : [`NSString] Objc.t ) ~userInfo:(aUserInfo : [`NSDictionary] Objc.t ) (aName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aName "initWithName" make_pointer_from_object
       ++ Objc.arg aReason "reason" make_pointer_from_object
       ++ Objc.arg aUserInfo "userInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method reason =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "reason:")[]) : [`NSString] Objc.nativeNSObject)
   method userInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "userInfo:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method raise =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "raise:")[]) : unit)
end
let make_NSObject_of_NSAssertionHandler (o : [`NSAssertionHandler] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSAssertionHandler *)
let class_NSAssertionHandler = object
   val repr = Classes.find "NSAssertionHandler"
   method _new = (Objc.objcnew repr : [`NSAssertionHandler] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSAssertionHandler] nativeNSObject)
   method currentHandler =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentHandler:")[]) : [`NSAssertionHandler] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSAssertionHandler *)
class native_NSAssertionHandler = fun (o : [`NSAssertionHandler] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSAssertionHandler o) as super
end
