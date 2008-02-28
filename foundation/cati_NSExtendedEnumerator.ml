(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedEnumerator of NSEnumerator *)
class virtual methods_NSEnumerator = object (self)
  method virtual repr : [`NSEnumerator] Objc.id
  method allObjects =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allObjects")[])
       : [`NSArray] Objc.id))
end
