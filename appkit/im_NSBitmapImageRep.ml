(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSBitmapImageRep *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithFocusedViewRect (rect : NSRect.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFocusedViewRect:")
      [make_rect rect]) : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bytesPerRow_bitsPerPixel  (planes : (*pointer to pointer to unsigned char*) unsupported) (width : int) (height : int) (bps : int) (spp : int) (alpha : bool) (isPlanar : bool) (colorSpaceName : [`NSString] Objc.t) (rBytes : int) (pBits : int) =
    let sel, args = (
      Objc.arg planes "initWithBitmapDataPlanes" (*pointer to pointer to unsigned char*) unsupported
      ++ Objc.arg width "pixelsWide" make_int
      ++ Objc.arg height "pixelsHigh" make_int
      ++ Objc.arg bps "bitsPerSample" make_int
      ++ Objc.arg spp "samplesPerPixel" make_int
      ++ Objc.arg alpha "hasAlpha" make_bool
      ++ Objc.arg isPlanar "isPlanar" make_bool
      ++ Objc.arg colorSpaceName "colorSpaceName" make_pointer_from_object
      ++ Objc.arg rBytes "bytesPerRow" make_int
      ++ Objc.arg pBits "bitsPerPixel" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
(*  UNSUPPORTED
  method initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bitmapFormat_bytesPerRow_bitsPerPixel  (planes : (*pointer to pointer to unsigned char*) unsupported) (width : int) (height : int) (bps : int) (spp : int) (alpha : bool) (isPlanar : bool) (colorSpaceName : [`NSString] Objc.t) (bitmapFormat : int) (rBytes : int) (pBits : int) =
    let sel, args = (
      Objc.arg planes "initWithBitmapDataPlanes" (*pointer to pointer to unsigned char*) unsupported
      ++ Objc.arg width "pixelsWide" make_int
      ++ Objc.arg height "pixelsHigh" make_int
      ++ Objc.arg bps "bitsPerSample" make_int
      ++ Objc.arg spp "samplesPerPixel" make_int
      ++ Objc.arg alpha "hasAlpha" make_bool
      ++ Objc.arg isPlanar "isPlanar" make_bool
      ++ Objc.arg colorSpaceName "colorSpaceName" make_pointer_from_object
      ++ Objc.arg bitmapFormat "bitmapFormat" make_int
      ++ Objc.arg rBytes "bytesPerRow" make_int
      ++ Objc.arg pBits "bitsPerPixel" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  method initWithData (tiffData : [`NSData] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithData:")
      [make_pointer_from_object tiffData]) : [`NSObject] Objc.id)
(*  UNSUPPORTED
  method bitmapData =
    ((*pointer to unsigned char*) unsupported (Objc.invoke (*pointer to unsigned char*) Objc.tag_unsupported self#repr (Selector.find "bitmapData")[])
       : (*pointer to unsigned char*) unsupported)

*)
(*  UNSUPPORTED
  method getBitmapDataPlanes (data : (*pointer to pointer to unsigned char*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "getBitmapDataPlanes:")
      [(*pointer to pointer to unsigned char*) unsupported data]) : unit)

*)
  method isPlanar =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isPlanar")[])
       : bool)
  method samplesPerPixel =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "samplesPerPixel")[])
       : int)
  method bitsPerPixel =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "bitsPerPixel")[])
       : int)
  method bytesPerRow =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "bytesPerRow")[])
       : int)
  method bytesPerPlane =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "bytesPerPlane")[])
       : int)
  method numberOfPlanes =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfPlanes")[])
       : int)
  method bitmapFormat =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "bitmapFormat")[])
       : int)
  method getCompression_factor  (compression : [`NSTIFFCompression] Objc.t) (factor : [`float] Objc.t) =
    let sel, args = (
      Objc.arg compression "getCompression" make_pointer_from_object
      ++ Objc.arg factor "factor" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setCompression_factor  (compression : int) (factor : float) =
    let sel, args = (
      Objc.arg compression "setCompression" make_int
      ++ Objc.arg factor "factor" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method _TIFFRepresentation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "TIFFRepresentation")[])
       : [`NSData] Objc.id))
  method _TIFFRepresentationUsingCompression_factor  (comp : int) (factor : float) =
    let sel, args = (
      Objc.arg comp "TIFFRepresentationUsingCompression" make_int
      ++ Objc.arg factor "factor" make_float
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSData] Objc.id))
  method canBeCompressedUsing (compression : int) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canBeCompressedUsing:")
      [make_int compression]) : bool)
  method colorizeByMappingGray_toColor_blackMapping_whiteMapping  (midPoint : float) (midPointColor : [`NSColor] Objc.t) (shadowColor : [`NSColor] Objc.t) (lightColor : [`NSColor] Objc.t) =
    let sel, args = (
      Objc.arg midPoint "colorizeByMappingGray" make_float
      ++ Objc.arg midPointColor "toColor" make_pointer_from_object
      ++ Objc.arg shadowColor "blackMapping" make_pointer_from_object
      ++ Objc.arg lightColor "whiteMapping" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method initForIncrementalLoad =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initForIncrementalLoad")[])
       : [`NSObject] Objc.id)
  method incrementalLoadFromData_complete  (data : [`NSData] Objc.t) (complete : bool) =
    let sel, args = (
      Objc.arg data "incrementalLoadFromData" make_pointer_from_object
      ++ Objc.arg complete "complete" make_bool
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method setColor_atX_y  (color : [`NSColor] Objc.t) (x : int) (y : int) =
    let sel, args = (
      Objc.arg color "setColor" make_pointer_from_object
      ++ Objc.arg x "atX" make_int
      ++ Objc.arg y "y" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method colorAtX_y  (x : int) (y : int) =
    let sel, args = (
      Objc.arg x "colorAtX" make_int
      ++ Objc.arg y "y" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
(*  UNSUPPORTED
  method getPixel_atX_y  (p : (*array of unsigned int*) unsupported) (x : int) (y : int) =
    let sel, args = (
      Objc.arg p "getPixel" (*array of unsigned int*) unsupported
      ++ Objc.arg x "atX" make_int
      ++ Objc.arg y "y" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method setPixel_atX_y  (p : (*array of unsigned int*) unsupported) (x : int) (y : int) =
    let sel, args = (
      Objc.arg p "setPixel" (*array of unsigned int*) unsupported
      ++ Objc.arg x "atX" make_int
      ++ Objc.arg y "y" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
