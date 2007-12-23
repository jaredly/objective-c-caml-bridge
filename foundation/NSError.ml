open Objc
open NSObject


external init : unit -> unit = "caml_init_NSError"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSErrorRecoveryAttempting *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSErrorRecoveryAttempting *)
   method attemptRecoveryFromError  ~optionIndex:(recoveryOptionIndex : int ) ?delegate:(delegate : [`NSObject] Objc.t option) ?didRecoverSelector:(didRecoverSelector : selector option) ?contextInfo:(contextInfo : [`void] Objc.t option) (error : [`NSError] Objc.t) =
     let sel, args = (
       Objc.arg error "attemptRecoveryFromError" make_pointer_from_object
       ++ Objc.arg recoveryOptionIndex "optionIndex" make_int
       ++ Objc.opt_arg delegate "delegate" make_pointer_from_object
       ++ Objc.opt_arg didRecoverSelector "didRecoverSelector" make_selector
       ++ Objc.opt_arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   (* skipping selector attemptRecoveryFromError:optionIndex *)
end
(* Class object for NSError *)
let class_NSError = object
   val o = Classes.find "NSError"
   method _new = (Objc.objcnew o : [`NSError] nativeNSObject)
   method errorWithDomain  ~code:(code : int ) ~userInfo:(dict : [`NSDictionary] Objc.t ) (domain : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg domain "errorWithDomain" make_pointer_from_object
       ++ Objc.arg code "code" make_int
       ++ Objc.arg dict "userInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSError] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSError *)
class native_NSError = fun (o : [`NSError] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithDomain  ~code:(code : int ) ~userInfo:(dict : [`NSDictionary] Objc.t ) (domain : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg domain "initWithDomain" make_pointer_from_object
       ++ Objc.arg code "code" make_int
       ++ Objc.arg dict "userInfo" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method domain =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "domain:")[]) : [`NSString] Objc.nativeNSObject)
   method code =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "code:")[]) : int)
   method userInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "userInfo:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method localizedDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedDescription:")[]) : [`NSString] Objc.nativeNSObject)
   method localizedFailureReason =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedFailureReason:")[]) : [`NSString] Objc.nativeNSObject)
   method localizedRecoverySuggestion =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedRecoverySuggestion:")[]) : [`NSString] Objc.nativeNSObject)
   method localizedRecoveryOptions =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedRecoveryOptions:")[]) : [`NSArray] Objc.nativeNSObject)
   method recoveryAttempter =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "recoveryAttempter:")[]) : [`NSObject] Objc.nativeNSObject)
end
