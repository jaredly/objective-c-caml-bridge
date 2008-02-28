(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAttributedString *)
class virtual methods = object (self)
  method virtual repr : [`NSAttributedString] Objc.id
  method string =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "string")[])
       : [`NSString] Objc.id))
  (* skipping selector attributesAtIndex:effectiveRange *)
end
