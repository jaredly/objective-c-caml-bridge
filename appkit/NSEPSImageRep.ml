open Objc
open NSImageRep


external init : unit -> unit = "caml_init_NSEPSImageRep"
let _ = init()
(* Class object for NSEPSImageRep *)
let class_NSEPSImageRep = object
   val o = Classes.find "NSEPSImageRep"
   method _new = (Objc.objcnew o : [`NSEPSImageRep] nativeNSObject)
   method imageRepWithData (epsData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepWithData:")[make_pointer_from_object epsData]) : [`NSEPSImageRep] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSEPSImageRep *)
class native_NSEPSImageRep = fun (o : [`NSEPSImageRep] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithData (epsData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithData:")[make_pointer_from_object epsData]) : [`NSObject] Objc.nativeNSObject)
   method prepareGState =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "prepareGState:")[]) : unit)
   method l_EPSRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_EPSRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method boundingBox =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "boundingBox:")[]) : (*NSRect*) unsupported)

*)
end
