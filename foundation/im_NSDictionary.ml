(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDictionary *)
class virtual methods = object (self)
  method virtual repr : [`NSDictionary] Objc.id
  method count =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "count")[])
       : int)
  method keyEnumerator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyEnumerator")[])
       : [`NSEnumerator] Objc.id))
  method objectForKey (aKey : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectForKey:")
      [make_pointer_from_object aKey]) : [`NSObject] Objc.id)
end
