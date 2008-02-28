(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSControlGlyph = 16777215L
let _NSNullGlyph = 0L
let _NSOneByteGlyphPacking = 3L
let _NSJapaneseEUCGlyphPacking = 4L
let _NSAsciiWithDoubleByteEUCGlyphPacking = 5L
let _NSTwoByteGlyphPacking = 6L
let _NSFourByteGlyphPacking = 7L


class t = fun (r :[`NSFont] id) -> object
  inherit Cati_NSFontDeprecated.methods_NSFont
  inherit Im_NSFont.methods
  method repr = r
end

(* Class object for NSFont *)
let c = Classes.find "NSFont"
let _new()= (Objc.objcnew c : [`NSFont] id)
let alloc() = (Objc.objcalloc c : [`NSFont] id)
(* class methods for category NSFontDeprecated of NSFont *)
let useFont (fontName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "useFont:")
      [make_pointer_from_object fontName]) : unit)
let preferredFontNames () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "preferredFontNames")[])
       : [`NSArray] Objc.id))
let setPreferredFontNames (fontNameArray : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setPreferredFontNames:")
      [make_pointer_from_object fontNameArray]) : unit)
let fontWithName  ~size:(fontSize : float ) (fontName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fontName "fontWithName" make_pointer_from_object
      ++ Objc.arg fontSize "size" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSFont] Objc.id))
  (* skipping selector fontWithName:matrix *)
let fontWithDescriptor  ~size:(fontSize : float ) (fontDescriptor : [`NSFontDescriptor] Objc.t) =
    let sel, args = (
      Objc.arg fontDescriptor "fontWithDescriptor" make_pointer_from_object
      ++ Objc.arg fontSize "size" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSFont] Objc.id))
  (* skipping selector fontWithDescriptor:textTransform *)
let userFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "userFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let userFixedPitchFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "userFixedPitchFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let setUserFont (aFont : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setUserFont:")
      [make_pointer_from_object aFont]) : unit)
let setUserFixedPitchFont (aFont : [`NSFont] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setUserFixedPitchFont:")
      [make_pointer_from_object aFont]) : unit)
let systemFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "systemFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let boldSystemFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "boldSystemFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let labelFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "labelFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let titleBarFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "titleBarFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let menuFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "menuFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let menuBarFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "menuBarFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let messageFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "messageFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let paletteFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "paletteFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let toolTipsFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "toolTipsFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let controlContentFontOfSize (fontSize : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlContentFontOfSize:")
      [make_float fontSize]) : [`NSFont] Objc.id))
let systemFontSize () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "systemFontSize")[])
       : float)
let smallSystemFontSize () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "smallSystemFontSize")[])
       : float)
let labelFontSize () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "labelFontSize")[])
       : float)
let systemFontSizeForControlSize (controlSize : int) =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "systemFontSizeForControlSize:")
      [make_int controlSize]) : float)
