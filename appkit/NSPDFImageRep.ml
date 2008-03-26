(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSPDFImageRep.methods
end

class t = fun (r :[`NSPDFImageRep] id) -> object
  inherit methods
  inherit NSImageRep.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSPDFImageRep *)
let c = Classes.find "NSPDFImageRep"
let _new()= (Objc.objcnew c : [`NSPDFImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSPDFImageRep] id)
let imageRepWithData (pdfData : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithData:")
      [make_pointer_from_object pdfData]) : [`NSPDFImageRep] Objc.id))
