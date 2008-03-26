(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSFont *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method fontName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontName")[])
       : [`NSString] Objc.id))
  method pointSize =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "pointSize")[])
       : float)
(*  UNSUPPORTED
  method matrix =
    ((*pointer to const float*) unsupported (Objc.invoke (*pointer to const float*) Objc.tag_unsupported self#repr (Selector.find "matrix")[])
       : (*pointer to const float*) unsupported)

*)
  method familyName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "familyName")[])
       : [`NSString] Objc.id))
  method displayName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "displayName")[])
       : [`NSString] Objc.id))
  method fontDescriptor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "fontDescriptor")[])
       : [`NSFontDescriptor] Objc.id))
  method textTransform =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textTransform")[])
       : [`NSAffineTransform] Objc.id))
  method numberOfGlyphs =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfGlyphs")[])
       : int)
  method mostCompatibleStringEncoding =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "mostCompatibleStringEncoding")[])
       : int64)
(*  UNSUPPORTED
  method glyphWithName (aName : [`NSString] Objc.t) =
    ((*NSGlyph*) unsupported (Objc.invoke (*NSGlyph*) Objc.tag_unsupported self#repr (Selector.find "glyphWithName:")
      [make_pointer_from_object aName]) : (*NSGlyph*) unsupported)

*)
  method coveredCharacterSet =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "coveredCharacterSet")[])
       : [`NSCharacterSet] Objc.id))
  method boundingRectForFont =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "boundingRectForFont")[])
       : NSRect.t)
  method maximumAdvancement =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "maximumAdvancement")[])
       : NSSize.t)
  method ascender =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "ascender")[])
       : float)
  method descender =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "descender")[])
       : float)
  method leading =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "leading")[])
       : float)
  method underlinePosition =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "underlinePosition")[])
       : float)
  method underlineThickness =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "underlineThickness")[])
       : float)
  method italicAngle =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "italicAngle")[])
       : float)
  method capHeight =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "capHeight")[])
       : float)
  method xHeight =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "xHeight")[])
       : float)
  method isFixedPitch =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFixedPitch")[])
       : bool)
(*  UNSUPPORTED
  method boundingRectForGlyph (aGlyph : (*NSGlyph*) unsupported) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "boundingRectForGlyph:")
      [(*NSGlyph*) unsupported aGlyph]) : NSRect.t)

*)
(*  UNSUPPORTED
  method advancementForGlyph (ag : (*NSGlyph*) unsupported) =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "advancementForGlyph:")
      [(*NSGlyph*) unsupported ag]) : NSSize.t)

*)
(*  UNSUPPORTED
  method getBoundingRects_forGlyphs_count  (bounds : (*NSRectArray*) unsupported) (glyphs : (*pointer to const NSGlyph*) unsupported) (glyphCount : int) =
    let sel, args = (
      Objc.arg bounds "getBoundingRects" (*NSRectArray*) unsupported
      ++ Objc.arg glyphs "forGlyphs" (*pointer to const NSGlyph*) unsupported
      ++ Objc.arg glyphCount "count" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method getAdvancements_forGlyphs_count  (advancements : (*NSSizeArray*) unsupported) (glyphs : (*pointer to const NSGlyph*) unsupported) (glyphCount : int) =
    let sel, args = (
      Objc.arg advancements "getAdvancements" (*NSSizeArray*) unsupported
      ++ Objc.arg glyphs "forGlyphs" (*pointer to const NSGlyph*) unsupported
      ++ Objc.arg glyphCount "count" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method getAdvancements_forPackedGlyphs_length  (advancements : (*NSSizeArray*) unsupported) (packedGlyphs : (*pointer to const void*) unsupported) (length : int) =
    let sel, args = (
      Objc.arg advancements "getAdvancements" (*NSSizeArray*) unsupported
      ++ Objc.arg packedGlyphs "forPackedGlyphs" (*pointer to const void*) unsupported
      ++ Objc.arg length "length" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method set =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "set")[])
       : unit)
  method setInContext (graphicsContext : [`NSGraphicsContext] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setInContext:")
      [make_pointer_from_object graphicsContext]) : unit)
  method printerFont =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "printerFont")[])
       : [`NSFont] Objc.id))
  method screenFont =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "screenFont")[])
       : [`NSFont] Objc.id))
  method screenFontWithRenderingMode (renderingMode : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "screenFontWithRenderingMode:")
      [make_int renderingMode]) : [`NSFont] Objc.id))
  method renderingMode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "renderingMode")[])
       : int)
end
