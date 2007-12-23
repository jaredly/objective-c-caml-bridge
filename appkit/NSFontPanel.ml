open Objc
open NSPanel


external init : unit -> unit = "caml_init_NSFontPanel"
let _ = init()
(* Class object for NSFontPanel *)
let class_NSFontPanel = object
   val o = Classes.find "NSFontPanel"
   method _new = (Objc.objcnew o : [`NSFontPanel] nativeNSObject)
   method sharedFontPanel =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedFontPanel:")[]) : [`NSFontPanel] Objc.nativeNSObject)
   method sharedFontPanelExists =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedFontPanelExists:")[]) : [`NSFontPanel] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSFontPanel *)
class native_NSFontPanel = fun (o : [`NSFontPanel] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method accessoryView =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "accessoryView:")[]) : [`NSView] Objc.nativeNSObject)
   method setAccessoryView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAccessoryView:")[make_pointer_from_object aView]) : unit)
   method setPanelFont  ~isMultiple:(flag : bool ) (fontObj : [`NSFont] Objc.t) =
     let sel, args = (
       Objc.arg fontObj "setPanelFont" make_pointer_from_object
       ++ Objc.arg flag "isMultiple" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method panelConvertFont (fontObj : [`NSFont] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "panelConvertFont:")[make_pointer_from_object fontObj]) : [`NSFont] Objc.nativeNSObject)
   method worksWhenModal =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "worksWhenModal:")[]) : bool)
   method isEnabled =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEnabled:")[]) : bool)
   method setEnabled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEnabled:")[make_bool flag]) : unit)
   method reloadDefaultFontFamilies =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "reloadDefaultFontFamilies:")[]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSFontPanelValidationAdditions *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSFontPanelValidationAdditions *)
   method validModesForFontPanel (fontPanel : [`NSFontPanel] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "validModesForFontPanel:")[make_pointer_from_object fontPanel]) : int)
end
