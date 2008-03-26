(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFontDeprecated of NSFont *)
class virtual methods_NSFont = object (self)
  method virtual repr : [`NSObject] Objc.id
  method widthOfString (string : [`NSString] Objc.t) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "widthOfString:")
      [make_pointer_from_object string]) : float)
  method isBaseFont =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBaseFont")[])
       : bool)
  method afmDictionary =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "afmDictionary")[])
       : [`NSDictionary] Objc.id))
(*  UNSUPPORTED
  method glyphIsEncoded (aGlyph : (*NSGlyph*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "glyphIsEncoded:")
      [(*NSGlyph*) unsupported aGlyph]) : bool)

*)
  method defaultLineHeightForFont =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "defaultLineHeightForFont")[])
       : float)
  method encodingScheme =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "encodingScheme")[])
       : [`NSString] Objc.id))
  method glyphPacking =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "glyphPacking")[])
       : int)
(*  UNSUPPORTED
  method positionOfGlyph_precededByGlyph_isNominal  (curGlyph : (*NSGlyph*) unsupported) (prevGlyph : (*NSGlyph*) unsupported) (nominal : [`BOOL] Objc.t) =
    let sel, args = (
      Objc.arg curGlyph "positionOfGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg prevGlyph "precededByGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg nominal "isNominal" make_pointer_from_object
    ) ([],[]) in
      (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find_list sel) args)
       : NSPoint.t)

*)
(*  UNSUPPORTED
  method positionsForCompositeSequence_numberOfGlyphs_pointArray  (someGlyphs : [`NSGlyph] Objc.t) (numGlyphs : int) (points : (*NSPointArray*) unsupported) =
    let sel, args = (
      Objc.arg someGlyphs "positionsForCompositeSequence" make_pointer_from_object
      ++ Objc.arg numGlyphs "numberOfGlyphs" make_int
      ++ Objc.arg points "pointArray" (*NSPointArray*) unsupported
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)

*)
(*  UNSUPPORTED
  method positionOfGlyph_struckOverGlyph_metricsExist  (curGlyph : (*NSGlyph*) unsupported) (prevGlyph : (*NSGlyph*) unsupported) (exist : [`BOOL] Objc.t) =
    let sel, args = (
      Objc.arg curGlyph "positionOfGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg prevGlyph "struckOverGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg exist "metricsExist" make_pointer_from_object
    ) ([],[]) in
      (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find_list sel) args)
       : NSPoint.t)

*)
(*  UNSUPPORTED
  method positionOfGlyph_struckOverRect_metricsExist  (aGlyph : (*NSGlyph*) unsupported) (aRect : NSRect.t) (exist : [`BOOL] Objc.t) =
    let sel, args = (
      Objc.arg aGlyph "positionOfGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg aRect "struckOverRect" make_rect
      ++ Objc.arg exist "metricsExist" make_pointer_from_object
    ) ([],[]) in
      (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find_list sel) args)
       : NSPoint.t)

*)
(*  UNSUPPORTED
  method positionOfGlyph_forCharacter_struckOverRect  (aGlyph : (*NSGlyph*) unsupported) (aChar : (*unichar*) unsupported) (aRect : NSRect.t) =
    let sel, args = (
      Objc.arg aGlyph "positionOfGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg aChar "forCharacter" (*unichar*) unsupported
      ++ Objc.arg aRect "struckOverRect" make_rect
    ) ([],[]) in
      (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find_list sel) args)
       : NSPoint.t)

*)
(*  UNSUPPORTED
  method positionOfGlyph_withRelation_toBaseGlyph_totalAdvancement_metricsExist  (thisGlyph : (*NSGlyph*) unsupported) (rel : int) (baseGlyph : (*NSGlyph*) unsupported) (adv : (*NSSizePointer*) unsupported) (exist : [`BOOL] Objc.t) =
    let sel, args = (
      Objc.arg thisGlyph "positionOfGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg rel "withRelation" make_int
      ++ Objc.arg baseGlyph "toBaseGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg adv "totalAdvancement" (*NSSizePointer*) unsupported
      ++ Objc.arg exist "metricsExist" make_pointer_from_object
    ) ([],[]) in
      (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find_list sel) args)
       : NSPoint.t)

*)
end
