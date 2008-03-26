(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSTypedstreamCompatibility of NSCoder *)
class virtual methods_NSCoder = object (self)
  method virtual repr : [`NSObject] Objc.id
  method encodeNXObject (_object : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "encodeNXObject:")
      [make_pointer_from_object _object]) : unit)
  method decodeNXObject =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "decodeNXObject")[])
       : [`NSObject] Objc.id)
end
