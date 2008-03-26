(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSEnumerator *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method nextObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nextObject")[])
       : [`NSObject] Objc.id)
end
