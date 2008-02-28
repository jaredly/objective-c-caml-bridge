(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSPDFImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSPDFImageRep] Objc.id
  method initWithData (pdfData : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object pdfData]) : [`NSObject] Objc.id)
  method l_PDFRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_PDFRepresentation")[])
       : [`NSData] Objc.id))
(*  UNSUPPORTED
  method bounds =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "bounds")[])
       : (*NSRect*) unsupported)

*)
  method setCurrentPage (page : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCurrentPage:")
      [make_int page]) : unit)
  method currentPage =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "currentPage")[])
       : int)
  method pageCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pageCount")[])
       : int)
end
