(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSAttributedString
open NSFont


external init : unit -> unit = "caml_init_NSGlyphGenerator"
let _ = init()
(* ENUMS *)
let _NSShowControlGlyphs = 1L
let _NSShowInvisibleGlyphs = 2L
let _NSWantsBidiLevels = 4L


let make_NSObject_of_NSGlyphGenerator (o : [`NSGlyphGenerator] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSGlyphGenerator *)
let class_NSGlyphGenerator = object
   val repr = Classes.find "NSGlyphGenerator"
   method _new = (Objc.objcnew repr : [`NSGlyphGenerator] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSGlyphGenerator] nativeNSObject)
   method sharedGlyphGenerator =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedGlyphGenerator:")[]) : [`NSGlyphGenerator] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSGlyphGenerator *)
class native_NSGlyphGenerator = fun (o : [`NSGlyphGenerator] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSGlyphGenerator o) as super
(*  UNSUPPORTED
   method generateGlyphsForGlyphStorage  ~desiredNumberOfCharacters:(nChars : int ) ~glyphIndex:(glyphIndex : (*pointer to unsigned int*) unsupported ) ~characterIndex:(charIndex : (*pointer to unsigned int*) unsupported ) (glyphStorage : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg glyphStorage "generateGlyphsForGlyphStorage" make_pointer_from_object
       ++ Objc.arg nChars "desiredNumberOfCharacters" make_int
       ++ Objc.arg glyphIndex "glyphIndex" (*pointer to unsigned int*) unsupported
       ++ Objc.arg charIndex "characterIndex" (*pointer to unsigned int*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
