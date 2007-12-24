(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSImageRep


external init : unit -> unit = "caml_init_NSBitmapImageRep"
let _ = init()
let make_NSImageRep_of_NSBitmapImageRep (o : [`NSBitmapImageRep] nativeNSObject) = (Obj.magic o : [`NSImageRep] nativeNSObject)
(* Class object for NSBitmapImageRep *)
let class_NSBitmapImageRep = object
   val repr = Classes.find "NSBitmapImageRep"
   method _new = (Objc.objcnew repr : [`NSBitmapImageRep] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSBitmapImageRep] nativeNSObject)
(* methods for category NSBitmapImageFileTypeExtensions *)
   method representationOfImageRepsInArray  ~usingType:(storageType : int ) ~properties:(properties : [`NSDictionary] Objc.t ) (imageReps : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg imageReps "representationOfImageRepsInArray" make_pointer_from_object
       ++ Objc.arg storageType "usingType" make_int
       ++ Objc.arg properties "properties" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
(* methods for category NSWindowsExtensions *)
   method imageRepsWithData (tiffData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageRepsWithData:")[make_pointer_from_object tiffData]) : [`NSArray] Objc.nativeNSObject)
   method imageRepWithData (tiffData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "imageRepWithData:")[make_pointer_from_object tiffData]) : [`NSBitmapImageRep] Objc.nativeNSObject)
   (* skipping selector l_TIFFRepresentationOfImageRepsInArray *)
   method l_TIFFRepresentationOfImageRepsInArray  ?usingCompression:(comp : int option) ?factor:(factor : float option) (array : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg array "l_TIFFRepresentationOfImageRepsInArray" make_pointer_from_object
       ++ Objc.opt_arg comp "usingCompression" make_int
       ++ Objc.opt_arg factor "factor" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
(*  UNSUPPORTED
   method getTIFFCompressionTypes  ~count:(numTypes : [`int] Objc.t ) (list : (*pointer to pointer to const NSTIFFCompression*) unsupported) =
     let sel, args = (
       Objc.arg list "getTIFFCompressionTypes" (*pointer to pointer to const NSTIFFCompression*) unsupported
       ++ Objc.arg numTypes "count" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSBitmapImageRep] Objc.nativeNSObject)

*)
   method localizedNameForTIFFCompressionType (compression : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "localizedNameForTIFFCompressionType:")[make_int compression]) : [`NSString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSBitmapImageRep *)
class native_NSBitmapImageRep = fun (o : [`NSBitmapImageRep] nativeNSObject) -> object (self)
   inherit native_NSImageRep (make_NSImageRep_of_NSBitmapImageRep o) as super
(* methods for category NSBitmapImageFileTypeExtensions *)
   method representationUsingType  ~properties:(properties : [`NSDictionary] Objc.t ) (storageType : int) =
     let sel, args = (
       Objc.arg storageType "representationUsingType" make_int
       ++ Objc.arg properties "properties" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
   method setProperty  ~withValue:(value : [`NSObject] Objc.t ) (property : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg property "setProperty" make_pointer_from_object
       ++ Objc.arg value "withValue" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method valueForProperty (property : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueForProperty:")[make_pointer_from_object property]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSWindowsExtensions *)
   method initWithIconHandle (icon : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithIconHandle:")[make_pointer_from_object icon]) : [`NSObject] Objc.nativeNSObject)
   method initWithBitmapHandle (bitmap : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithBitmapHandle:")[make_pointer_from_object bitmap]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method initWithFocusedViewRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithFocusedViewRect:")[(*NSRect*) unsupported rect]) : [`NSObject] Objc.nativeNSObject)

*)
   (* skipping selector initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bytesPerRow:bitsPerPixel *)
(*  UNSUPPORTED
   method initWithBitmapDataPlanes  ~pixelsWide:(width : int ) ~pixelsHigh:(height : int ) ~bitsPerSample:(bps : int ) ~samplesPerPixel:(spp : int ) ~hasAlpha:(alpha : bool ) ~isPlanar:(isPlanar : bool ) ~colorSpaceName:(colorSpaceName : [`NSString] Objc.t ) ~bitmapFormat:(bitmapFormat : int ) ~bytesPerRow:(rBytes : int ) ~bitsPerPixel:(pBits : int ) (planes : (*pointer to pointer to unsigned char*) unsupported) =
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
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method initWithData (tiffData : [`NSData] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithData:")[make_pointer_from_object tiffData]) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method bitmapData =
     ((*pointer to unsigned char*) unsupported (Objc.invoke (*pointer to unsigned char*) Objc.tag_unsupported repr (Selector.find "bitmapData:")[]) : (*pointer to unsigned char*) unsupported)

*)
(*  UNSUPPORTED
   method getBitmapDataPlanes (data : (*pointer to pointer to unsigned char*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "getBitmapDataPlanes:")[(*pointer to pointer to unsigned char*) unsupported data]) : unit)

*)
   method isPlanar =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isPlanar:")[]) : bool)
   method samplesPerPixel =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "samplesPerPixel:")[]) : int)
   method bitsPerPixel =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "bitsPerPixel:")[]) : int)
   method bytesPerRow =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "bytesPerRow:")[]) : int)
   method bytesPerPlane =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "bytesPerPlane:")[]) : int)
   method numberOfPlanes =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfPlanes:")[]) : int)
   method bitmapFormat =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "bitmapFormat:")[]) : int)
   method getCompression  ~factor:(factor : [`float] Objc.t ) (compression : [`NSTIFFCompression] Objc.t) =
     let sel, args = (
       Objc.arg compression "getCompression" make_pointer_from_object
       ++ Objc.arg factor "factor" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method setCompression  ~factor:(factor : float ) (compression : int) =
     let sel, args = (
       Objc.arg compression "setCompression" make_int
       ++ Objc.arg factor "factor" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method l_TIFFRepresentation =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_TIFFRepresentation:")[]) : [`NSData] Objc.nativeNSObject)
   method l_TIFFRepresentationUsingCompression  ~factor:(factor : float ) (comp : int) =
     let sel, args = (
       Objc.arg comp "l_TIFFRepresentationUsingCompression" make_int
       ++ Objc.arg factor "factor" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)
   method canBeCompressedUsing (compression : int) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canBeCompressedUsing:")[make_int compression]) : bool)
   method colorizeByMappingGray  ~toColor:(midPointColor : [`NSColor] Objc.t ) ~blackMapping:(shadowColor : [`NSColor] Objc.t ) ~whiteMapping:(lightColor : [`NSColor] Objc.t ) (midPoint : float) =
     let sel, args = (
       Objc.arg midPoint "colorizeByMappingGray" make_float
       ++ Objc.arg midPointColor "toColor" make_pointer_from_object
       ++ Objc.arg shadowColor "blackMapping" make_pointer_from_object
       ++ Objc.arg lightColor "whiteMapping" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method initForIncrementalLoad =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initForIncrementalLoad:")[]) : [`NSObject] Objc.nativeNSObject)
   method incrementalLoadFromData  ~complete:(complete : bool ) (data : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg data "incrementalLoadFromData" make_pointer_from_object
       ++ Objc.arg complete "complete" make_bool
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
   method setColor  ~atX:(x : int ) ~y:(y : int ) (color : [`NSColor] Objc.t) =
     let sel, args = (
       Objc.arg color "setColor" make_pointer_from_object
       ++ Objc.arg x "atX" make_int
       ++ Objc.arg y "y" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method colorAtX  ~y:(y : int ) (x : int) =
     let sel, args = (
       Objc.arg x "colorAtX" make_int
       ++ Objc.arg y "y" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
(*  UNSUPPORTED
   method getPixel  ~atX:(x : int ) ~y:(y : int ) (p : (*array of unsigned int*) unsupported) =
     let sel, args = (
       Objc.arg p "getPixel" (*array of unsigned int*) unsupported
       ++ Objc.arg x "atX" make_int
       ++ Objc.arg y "y" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method setPixel  ~atX:(x : int ) ~y:(y : int ) (p : (*array of unsigned int*) unsupported) =
     let sel, args = (
       Objc.arg p "setPixel" (*array of unsigned int*) unsupported
       ++ Objc.arg x "atX" make_int
       ++ Objc.arg y "y" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
