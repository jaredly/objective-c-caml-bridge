(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSNotification] id) -> object
  inherit Cati_NSNotificationCreation.methods_NSNotification
  inherit Im_NSNotification.methods
  method repr = r
end

(* Class object for NSNotification *)
let c = Classes.find "NSNotification"
let _new()= (Objc.objcnew c : [`NSNotification] id)
let alloc() = (Objc.objcalloc c : [`NSNotification] id)
(* class methods for category NSNotificationCreation of NSNotification *)
  (* skipping selector notificationWithName:l_object *)
let notificationWithName  ~l_object:(anObject : [`NSObject] Objc.t ) ?userInfo:(aUserInfo : [`NSDictionary] Objc.t option) (aName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aName "notificationWithName" make_pointer_from_object
      ++ Objc.arg anObject "l_object" make_pointer_from_object
      ++ Objc.opt_arg aUserInfo "userInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSNotification] Objc.id))
