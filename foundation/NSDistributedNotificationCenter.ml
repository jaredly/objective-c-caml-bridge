(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSNotificationDeliverImmediately = 1L
let _NSNotificationPostToAllSessions = 2L


class virtual methods = object
  inherit Im_NSDistributedNotificationCenter.methods
end

class t = fun (r :[`NSDistributedNotificationCenter] id) -> object
  inherit methods
  inherit NSNotificationCenter.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSDistributedNotificationCenter *)
let c = Classes.find "NSDistributedNotificationCenter"
let _new()= (Objc.objcnew c : [`NSDistributedNotificationCenter] id)
let alloc() = (Objc.objcalloc c : [`NSDistributedNotificationCenter] id)
let notificationCenterForType (notificationCenterType : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "notificationCenterForType:")
      [make_pointer_from_object notificationCenterType]) : [`NSDistributedNotificationCenter] Objc.id))
let defaultCenter () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultCenter")[])
       : [`NSDistributedNotificationCenter] Objc.id))
