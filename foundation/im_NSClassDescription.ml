(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSClassDescription *)
class virtual methods = object (self)
  method virtual repr : [`NSClassDescription] Objc.id
  method attributeKeys =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributeKeys")[])
       : [`NSArray] Objc.id))
  method toOneRelationshipKeys =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toOneRelationshipKeys")[])
       : [`NSArray] Objc.id))
  method toManyRelationshipKeys =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toManyRelationshipKeys")[])
       : [`NSArray] Objc.id))
  method inverseForRelationshipKey (relationshipKey : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "inverseForRelationshipKey:")
      [make_pointer_from_object relationshipKey]) : [`NSString] Objc.id))
end
