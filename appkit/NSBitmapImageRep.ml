(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSBitmapImageRep] id) -> object
  inherit Cati_NSBitmapImageFileTypeExtensions.methods_NSBitmapImageRep
  inherit Cati_NSWindowsExtensions.methods_NSBitmapImageRep
  inherit Im_NSBitmapImageRep.methods
  method repr = r
end

(* Class object for NSBitmapImageRep *)
let c = Classes.find "NSBitmapImageRep"
let _new()= (Objc.objcnew c : [`NSBitmapImageRep] id)
let alloc() = (Objc.objcalloc c : [`NSBitmapImageRep] id)
(* class methods for category NSBitmapImageFileTypeExtensions of NSBitmapImageRep *)
let representationOfImageRepsInArray  ~usingType:(storageType : int ) ~properties:(properties : [`NSDictionary] Objc.t ) (imageReps : [`NSArray] Objc.t) =
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
  (* skipping selector l_TIFFRepresentationOfImageRepsInArray *)
let l_TIFFRepresentationOfImageRepsInArray  ?usingCompression:(comp : int option) ?factor:(factor : float option) (array : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg array "l_TIFFRepresentationOfImageRepsInArray" make_pointer_from_object
      ++ Objc.opt_arg comp "usingCompression" make_int
      ++ Objc.opt_arg factor "factor" make_float
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))
(*  UNSUPPORTED
let getTIFFCompressionTypes  ~count:(numTypes : [`int] Objc.t ) (list : (*pointer to pointer to const NSTIFFCompression*) unsupported) =
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
