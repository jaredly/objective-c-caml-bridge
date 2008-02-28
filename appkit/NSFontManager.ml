(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSItalicFontMask = 1L
let _NSBoldFontMask = 2L
let _NSUnboldFontMask = 4L
let _NSNonStandardCharacterSetFontMask = 8L
let _NSNarrowFontMask = 16L
let _NSExpandedFontMask = 32L
let _NSCondensedFontMask = 64L
let _NSSmallCapsFontMask = 128L
let _NSPosterFontMask = 256L
let _NSCompressedFontMask = 512L
let _NSFixedPitchFontMask = 1024L
let _NSUnitalicFontMask = 16777216L
let _NSFontCollectionApplicationOnlyMask = 1L


class t = fun (r :[`NSFontManager] id) -> object
  inherit Cati_NSFontManagerMenuActionMethods.methods_NSFontManager
  inherit Im_NSFontManager.methods
  method repr = r
end

(* Class object for NSFontManager *)
let c = Classes.find "NSFontManager"
let _new()= (Objc.objcnew c : [`NSFontManager] id)
let alloc() = (Objc.objcalloc c : [`NSFontManager] id)
(* class methods for category NSFontManagerMenuActionMethods of NSFontManager *)
let setFontPanelFactory (factoryId : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setFontPanelFactory:")
      [make_pointer_from_object factoryId]) : unit)
let setFontManagerFactory (factoryId : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setFontManagerFactory:")
      [make_pointer_from_object factoryId]) : unit)
let sharedFontManager () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedFontManager")[])
       : [`NSFontManager] Objc.id))
