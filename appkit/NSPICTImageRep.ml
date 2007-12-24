(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSImageRep


external init : unit -> unit = "caml_init_NSPICTImageRep"
let _ = init()
let make_NSImageRep_of_NSPICTImageRep (o : [`NSPICTImageRep] nativeNSObject) = (Obj.magic o : [`NSImageRep] nativeNSObject)
(* Class object for NSPICTImageRep *)
let class_NSPICTImageRep = object
   val repr = Classes.find "NSPICTImageRep"
   method _new = (Objc.objcnew repr : [`NSPICTImageRep] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPICTImageRep] nativeNSObject)
   method imageRepWithData (pictData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageRepWithData:")[make_pointer_from_object pictData]) : [`NSPICTImageRep] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPICTImageRep *)
class native_NSPICTImageRep = fun (o : [`NSPICTImageRep] nativeNSObject) -> object (self)
   inherit native_NSImageRep (make_NSImageRep_of_NSPICTImageRep o) as super
   method initWithData (pictData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithData:")[make_pointer_from_object pictData]) : [`NSObject] Objc.nativeNSObject)
   method l_PICTRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_PICTRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method boundingBox =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "boundingBox:")[]) : (*NSRect*) unsupported)

*)
end
