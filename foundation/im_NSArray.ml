(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSArray *)
class virtual methods = object (self)
  method virtual repr : [`NSArray] Objc.id
  method count =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "count")[])
       : int)
  method objectAtIndex (index : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectAtIndex:")
      [make_int index]) : [`NSObject] Objc.id)
end
