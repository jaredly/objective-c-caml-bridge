(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSEPSImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSEPSImageRep] Objc.id
  method initWithData (epsData : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object epsData]) : [`NSObject] Objc.id)
  method prepareGState =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "prepareGState")[])
       : unit)
  method l_EPSRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_EPSRepresentation")[])
       : [`NSData] Objc.id))
(*  UNSUPPORTED
  method boundingBox =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "boundingBox")[])
       : (*NSRect*) unsupported)

*)
end
