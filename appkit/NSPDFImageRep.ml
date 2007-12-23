open Objc
open NSImageRep


external init : unit -> unit = "caml_init_NSPDFImageRep"
let _ = init()
(* Class object for NSPDFImageRep *)
let class_NSPDFImageRep = object
   val o = Classes.find "NSPDFImageRep"
   method _new = (Objc.objcnew o : [`NSPDFImageRep] nativeNSObject)
   method imageRepWithData (pdfData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "imageRepWithData:")[make_pointer_from_object pdfData]) : [`NSPDFImageRep] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPDFImageRep *)
class native_NSPDFImageRep = fun (o : [`NSPDFImageRep] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithData (pdfData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithData:")[make_pointer_from_object pdfData]) : [`NSObject] Objc.nativeNSObject)
   method l_PDFRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_PDFRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method bounds =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "bounds:")[]) : (*NSRect*) unsupported)

*)
   method setCurrentPage (page : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCurrentPage:")[make_int page]) : unit)
   method currentPage =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "currentPage:")[]) : int)
   method pageCount =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "pageCount:")[]) : int)
end
