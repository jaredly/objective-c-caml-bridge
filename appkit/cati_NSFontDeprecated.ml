(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFontDeprecated of NSFont *)
class virtual methods_NSFont = object (self)
  method virtual repr : [`NSFont] Objc.id
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
  (* skipping selector positionOfGlyph:precededByGlyph:isNominal *)
(*  UNSUPPORTED
  method positionsForCompositeSequence  ~numberOfGlyphs:(numGlyphs : int ) ~pointArray:(points : (*NSPointArray*) unsupported ) (someGlyphs : [`NSGlyph] Objc.t) =
    let sel, args = (
      Objc.arg someGlyphs "positionsForCompositeSequence" make_pointer_from_object
      ++ Objc.arg numGlyphs "numberOfGlyphs" make_int
      ++ Objc.arg points "pointArray" (*NSPointArray*) unsupported
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)

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
      ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSPoint*) unsupported)

*)
end
