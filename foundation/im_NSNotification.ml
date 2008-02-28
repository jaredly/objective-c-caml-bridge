(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSNotification *)
class virtual methods = object (self)
  method virtual repr : [`NSNotification] Objc.id
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method l_object =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_object")[])
       : [`NSObject] Objc.id)
  method userInfo =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "userInfo")[])
       : [`NSDictionary] Objc.id))
end
