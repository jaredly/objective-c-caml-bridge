(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSBitmapImageFileTypeExtensions.methods_NSBitmapImageRep
  inherit AppKit_cati_NSWindowsExtensions.methods_NSBitmapImageRep
  inherit Im_NSBitmapImageRep.methods
end

class t = fun (r :[`NSBitmapImageRep] id) -> object
  inherit methods
  inherit NSImageRep.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSBitmapImageRep *)
let c = Classes.find "NSBitmapImageRep"
let _new()= (Objc.objcnew c : [`NSBitmapImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSBitmapImageRep] id)
(* class methods for category NSBitmapImageFileTypeExtensions of NSBitmapImageRep *)
let representationOfImageRepsInArray_usingType_properties  (imageReps : [`NSArray] Objc.t) (storageType : int) (properties : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg imageReps "representationOfImageRepsInArray" make_pointer_from_object
      ++ Objc.arg storageType "usingType" make_int
      ++ Objc.arg properties "properties" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
(* class methods for category NSWindowsExtensions of NSBitmapImageRep *)
let imageRepsWithData (tiffData : [`NSData] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepsWithData:")
      [make_pointer_from_object tiffData]) : [`NSArray] Objc.id))
let imageRepWithData (tiffData : [`NSData] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "imageRepWithData:")
      [make_pointer_from_object tiffData]) : [`NSBitmapImageRep] Objc.id))
let _TIFFRepresentationOfImageRepsInArray (array : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "TIFFRepresentationOfImageRepsInArray:")
      [make_pointer_from_object array]) : [`NSData] Objc.id))
let _TIFFRepresentationOfImageRepsInArray_usingCompression_factor  (array : [`NSArray] Objc.t) (comp : int) (factor : float) =
    let sel, args = (
      Objc.arg array "TIFFRepresentationOfImageRepsInArray" make_pointer_from_object
      ++ Objc.arg comp "usingCompression" make_int
      ++ Objc.arg factor "factor" make_float
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
(*  UNSUPPORTED
let getTIFFCompressionTypes_count  (list : (*pointer to pointer to const NSTIFFCompression*) unsupported) (numTypes : [`int] Objc.t) =
    let sel, args = (
      Objc.arg list "getTIFFCompressionTypes" (*pointer to pointer to const NSTIFFCompression*) unsupported
      ++ Objc.arg numTypes "count" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)

*)
let localizedNameForTIFFCompressionType (compression : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "localizedNameForTIFFCompressionType:")
      [make_int compression]) : [`NSString] Objc.id))
