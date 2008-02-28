(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSHost *)
class virtual methods = object (self)
  method virtual repr : [`NSHost] Objc.id
  method isEqualToHost (aHost : [`NSHost] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToHost:")
      [make_pointer_from_object aHost]) : bool)
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method names =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "names")[])
       : [`NSArray] Objc.id))
  method address =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "address")[])
       : [`NSString] Objc.id))
  method addresses =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "addresses")[])
       : [`NSArray] Objc.id))
end
