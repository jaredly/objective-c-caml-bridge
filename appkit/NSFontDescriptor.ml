(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSFontFamilyClassMask = 4026531840L
let _NSFontItalicTrait = 1L
let _NSFontBoldTrait = 2L
let _NSFontExpandedTrait = 32L
let _NSFontCondensedTrait = 64L
let _NSFontMonoSpaceTrait = 1024L
let _NSFontVerticalTrait = 2048L
let _NSFontUIOptimizedTrait = 4096L


class t = fun (r :[`NSFontDescriptor] id) -> object
  inherit Im_NSFontDescriptor.methods
  method repr = r
end

(* Class object for NSFontDescriptor *)
let c = Classes.find "NSFontDescriptor"
let _new()= (Objc.objcnew c : [`NSFontDescriptor] id)
let alloc() = (Objc.objcalloc c : [`NSFontDescriptor] id)
let fontDescriptorWithFontAttributes (attributes : [`NSDictionary] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fontDescriptorWithFontAttributes:")
      [make_pointer_from_object attributes]) : [`NSFontDescriptor] Objc.id))
let fontDescriptorWithName  ~size:(size : float ) (fontName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg fontName "fontDescriptorWithName" make_pointer_from_object
      ++ Objc.arg size "size" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSFontDescriptor] Objc.id))
  (* skipping selector fontDescriptorWithName:matrix *)
