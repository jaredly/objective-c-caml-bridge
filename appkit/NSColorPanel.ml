(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSGrayModeColorPanel = 0L
let _NSRGBModeColorPanel = 1L
let _NSCMYKModeColorPanel = 2L
let _NSHSBModeColorPanel = 3L
let _NSCustomPaletteModeColorPanel = 4L
let _NSColorListModeColorPanel = 5L
let _NSWheelModeColorPanel = 6L
let _NSCrayonModeColorPanel = 7L
let _NSColorPanelGrayModeMask = 1L
let _NSColorPanelRGBModeMask = 2L
let _NSColorPanelCMYKModeMask = 4L
let _NSColorPanelHSBModeMask = 8L
let _NSColorPanelCustomPaletteModeMask = 16L
let _NSColorPanelColorListModeMask = 32L
let _NSColorPanelWheelModeMask = 64L
let _NSColorPanelCrayonModeMask = 128L
let _NSColorPanelAllModesMask = 65535L


class t = fun (r :[`NSColorPanel] id) -> object
  inherit Im_NSColorPanel.methods
  method repr = r
end

(* Class object for NSColorPanel *)
let c = Classes.find "NSColorPanel"
let _new()= (Objc.objcnew c : [`NSColorPanel] id)
let alloc() = (Objc.objcalloc c : [`NSColorPanel] id)
let sharedColorPanel () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedColorPanel")[])
       : [`NSColorPanel] Objc.id))
let sharedColorPanelExists () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "sharedColorPanelExists")[])
       : bool)
let dragColor  ~withEvent:(theEvent : [`NSEvent] Objc.t ) ~fromView:(sourceView : [`NSView] Objc.t ) (color : [`NSColor] Objc.t) =
    let sel, args = (
      Objc.arg color "dragColor" make_pointer_from_object
      ++ Objc.arg theEvent "withEvent" make_pointer_from_object
      ++ Objc.arg sourceView "fromView" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool c (Selector.find_list sel) args)
       : bool)
let setPickerMask (mask : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setPickerMask:")
      [make_int mask]) : unit)
let setPickerMode (mode : int) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setPickerMode:")
      [make_int mode]) : unit)
