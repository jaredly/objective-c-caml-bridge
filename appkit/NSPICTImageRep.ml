open Objc
open NSImageRep


external init : unit -> unit = "caml_init_NSPICTImageRep"
let _ = init()
(* Class object for NSPICTImageRep *)
let class_NSPICTImageRep = object
   val o = Classes.find "NSPICTImageRep"
   method _new = (Objc.objcnew o : [`NSPICTImageRep] nativeNSObject)
   method imageRepWithData (pictData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepWithData:")[make_pointer_from_object pictData]) : [`NSPICTImageRep] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPICTImageRep *)
class native_NSPICTImageRep = fun (o : [`NSPICTImageRep] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithData (pictData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithData:")[make_pointer_from_object pictData]) : [`NSObject] Objc.nativeNSObject)
   method l_PICTRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_PICTRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method boundingBox =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "boundingBox:")[]) : (*NSRect*) unsupported)

*)
end
