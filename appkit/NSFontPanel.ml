(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSPanel


external init : unit -> unit = "caml_init_NSFontPanel"
let _ = init()
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


(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSFontPanelValidationAdditions *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSFontPanelValidationAdditions *)
   method validModesForFontPanel (fontPanel : [`NSFontPanel] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "validModesForFontPanel:")[make_pointer_from_object fontPanel]) : int)
end
let make_NSPanel_of_NSFontPanel (o : [`NSFontPanel] nativeNSObject) = (Obj.magic o : [`NSPanel] nativeNSObject)
(* Class object for NSFontPanel *)
let class_NSFontPanel = object
   val repr = Classes.find "NSFontPanel"
   method _new = (Objc.objcnew repr : [`NSFontPanel] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSFontPanel] nativeNSObject)
   method sharedFontPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedFontPanel:")[]) : [`NSFontPanel] Objc.nativeNSObject)
   method sharedFontPanelExists =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedFontPanelExists:")[]) : [`NSFontPanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSFontPanel *)
class native_NSFontPanel = fun (o : [`NSFontPanel] nativeNSObject) -> object (self)
   inherit native_NSPanel (make_NSPanel_of_NSFontPanel o) as super
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method setPanelFont  ~isMultiple:(flag : bool ) (fontObj : [`NSFont] Objc.t) =
     let sel, args = (
       Objc.arg fontObj "setPanelFont" make_pointer_from_object
       ++ Objc.arg flag "isMultiple" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method panelConvertFont (fontObj : [`NSFont] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "panelConvertFont:")[make_pointer_from_object fontObj]) : [`NSFont] Objc.nativeNSObject)
   method worksWhenModal =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "worksWhenModal:")[]) : bool)
   method isEnabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEnabled:")[]) : bool)
   method setEnabled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEnabled:")[make_bool flag]) : unit)
   method reloadDefaultFontFamilies =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "reloadDefaultFontFamilies:")[]) : unit)
end
