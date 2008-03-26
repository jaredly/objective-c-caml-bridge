(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSErrorRecoveryAttempting of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo  (error : [`NSError] Objc.t) (recoveryOptionIndex : int) (delegate : [`NSObject] Objc.t) (didRecoverSelector : selector) (contextInfo : [`void] Objc.t) =
    let sel, args = (
      Objc.arg error "attemptRecoveryFromError" make_pointer_from_object
      ++ Objc.arg recoveryOptionIndex "optionIndex" make_int
      ++ Objc.arg delegate "delegate" make_pointer_from_object
      ++ Objc.arg didRecoverSelector "didRecoverSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method attemptRecoveryFromError_optionIndex  (error : [`NSError] Objc.t) (recoveryOptionIndex : int) =
    let sel, args = (
      Objc.arg error "attemptRecoveryFromError" make_pointer_from_object
      ++ Objc.arg recoveryOptionIndex "optionIndex" make_int
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
