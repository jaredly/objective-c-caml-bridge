(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSGlyphInfo.methods
end

class t = fun (r :[`NSGlyphInfo] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSGlyphInfo *)
let c = Classes.find "NSGlyphInfo"
let _new()= (Objc.objcnew c : [`NSGlyphInfo] id)
let alloc() = (Objc.objcalloc c : [`NSGlyphInfo] id)
let glyphInfoWithGlyphName_forFont_baseString  (glyphName : [`NSString] Objc.t) (font : [`NSFont] Objc.t) (theString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg glyphName "glyphInfoWithGlyphName" make_pointer_from_object
      ++ Objc.arg font "forFont" make_pointer_from_object
      ++ Objc.arg theString "baseString" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSGlyphInfo] Objc.id))
(*  UNSUPPORTED
let glyphInfoWithGlyph_forFont_baseString  (glyph : (*NSGlyph*) unsupported) (font : [`NSFont] Objc.t) (theString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg glyph "glyphInfoWithGlyph" (*NSGlyph*) unsupported
      ++ Objc.arg font "forFont" make_pointer_from_object
      ++ Objc.arg theString "baseString" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSGlyphInfo] Objc.id))

*)
let glyphInfoWithCharacterIdentifier_collection_baseString  (cid : int) (characterCollection : int) (theString : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg cid "glyphInfoWithCharacterIdentifier" make_int
      ++ Objc.arg characterCollection "collection" make_int
      ++ Objc.arg theString "baseString" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSGlyphInfo] Objc.id))
