(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSProtocolChecker *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method protocol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "protocol")[])
       : [`Protocol] Objc.id))
  method target =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "target")[])
       : [`NSObject] Objc.id))
end
