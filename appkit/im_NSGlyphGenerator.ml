(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSGlyphGenerator *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
(*  UNSUPPORTED
  method generateGlyphsForGlyphStorage_desiredNumberOfCharacters_glyphIndex_characterIndex  (glyphStorage : [`NSObject] Objc.t) (nChars : int) (glyphIndex : (*pointer to unsigned int*) unsupported) (charIndex : (*pointer to unsigned int*) unsupported) =
    let sel, args = (
      Objc.arg glyphStorage "generateGlyphsForGlyphStorage" make_pointer_from_object
      ++ Objc.arg nChars "desiredNumberOfCharacters" make_int
      ++ Objc.arg glyphIndex "glyphIndex" (*pointer to unsigned int*) unsupported
      ++ Objc.arg charIndex "characterIndex" (*pointer to unsigned int*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
