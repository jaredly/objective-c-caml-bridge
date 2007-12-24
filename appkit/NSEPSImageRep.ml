(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSImageRep


external init : unit -> unit = "caml_init_NSEPSImageRep"
let _ = init()
let make_NSImageRep_of_NSEPSImageRep (o : [`NSEPSImageRep] nativeNSObject) = (Obj.magic o : [`NSImageRep] nativeNSObject)
(* Class object for NSEPSImageRep *)
let class_NSEPSImageRep = object
   val repr = Classes.find "NSEPSImageRep"
   method _new = (Objc.objcnew repr : [`NSEPSImageRep] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSEPSImageRep] nativeNSObject)
   method imageRepWithData (epsData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageRepWithData:")[make_pointer_from_object epsData]) : [`NSEPSImageRep] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSEPSImageRep *)
class native_NSEPSImageRep = fun (o : [`NSEPSImageRep] nativeNSObject) -> object (self)
   inherit native_NSImageRep (make_NSImageRep_of_NSEPSImageRep o) as super
   method initWithData (epsData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithData:")[make_pointer_from_object epsData]) : [`NSObject] Objc.nativeNSObject)
   method prepareGState =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "prepareGState:")[]) : unit)
   method l_EPSRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_EPSRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method boundingBox =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "boundingBox:")[]) : (*NSRect*) unsupported)

*)
end
