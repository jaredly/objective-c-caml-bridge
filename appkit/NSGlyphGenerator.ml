open Objc
open NSAttributedString
open NSFont


external init : unit -> unit = "caml_init_NSGlyphGenerator"
let _ = init()
(* Class object for NSGlyphGenerator *)
let class_NSGlyphGenerator = object
   val o = Classes.find "NSGlyphGenerator"
   method _new = (Objc.objcnew o : [`NSGlyphGenerator] nativeNSObject)
   method sharedGlyphGenerator =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedGlyphGenerator:")[]) : [`NSGlyphGenerator] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSGlyphGenerator *)
class native_NSGlyphGenerator = fun (o : [`NSGlyphGenerator] nativeNSObject) -> object (self)
   val o = o
   method o = o
(*  UNSUPPORTED
   method generateGlyphsForGlyphStorage  ~desiredNumberOfCharacters:(nChars : int ) ~glyphIndex:(glyphIndex : (*pointer to unsigned int*) unsupported ) ~characterIndex:(charIndex : (*pointer to unsigned int*) unsupported ) (glyphStorage : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg glyphStorage "generateGlyphsForGlyphStorage" make_pointer_from_object
       ++ Objc.arg nChars "desiredNumberOfCharacters" make_int
       ++ Objc.arg glyphIndex "glyphIndex" (*pointer to unsigned int*) unsupported
       ++ Objc.arg charIndex "characterIndex" (*pointer to unsigned int*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
end
