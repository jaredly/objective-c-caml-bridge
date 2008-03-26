(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPICTImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithData (pictData : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object pictData]) : [`NSObject] Objc.id)
  method _PICTRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "PICTRepresentation")[])
       : [`NSData] Objc.id))
  method boundingBox =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "boundingBox")[])
       : NSRect.t)
end
