(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMetadataQueryAttributeValueTuple *)
class virtual methods = object (self)
  method virtual repr : [`NSMetadataQueryAttributeValueTuple] Objc.id
  method attribute =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attribute")[])
       : [`NSString] Objc.id))
  method value =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "value")[])
       : [`NSObject] Objc.id)
  method count =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "count")[])
       : int)
end
