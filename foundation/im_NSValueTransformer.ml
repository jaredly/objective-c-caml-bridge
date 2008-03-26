(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSValueTransformer *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method transformedValue (value : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "transformedValue:")
      [make_pointer_from_object value]) : [`NSObject] Objc.id)
  method reverseTransformedValue (value : [`NSObject] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "reverseTransformedValue:")
      [make_pointer_from_object value]) : [`NSObject] Objc.id)
end
