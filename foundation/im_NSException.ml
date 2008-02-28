(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSException *)
class virtual methods = object (self)
  method virtual repr : [`NSException] Objc.id
  method initWithName  ~reason:(aReason : [`NSString] Objc.t ) ~userInfo:(aUserInfo : [`NSDictionary] Objc.t ) (aName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aName "initWithName" make_pointer_from_object
      ++ Objc.arg aReason "reason" make_pointer_from_object
      ++ Objc.arg aUserInfo "userInfo" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method reason =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "reason")[])
       : [`NSString] Objc.id))
  method userInfo =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "userInfo")[])
       : [`NSDictionary] Objc.id))
  method raise =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "raise")[])
       : unit)
end
