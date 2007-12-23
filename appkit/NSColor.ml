open Objc
open NSObject
open NSGeometry
open NSCell


external init : unit -> unit = "caml_init_NSColor"
let _ = init()
(* Class object for CIColor *)
let class_CIColor = object
   val o = Classes.find "CIColor"
   method _new = (Objc.objcnew o : [`CIColor] nativeNSObject)
(* methods for category NSAppKitAdditions *)
end
(* Encapsulation for native instance of CIColor *)
class native_CIColor = fun (o : [`CIColor] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSAppKitAdditions *)
   method initWithColor (color : [`NSColor] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithColor:")[make_pointer_from_object color]) : [`NSObject] Objc.nativeNSObject)
end
(* Class object for NSCoder *)
let class_NSCoder = object
   val o = Classes.find "NSCoder"
   method _new = (Objc.objcnew o : [`NSCoder] nativeNSObject)
(* methods for category NSAppKitColorExtensions *)
end
(* Encapsulation for native instance of NSCoder *)
class native_NSCoder = fun (o : [`NSCoder] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSAppKitColorExtensions *)
   method decodeNXColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "decodeNXColor:")[]) : [`NSColor] Objc.nativeNSObject)
end
(* Class object for NSColor *)
let class_NSColor = object
   val o = Classes.find "NSColor"
   method _new = (Objc.objcnew o : [`NSColor] nativeNSObject)
(* methods for category NSQuartzCoreAdditions *)
   method colorWithCIColor (color : [`CIColor] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorWithCIColor:")[make_pointer_from_object color]) : [`NSColor] Objc.nativeNSObject)
   method colorWithCalibratedWhite  ~alpha:(alpha : float ) (white : float) =
     let sel, args = (
       Objc.arg white "colorWithCalibratedWhite" make_float
       ++ Objc.arg alpha "alpha" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorWithCalibratedHue  ~saturation:(saturation : float ) ~brightness:(brightness : float ) ~alpha:(alpha : float ) (hue : float) =
     let sel, args = (
       Objc.arg hue "colorWithCalibratedHue" make_float
       ++ Objc.arg saturation "saturation" make_float
       ++ Objc.arg brightness "brightness" make_float
       ++ Objc.arg alpha "alpha" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorWithCalibratedRed  ~green:(green : float ) ~blue:(blue : float ) ~alpha:(alpha : float ) (red : float) =
     let sel, args = (
       Objc.arg red "colorWithCalibratedRed" make_float
       ++ Objc.arg green "green" make_float
       ++ Objc.arg blue "blue" make_float
       ++ Objc.arg alpha "alpha" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorWithDeviceWhite  ~alpha:(alpha : float ) (white : float) =
     let sel, args = (
       Objc.arg white "colorWithDeviceWhite" make_float
       ++ Objc.arg alpha "alpha" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorWithDeviceHue  ~saturation:(saturation : float ) ~brightness:(brightness : float ) ~alpha:(alpha : float ) (hue : float) =
     let sel, args = (
       Objc.arg hue "colorWithDeviceHue" make_float
       ++ Objc.arg saturation "saturation" make_float
       ++ Objc.arg brightness "brightness" make_float
       ++ Objc.arg alpha "alpha" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorWithDeviceRed  ~green:(green : float ) ~blue:(blue : float ) ~alpha:(alpha : float ) (red : float) =
     let sel, args = (
       Objc.arg red "colorWithDeviceRed" make_float
       ++ Objc.arg green "green" make_float
       ++ Objc.arg blue "blue" make_float
       ++ Objc.arg alpha "alpha" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorWithDeviceCyan  ~magenta:(magenta : float ) ~yellow:(yellow : float ) ~black:(black : float ) ~alpha:(alpha : float ) (cyan : float) =
     let sel, args = (
       Objc.arg cyan "colorWithDeviceCyan" make_float
       ++ Objc.arg magenta "magenta" make_float
       ++ Objc.arg yellow "yellow" make_float
       ++ Objc.arg black "black" make_float
       ++ Objc.arg alpha "alpha" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorWithCatalogName  ~colorName:(colorName : [`NSString] Objc.t ) (listName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg listName "colorWithCatalogName" make_pointer_from_object
       ++ Objc.arg colorName "colorName" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
(*  UNSUPPORTED
   method colorWithColorSpace  ~components:(components : (*pointer to const float*) unsupported ) ~count:(numberOfComponents : int ) (space : [`NSColorSpace] Objc.t) =
     let sel, args = (
       Objc.arg space "colorWithColorSpace" make_pointer_from_object
       ++ Objc.arg components "components" (*pointer to const float*) unsupported
       ++ Objc.arg numberOfComponents "count" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)

*)
   method blackColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "blackColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method darkGrayColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "darkGrayColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method lightGrayColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "lightGrayColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method whiteColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "whiteColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method grayColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "grayColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method redColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "redColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method greenColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "greenColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method blueColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "blueColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method cyanColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cyanColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method yellowColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "yellowColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method magentaColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "magentaColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method orangeColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "orangeColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method purpleColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "purpleColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method brownColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "brownColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method clearColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "clearColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method controlShadowColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlShadowColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method controlDarkShadowColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlDarkShadowColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method controlColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method controlHighlightColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlHighlightColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method controlLightHighlightColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlLightHighlightColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method controlTextColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlTextColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method controlBackgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlBackgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method selectedControlColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedControlColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method secondarySelectedControlColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "secondarySelectedControlColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method selectedControlTextColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedControlTextColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method disabledControlTextColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "disabledControlTextColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method textColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method textBackgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textBackgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method selectedTextColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedTextColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method selectedTextBackgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedTextBackgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method gridColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "gridColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method keyboardFocusIndicatorColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "keyboardFocusIndicatorColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method windowBackgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "windowBackgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method scrollBarColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "scrollBarColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method knobColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "knobColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method selectedKnobColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedKnobColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method windowFrameColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "windowFrameColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method windowFrameTextColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "windowFrameTextColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method selectedMenuItemColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedMenuItemColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method selectedMenuItemTextColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "selectedMenuItemTextColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method highlightColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "highlightColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method shadowColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "shadowColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method headerColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "headerColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method headerTextColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "headerTextColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method alternateSelectedControlColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "alternateSelectedControlColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method alternateSelectedControlTextColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "alternateSelectedControlTextColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method controlAlternatingRowBackgroundColors =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "controlAlternatingRowBackgroundColors:")[]) : [`NSArray] Objc.nativeNSObject)
   method colorForControlTint (controlTint : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorForControlTint:")[make_int controlTint]) : [`NSColor] Objc.nativeNSObject)
   method currentControlTint =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentControlTint:")[]) : [`NSColor] Objc.nativeNSObject)
   method colorFromPasteboard (pasteBoard : [`NSPasteboard] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorFromPasteboard:")[make_pointer_from_object pasteBoard]) : [`NSColor] Objc.nativeNSObject)
   method colorWithPatternImage (image : [`NSImage] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorWithPatternImage:")[make_pointer_from_object image]) : [`NSColor] Objc.nativeNSObject)
   method setIgnoresAlpha (flag : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setIgnoresAlpha:")[make_bool flag]) : [`NSColor] Objc.nativeNSObject)
   method ignoresAlpha =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "ignoresAlpha:")[]) : [`NSColor] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSColor *)
class native_NSColor = fun (o : [`NSColor] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSQuartzCoreAdditions *)
   method highlightWithLevel (_val : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "highlightWithLevel:")[make_float _val]) : [`NSColor] Objc.nativeNSObject)
   method shadowWithLevel (_val : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "shadowWithLevel:")[make_float _val]) : [`NSColor] Objc.nativeNSObject)
   method set =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "set:")[]) : unit)
   method setFill =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFill:")[]) : unit)
   method setStroke =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setStroke:")[]) : unit)
   method colorSpaceName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorSpaceName:")[]) : [`NSString] Objc.nativeNSObject)
   (* skipping selector colorUsingColorSpaceName *)
   method colorUsingColorSpaceName  ?device:(deviceDescription : [`NSDictionary] Objc.t option) (colorSpace : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg colorSpace "colorUsingColorSpaceName" make_pointer_from_object
       ++ Objc.opt_arg deviceDescription "device" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorUsingColorSpace (space : [`NSColorSpace] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorUsingColorSpace:")[make_pointer_from_object space]) : [`NSColor] Objc.nativeNSObject)
   method blendedColorWithFraction  ~ofColor:(color : [`NSColor] Objc.t ) (fraction : float) =
     let sel, args = (
       Objc.arg fraction "blendedColorWithFraction" make_float
       ++ Objc.arg color "ofColor" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSColor] Objc.nativeNSObject)
   method colorWithAlphaComponent (alpha : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorWithAlphaComponent:")[make_float alpha]) : [`NSColor] Objc.nativeNSObject)
   method catalogNameComponent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "catalogNameComponent:")[]) : [`NSString] Objc.nativeNSObject)
   method colorNameComponent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorNameComponent:")[]) : [`NSString] Objc.nativeNSObject)
   method localizedCatalogNameComponent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedCatalogNameComponent:")[]) : [`NSString] Objc.nativeNSObject)
   method localizedColorNameComponent =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedColorNameComponent:")[]) : [`NSString] Objc.nativeNSObject)
   method redComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "redComponent:")[]) : float)
   method greenComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "greenComponent:")[]) : float)
   method blueComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "blueComponent:")[]) : float)
   method getRed  ~green:(green : [`float] Objc.t ) ~blue:(blue : [`float] Objc.t ) ~alpha:(alpha : [`float] Objc.t ) (red : [`float] Objc.t) =
     let sel, args = (
       Objc.arg red "getRed" make_pointer_from_object
       ++ Objc.arg green "green" make_pointer_from_object
       ++ Objc.arg blue "blue" make_pointer_from_object
       ++ Objc.arg alpha "alpha" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method hueComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "hueComponent:")[]) : float)
   method saturationComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "saturationComponent:")[]) : float)
   method brightnessComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "brightnessComponent:")[]) : float)
   method getHue  ~saturation:(saturation : [`float] Objc.t ) ~brightness:(brightness : [`float] Objc.t ) ~alpha:(alpha : [`float] Objc.t ) (hue : [`float] Objc.t) =
     let sel, args = (
       Objc.arg hue "getHue" make_pointer_from_object
       ++ Objc.arg saturation "saturation" make_pointer_from_object
       ++ Objc.arg brightness "brightness" make_pointer_from_object
       ++ Objc.arg alpha "alpha" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method whiteComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "whiteComponent:")[]) : float)
   method getWhite  ~alpha:(alpha : [`float] Objc.t ) (white : [`float] Objc.t) =
     let sel, args = (
       Objc.arg white "getWhite" make_pointer_from_object
       ++ Objc.arg alpha "alpha" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method cyanComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "cyanComponent:")[]) : float)
   method magentaComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "magentaComponent:")[]) : float)
   method yellowComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "yellowComponent:")[]) : float)
   method blackComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "blackComponent:")[]) : float)
   method getCyan  ~magenta:(magenta : [`float] Objc.t ) ~yellow:(yellow : [`float] Objc.t ) ~black:(black : [`float] Objc.t ) ~alpha:(alpha : [`float] Objc.t ) (cyan : [`float] Objc.t) =
     let sel, args = (
       Objc.arg cyan "getCyan" make_pointer_from_object
       ++ Objc.arg magenta "magenta" make_pointer_from_object
       ++ Objc.arg yellow "yellow" make_pointer_from_object
       ++ Objc.arg black "black" make_pointer_from_object
       ++ Objc.arg alpha "alpha" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method colorSpace =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "colorSpace:")[]) : [`NSColorSpace] Objc.nativeNSObject)
   method numberOfComponents =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfComponents:")[]) : int)
   method getComponents (components : [`float] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "getComponents:")[make_pointer_from_object components]) : unit)
   method alphaComponent =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "alphaComponent:")[]) : float)
   method writeToPasteboard (pasteBoard : [`NSPasteboard] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "writeToPasteboard:")[make_pointer_from_object pasteBoard]) : unit)
   method patternImage =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "patternImage:")[]) : [`NSImage] Objc.nativeNSObject)
(*  UNSUPPORTED
   method drawSwatchInRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "drawSwatchInRect:")[(*NSRect*) unsupported rect]) : unit)

*)
end
