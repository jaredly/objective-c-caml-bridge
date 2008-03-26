(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSError *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithDomain_code_userInfo  (domain : [`NSString] Objc.t) (code : int) (dict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg domain "initWithDomain" make_pointer_from_object
      ++ Objc.arg code "code" make_int
      ++ Objc.arg dict "userInfo" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method domain =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "domain")[])
       : [`NSString] Objc.id))
  method code =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "code")[])
       : int)
  method userInfo =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "userInfo")[])
       : [`NSDictionary] Objc.id))
  method localizedDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedDescription")[])
       : [`NSString] Objc.id))
  method localizedFailureReason =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedFailureReason")[])
       : [`NSString] Objc.id))
  method localizedRecoverySuggestion =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedRecoverySuggestion")[])
       : [`NSString] Objc.id))
  method localizedRecoveryOptions =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedRecoveryOptions")[])
       : [`NSArray] Objc.id))
  method recoveryAttempter =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "recoveryAttempter")[])
       : [`NSObject] Objc.id)
end
