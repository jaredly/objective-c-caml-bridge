(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPICTImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSPICTImageRep] Objc.id
  method initWithData (pictData : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object pictData]) : [`NSObject] Objc.id)
  method l_PICTRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_PICTRepresentation")[])
       : [`NSData] Objc.id))
(*  UNSUPPORTED
  method boundingBox =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "boundingBox")[])
       : (*NSRect*) unsupported)

*)
end
