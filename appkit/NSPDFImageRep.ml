(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSImageRep


external init : unit -> unit = "caml_init_NSPDFImageRep"
let _ = init()
let make_NSImageRep_of_NSPDFImageRep (o : [`NSPDFImageRep] nativeNSObject) = (Obj.magic o : [`NSImageRep] nativeNSObject)
(* Class object for NSPDFImageRep *)
let class_NSPDFImageRep = object
   val repr = Classes.find "NSPDFImageRep"
   method _new = (Objc.objcnew repr : [`NSPDFImageRep] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSPDFImageRep] nativeNSObject)
   method imageRepWithData (pdfData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageRepWithData:")[make_pointer_from_object pdfData]) : [`NSPDFImageRep] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSPDFImageRep *)
class native_NSPDFImageRep = fun (o : [`NSPDFImageRep] nativeNSObject) -> object (self)
   inherit native_NSImageRep (make_NSImageRep_of_NSPDFImageRep o) as super
   method initWithData (pdfData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithData:")[make_pointer_from_object pdfData]) : [`NSObject] Objc.nativeNSObject)
   method l_PDFRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_PDFRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method bounds =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "bounds:")[]) : (*NSRect*) unsupported)

*)
   method setCurrentPage (page : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCurrentPage:")[make_int page]) : unit)
   method currentPage =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "currentPage:")[]) : int)
   method pageCount =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "pageCount:")[]) : int)
end
