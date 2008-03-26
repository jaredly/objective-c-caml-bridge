(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit AppKit_cati_NSQuartzCoreAdditions.methods_NSColor
  inherit Im_NSColor.methods
end

class t = fun (r :[`NSColor] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSColor *)
let c = Classes.find "NSColor"
let _new()= (Objc.objcnew c : [`NSColor] id)
let alloc() = (Objc.objcalloc c : [`NSColor] id)
(* class methods for category NSQuartzCoreAdditions of NSColor *)
let colorWithCIColor (color : [`CIColor] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "colorWithCIColor:")
      [make_pointer_from_object color]) : [`NSColor] Objc.id))
let colorWithCalibratedWhite_alpha  (white : float) (alpha : float) =
    let sel, args = (
      Objc.arg white "colorWithCalibratedWhite" make_float
      ++ Objc.arg alpha "alpha" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
let colorWithCalibratedHue_saturation_brightness_alpha  (hue : float) (saturation : float) (brightness : float) (alpha : float) =
    let sel, args = (
      Objc.arg hue "colorWithCalibratedHue" make_float
      ++ Objc.arg saturation "saturation" make_float
      ++ Objc.arg brightness "brightness" make_float
      ++ Objc.arg alpha "alpha" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
let colorWithCalibratedRed_green_blue_alpha  (red : float) (green : float) (blue : float) (alpha : float) =
    let sel, args = (
      Objc.arg red "colorWithCalibratedRed" make_float
      ++ Objc.arg green "green" make_float
      ++ Objc.arg blue "blue" make_float
      ++ Objc.arg alpha "alpha" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
let colorWithDeviceWhite_alpha  (white : float) (alpha : float) =
    let sel, args = (
      Objc.arg white "colorWithDeviceWhite" make_float
      ++ Objc.arg alpha "alpha" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
let colorWithDeviceHue_saturation_brightness_alpha  (hue : float) (saturation : float) (brightness : float) (alpha : float) =
    let sel, args = (
      Objc.arg hue "colorWithDeviceHue" make_float
      ++ Objc.arg saturation "saturation" make_float
      ++ Objc.arg brightness "brightness" make_float
      ++ Objc.arg alpha "alpha" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
let colorWithDeviceRed_green_blue_alpha  (red : float) (green : float) (blue : float) (alpha : float) =
    let sel, args = (
      Objc.arg red "colorWithDeviceRed" make_float
      ++ Objc.arg green "green" make_float
      ++ Objc.arg blue "blue" make_float
      ++ Objc.arg alpha "alpha" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
let colorWithDeviceCyan_magenta_yellow_black_alpha  (cyan : float) (magenta : float) (yellow : float) (black : float) (alpha : float) =
    let sel, args = (
      Objc.arg cyan "colorWithDeviceCyan" make_float
      ++ Objc.arg magenta "magenta" make_float
      ++ Objc.arg yellow "yellow" make_float
      ++ Objc.arg black "black" make_float
      ++ Objc.arg alpha "alpha" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
let colorWithCatalogName_colorName  (listName : [`NSString] Objc.t) (colorName : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg listName "colorWithCatalogName" make_pointer_from_object
      ++ Objc.arg colorName "colorName" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
(*  UNSUPPORTED
let colorWithColorSpace_components_count  (space : [`NSColorSpace] Objc.t) (components : (*pointer to const float*) unsupported) (numberOfComponents : int) =
    let sel, args = (
      Objc.arg space "colorWithColorSpace" make_pointer_from_object
      ++ Objc.arg components "components" (*pointer to const float*) unsupported
      ++ Objc.arg numberOfComponents "count" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSColor] Objc.id))

*)
let blackColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "blackColor")[])
       : [`NSColor] Objc.id))
let darkGrayColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "darkGrayColor")[])
       : [`NSColor] Objc.id))
let lightGrayColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "lightGrayColor")[])
       : [`NSColor] Objc.id))
let whiteColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "whiteColor")[])
       : [`NSColor] Objc.id))
let grayColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "grayColor")[])
       : [`NSColor] Objc.id))
let redColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "redColor")[])
       : [`NSColor] Objc.id))
let greenColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "greenColor")[])
       : [`NSColor] Objc.id))
let blueColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "blueColor")[])
       : [`NSColor] Objc.id))
let cyanColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "cyanColor")[])
       : [`NSColor] Objc.id))
let yellowColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "yellowColor")[])
       : [`NSColor] Objc.id))
let magentaColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "magentaColor")[])
       : [`NSColor] Objc.id))
let orangeColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "orangeColor")[])
       : [`NSColor] Objc.id))
let purpleColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "purpleColor")[])
       : [`NSColor] Objc.id))
let brownColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "brownColor")[])
       : [`NSColor] Objc.id))
let clearColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "clearColor")[])
       : [`NSColor] Objc.id))
let controlShadowColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlShadowColor")[])
       : [`NSColor] Objc.id))
let controlDarkShadowColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlDarkShadowColor")[])
       : [`NSColor] Objc.id))
let controlColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlColor")[])
       : [`NSColor] Objc.id))
let controlHighlightColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlHighlightColor")[])
       : [`NSColor] Objc.id))
let controlLightHighlightColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlLightHighlightColor")[])
       : [`NSColor] Objc.id))
let controlTextColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlTextColor")[])
       : [`NSColor] Objc.id))
let controlBackgroundColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlBackgroundColor")[])
       : [`NSColor] Objc.id))
let selectedControlColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "selectedControlColor")[])
       : [`NSColor] Objc.id))
let secondarySelectedControlColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "secondarySelectedControlColor")[])
       : [`NSColor] Objc.id))
let selectedControlTextColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "selectedControlTextColor")[])
       : [`NSColor] Objc.id))
let disabledControlTextColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "disabledControlTextColor")[])
       : [`NSColor] Objc.id))
let textColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "textColor")[])
       : [`NSColor] Objc.id))
let textBackgroundColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "textBackgroundColor")[])
       : [`NSColor] Objc.id))
let selectedTextColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "selectedTextColor")[])
       : [`NSColor] Objc.id))
let selectedTextBackgroundColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "selectedTextBackgroundColor")[])
       : [`NSColor] Objc.id))
let gridColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "gridColor")[])
       : [`NSColor] Objc.id))
let keyboardFocusIndicatorColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "keyboardFocusIndicatorColor")[])
       : [`NSColor] Objc.id))
let windowBackgroundColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "windowBackgroundColor")[])
       : [`NSColor] Objc.id))
let scrollBarColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "scrollBarColor")[])
       : [`NSColor] Objc.id))
let knobColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "knobColor")[])
       : [`NSColor] Objc.id))
let selectedKnobColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "selectedKnobColor")[])
       : [`NSColor] Objc.id))
let windowFrameColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "windowFrameColor")[])
       : [`NSColor] Objc.id))
let windowFrameTextColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "windowFrameTextColor")[])
       : [`NSColor] Objc.id))
let selectedMenuItemColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "selectedMenuItemColor")[])
       : [`NSColor] Objc.id))
let selectedMenuItemTextColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "selectedMenuItemTextColor")[])
       : [`NSColor] Objc.id))
let highlightColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "highlightColor")[])
       : [`NSColor] Objc.id))
let shadowColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "shadowColor")[])
       : [`NSColor] Objc.id))
let headerColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "headerColor")[])
       : [`NSColor] Objc.id))
let headerTextColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "headerTextColor")[])
       : [`NSColor] Objc.id))
let alternateSelectedControlColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "alternateSelectedControlColor")[])
       : [`NSColor] Objc.id))
let alternateSelectedControlTextColor () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "alternateSelectedControlTextColor")[])
       : [`NSColor] Objc.id))
let controlAlternatingRowBackgroundColors () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "controlAlternatingRowBackgroundColors")[])
       : [`NSArray] Objc.id))
let colorForControlTint (controlTint : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "colorForControlTint:")
      [make_int controlTint]) : [`NSColor] Objc.id))
let currentControlTint () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "currentControlTint")[])
       : int)
let colorFromPasteboard (pasteBoard : [`NSPasteboard] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "colorFromPasteboard:")
      [make_pointer_from_object pasteBoard]) : [`NSColor] Objc.id))
let colorWithPatternImage (image : [`NSImage] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "colorWithPatternImage:")
      [make_pointer_from_object image]) : [`NSColor] Objc.id))
let setIgnoresAlpha (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setIgnoresAlpha:")
      [make_bool flag]) : unit)
let ignoresAlpha () =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "ignoresAlpha")[])
       : bool)
