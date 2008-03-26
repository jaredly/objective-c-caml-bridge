(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMetadataItem *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method valueForAttribute (key : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForAttribute:")
      [make_pointer_from_object key]) : [`NSObject] Objc.id)
  method valuesForAttributes (keys : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valuesForAttributes:")
      [make_pointer_from_object keys]) : [`NSDictionary] Objc.id))
  method attributes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attributes")[])
       : [`NSArray] Objc.id))
end
