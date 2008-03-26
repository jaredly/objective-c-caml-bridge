(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCIImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithCIImage (image : [`CIImage] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCIImage:")
      [make_pointer_from_object image]) : [`NSObject] Objc.id)
  method _CIImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "CIImage")[])
       : [`CIImage] Objc.id))
end
