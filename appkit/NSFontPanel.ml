(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSFPPreviewButton = 131L
let _NSFPRevertButton = 130L
let _NSFPSetButton = 132L
let _NSFPPreviewField = 128L
let _NSFPSizeField = 129L
let _NSFPSizeTitle = 133L
let _NSFPCurrentField = 134L
let _NSFontPanelFaceModeMask = 1L
let _NSFontPanelSizeModeMask = 2L
let _NSFontPanelCollectionModeMask = 4L
let _NSFontPanelUnderlineEffectModeMask = 256L
let _NSFontPanelStrikethroughEffectModeMask = 512L
let _NSFontPanelTextColorEffectModeMask = 1024L
let _NSFontPanelDocumentColorEffectModeMask = 2048L
let _NSFontPanelShadowEffectModeMask = 4096L
let _NSFontPanelAllEffectsModeMask = 1048320L
let _NSFontPanelStandardModesMask = 65535L
let _NSFontPanelAllModesMask = 4294967295L


class virtual methods = object
  inherit Im_NSFontPanel.methods
end

class t = fun (r :[`NSFontPanel] id) -> object
  inherit methods
  inherit NSPanel.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSFontPanel *)
let c = Classes.find "NSFontPanel"
let _new()= (Objc.objcnew c : [`NSFontPanel] id)
let alloc() = (Objc.objcalloc c : [`NSFontPanel] id)
let sharedFontPanel () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedFontPanel")[])
       : [`NSFontPanel] Objc.id))
let sharedFontPanelExists () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "sharedFontPanelExists")[])
       : bool)
