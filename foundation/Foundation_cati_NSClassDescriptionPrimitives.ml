(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSClassDescriptionPrimitives of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method classDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "classDescription")[])
       : [`NSClassDescription] Objc.id))
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
