(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSet *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method count =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "count")[])
       : int)
  method member (_object : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "member:")
      [make_pointer_from_object _object]) : [`NSObject] Objc.id)
  method objectEnumerator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectEnumerator")[])
       : [`NSEnumerator] Objc.id))
end
