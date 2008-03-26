(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLCredential *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithUser_password_persistence  (user : [`NSString] Objc.t) (password : [`NSString] Objc.t) (persistence : int) =
    let sel, args = (
      Objc.arg user "initWithUser" make_pointer_from_object
      ++ Objc.arg password "password" make_pointer_from_object
      ++ Objc.arg persistence "persistence" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method user =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "user")[])
       : [`NSString] Objc.id))
  method password =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "password")[])
       : [`NSString] Objc.id))
  method hasPassword =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasPassword")[])
       : bool)
  method persistence =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "persistence")[])
       : int)
end
