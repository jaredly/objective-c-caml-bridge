(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSString
open NSCell


external init : unit -> unit = "caml_init_NSFont"
let _ = init()
(* ENUMS *)
let _NSControlGlyph = 16777215L
let _NSNullGlyph = 0L
let _NSOneByteGlyphPacking = 3L
let _NSJapaneseEUCGlyphPacking = 4L
let _NSAsciiWithDoubleByteEUCGlyphPacking = 5L
let _NSTwoByteGlyphPacking = 6L
let _NSFourByteGlyphPacking = 7L


let make_NSObject_of_NSFont (o : [`NSFont] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSFont *)
let class_NSFont = object
   val repr = Classes.find "NSFont"
   method _new = (Objc.objcnew repr : [`NSFont] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSFont] nativeNSObject)
(* methods for category NSFontDeprecated *)
   method useFont (fontName : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "useFont:")[make_pointer_from_object fontName]) : [`NSFont] Objc.nativeNSObject)
   method preferredFontNames =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "preferredFontNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method setPreferredFontNames (fontNameArray : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setPreferredFontNames:")[make_pointer_from_object fontNameArray]) : [`NSFont] Objc.nativeNSObject)
   method fontWithName  ~size:(fontSize : float ) (fontName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg fontName "fontWithName" make_pointer_from_object
       ++ Objc.arg fontSize "size" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSFont] Objc.nativeNSObject)
   (* skipping selector fontWithName:matrix *)
   method fontWithDescriptor  ~size:(fontSize : float ) (fontDescriptor : [`NSFontDescriptor] Objc.t) =
     let sel, args = (
       Objc.arg fontDescriptor "fontWithDescriptor" make_pointer_from_object
       ++ Objc.arg fontSize "size" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSFont] Objc.nativeNSObject)
   (* skipping selector fontWithDescriptor:textTransform *)
   method userFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "userFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method userFixedPitchFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "userFixedPitchFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method setUserFont (aFont : [`NSFont] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setUserFont:")[make_pointer_from_object aFont]) : [`NSFont] Objc.nativeNSObject)
   method setUserFixedPitchFont (aFont : [`NSFont] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setUserFixedPitchFont:")[make_pointer_from_object aFont]) : [`NSFont] Objc.nativeNSObject)
   method systemFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "systemFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method boldSystemFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "boldSystemFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method labelFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "labelFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method titleBarFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "titleBarFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method menuFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menuFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method menuBarFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menuBarFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method messageFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "messageFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method paletteFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "paletteFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method toolTipsFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolTipsFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method controlContentFontOfSize (fontSize : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "controlContentFontOfSize:")[make_float fontSize]) : [`NSFont] Objc.nativeNSObject)
   method systemFontSize =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "systemFontSize:")[]) : [`NSFont] Objc.nativeNSObject)
   method smallSystemFontSize =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "smallSystemFontSize:")[]) : [`NSFont] Objc.nativeNSObject)
   method labelFontSize =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "labelFontSize:")[]) : [`NSFont] Objc.nativeNSObject)
   method systemFontSizeForControlSize (controlSize : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "systemFontSizeForControlSize:")[make_int controlSize]) : [`NSFont] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSFont *)
class native_NSFont = fun (o : [`NSFont] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSFont o) as super
(* methods for category NSFontDeprecated *)
   method widthOfString (string : [`NSString] Objc.t) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "widthOfString:")[make_pointer_from_object string]) : float)
   method isBaseFont =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isBaseFont:")[]) : bool)
   method afmDictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "afmDictionary:")[]) : [`NSDictionary] Objc.nativeNSObject)
(*  UNSUPPORTED
   method glyphIsEncoded (aGlyph : (*NSGlyph*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "glyphIsEncoded:")[(*NSGlyph*) unsupported aGlyph]) : bool)

*)
   method defaultLineHeightForFont =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "defaultLineHeightForFont:")[]) : float)
   method encodingScheme =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "encodingScheme:")[]) : [`NSString] Objc.nativeNSObject)
   method glyphPacking =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "glyphPacking:")[]) : int)
   (* skipping selector positionOfGlyph:precededByGlyph:isNominal *)
(*  UNSUPPORTED
   method positionsForCompositeSequence  ~numberOfGlyphs:(numGlyphs : int ) ~pointArray:(points : (*NSPointArray*) unsupported ) (someGlyphs : [`NSGlyph] Objc.t) =
     let sel, args = (
       Objc.arg someGlyphs "positionsForCompositeSequence" make_pointer_from_object
       ++ Objc.arg numGlyphs "numberOfGlyphs" make_int
       ++ Objc.arg points "pointArray" (*NSPointArray*) unsupported
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)

*)
   (* skipping selector positionOfGlyph:struckOverGlyph:metricsExist *)
   (* skipping selector positionOfGlyph:struckOverRect:metricsExist *)
   (* skipping selector positionOfGlyph:forCharacter:struckOverRect *)
(*  UNSUPPORTED
   method positionOfGlyph  ?withRelation:(rel : int option) ?toBaseGlyph:(baseGlyph : (*NSGlyph*) unsupported option) ?totalAdvancement:(adv : (*NSSizePointer*) unsupported option) ?metricsExist:(exist : [`BOOL] Objc.t option) (thisGlyph : (*NSGlyph*) unsupported) =
     let sel, args = (
       Objc.arg thisGlyph "positionOfGlyph" (*NSGlyph*) unsupported
       ++ Objc.opt_arg rel "withRelation" make_int
       ++ Objc.opt_arg baseGlyph "toBaseGlyph" (*NSGlyph*) unsupported
       ++ Objc.opt_arg adv "totalAdvancement" (*NSSizePointer*) unsupported
       ++ Objc.opt_arg exist "metricsExist" make_pointer_from_object
     ) ([],[]) in
       ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSPoint*) unsupported)

*)
   method fontName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontName:")[]) : [`NSString] Objc.nativeNSObject)
   method pointSize =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "pointSize:")[]) : float)
(*  UNSUPPORTED
   method matrix =
     ((*pointer to const float*) unsupported (Objc.invoke (*pointer to const float*) Objc.tag_unsupported repr (Selector.find "matrix:")[]) : (*pointer to const float*) unsupported)

*)
   method familyName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "familyName:")[]) : [`NSString] Objc.nativeNSObject)
   method displayName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "displayName:")[]) : [`NSString] Objc.nativeNSObject)
   method fontDescriptor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fontDescriptor:")[]) : [`NSFontDescriptor] Objc.nativeNSObject)
   method textTransform =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "textTransform:")[]) : [`NSAffineTransform] Objc.nativeNSObject)
   method numberOfGlyphs =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfGlyphs:")[]) : int)
   method mostCompatibleStringEncoding =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "mostCompatibleStringEncoding:")[]) : int64)
(*  UNSUPPORTED
   method glyphWithName (aName : [`NSString] Objc.t) =
     ((*NSGlyph*) unsupported (Objc.invoke (*NSGlyph*) Objc.tag_unsupported repr (Selector.find "glyphWithName:")[make_pointer_from_object aName]) : (*NSGlyph*) unsupported)

*)
   method coveredCharacterSet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "coveredCharacterSet:")[]) : [`NSCharacterSet] Objc.nativeNSObject)
(*  UNSUPPORTED
   method boundingRectForFont =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "boundingRectForFont:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method maximumAdvancement =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "maximumAdvancement:")[]) : (*NSSize*) unsupported)

*)
   method ascender =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "ascender:")[]) : float)
   method descender =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "descender:")[]) : float)
   method leading =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "leading:")[]) : float)
   method underlinePosition =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "underlinePosition:")[]) : float)
   method underlineThickness =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "underlineThickness:")[]) : float)
   method italicAngle =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "italicAngle:")[]) : float)
   method capHeight =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "capHeight:")[]) : float)
   method xHeight =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "xHeight:")[]) : float)
   method isFixedPitch =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFixedPitch:")[]) : bool)
(*  UNSUPPORTED
   method boundingRectForGlyph (aGlyph : (*NSGlyph*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "boundingRectForGlyph:")[(*NSGlyph*) unsupported aGlyph]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method advancementForGlyph (ag : (*NSGlyph*) unsupported) =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "advancementForGlyph:")[(*NSGlyph*) unsupported ag]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method getBoundingRects  ~forGlyphs:(glyphs : (*pointer to const NSGlyph*) unsupported ) ~count:(glyphCount : int ) (bounds : (*NSRectArray*) unsupported) =
     let sel, args = (
       Objc.arg bounds "getBoundingRects" (*NSRectArray*) unsupported
       ++ Objc.arg glyphs "forGlyphs" (*pointer to const NSGlyph*) unsupported
       ++ Objc.arg glyphCount "count" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method getAdvancements  ~forGlyphs:(glyphs : (*pointer to const NSGlyph*) unsupported ) ~count:(glyphCount : int ) (advancements : (*NSSizeArray*) unsupported) =
     let sel, args = (
       Objc.arg advancements "getAdvancements" (*NSSizeArray*) unsupported
       ++ Objc.arg glyphs "forGlyphs" (*pointer to const NSGlyph*) unsupported
       ++ Objc.arg glyphCount "count" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   (* skipping selector getAdvancements:forPackedGlyphs:length *)
   method set =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "set:")[]) : unit)
   method setInContext (graphicsContext : [`NSGraphicsContext] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setInContext:")[make_pointer_from_object graphicsContext]) : unit)
   method printerFont =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printerFont:")[]) : [`NSFont] Objc.nativeNSObject)
   method screenFont =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "screenFont:")[]) : [`NSFont] Objc.nativeNSObject)
   method screenFontWithRenderingMode (renderingMode : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "screenFontWithRenderingMode:")[make_int renderingMode]) : [`NSFont] Objc.nativeNSObject)
   method renderingMode =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "renderingMode:")[]) : int)
end
