(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSShowControlGlyphs = 1L
let _NSShowInvisibleGlyphs = 2L
let _NSWantsBidiLevels = 4L


class t = fun (r :[`NSGlyphGenerator] id) -> object
  inherit Im_NSGlyphGenerator.methods
  method repr = r
end

(* Class object for NSGlyphGenerator *)
let c = Classes.find "NSGlyphGenerator"
let _new()= (Objc.objcnew c : [`NSGlyphGenerator] id)
let alloc() = (Objc.objcalloc c : [`NSGlyphGenerator] id)
let sharedGlyphGenerator () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedGlyphGenerator")[])
       : [`NSGlyphGenerator] Objc.id))
