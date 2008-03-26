(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSNotificationCreation.methods_NSNotification
  inherit Im_NSNotification.methods
end

class t = fun (r :[`NSNotification] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSNotification *)
let c = Classes.find "NSNotification"
let _new()= (Objc.objcnew c : [`NSNotification] id)
let alloc() = (Objc.objcalloc c : [`NSNotification] id)
(* class methods for category NSNotificationCreation of NSNotification *)
let notificationWithName_object  (aName : [`NSString] Objc.t) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg aName "notificationWithName" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSNotification] Objc.id))
let notificationWithName_object_userInfo  (aName : [`NSString] Objc.t) (anObject : [`NSObject] Objc.t) (aUserInfo : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg aName "notificationWithName" make_pointer_from_object
      ++ Objc.arg anObject "object" make_pointer_from_object
      ++ Objc.arg aUserInfo "userInfo" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSNotification] Objc.id))
