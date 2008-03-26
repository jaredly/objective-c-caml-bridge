(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSColor *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method highlightWithLevel (_val : float) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "highlightWithLevel:")
      [make_float _val]) : [`NSColor] Objc.id))
  method shadowWithLevel (_val : float) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "shadowWithLevel:")
      [make_float _val]) : [`NSColor] Objc.id))
  method set =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "set")[])
       : unit)
  method setFill =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFill")[])
       : unit)
  method setStroke =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setStroke")[])
       : unit)
  method colorSpaceName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorSpaceName")[])
       : [`NSString] Objc.id))
  method colorUsingColorSpaceName (colorSpace : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorUsingColorSpaceName:")
      [make_pointer_from_object colorSpace]) : [`NSColor] Objc.id))
  method colorUsingColorSpaceName_device  (colorSpace : [`NSString] Objc.t) (deviceDescription : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg colorSpace "colorUsingColorSpaceName" make_pointer_from_object
      ++ Objc.arg deviceDescription "device" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
  method colorUsingColorSpace (space : [`NSColorSpace] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorUsingColorSpace:")
      [make_pointer_from_object space]) : [`NSColor] Objc.id))
  method blendedColorWithFraction_ofColor  (fraction : float) (color : [`NSColor] Objc.t) =
    let sel, args = (
      Objc.arg fraction "blendedColorWithFraction" make_float
      ++ Objc.arg color "ofColor" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSColor] Objc.id))
  method colorWithAlphaComponent (alpha : float) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorWithAlphaComponent:")
      [make_float alpha]) : [`NSColor] Objc.id))
  method catalogNameComponent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "catalogNameComponent")[])
       : [`NSString] Objc.id))
  method colorNameComponent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorNameComponent")[])
       : [`NSString] Objc.id))
  method localizedCatalogNameComponent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedCatalogNameComponent")[])
       : [`NSString] Objc.id))
  method localizedColorNameComponent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "localizedColorNameComponent")[])
       : [`NSString] Objc.id))
  method redComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "redComponent")[])
       : float)
  method greenComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "greenComponent")[])
       : float)
  method blueComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "blueComponent")[])
       : float)
  method getRed_green_blue_alpha  (red : [`float] Objc.t) (green : [`float] Objc.t) (blue : [`float] Objc.t) (alpha : [`float] Objc.t) =
    let sel, args = (
      Objc.arg red "getRed" make_pointer_from_object
      ++ Objc.arg green "green" make_pointer_from_object
      ++ Objc.arg blue "blue" make_pointer_from_object
      ++ Objc.arg alpha "alpha" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method hueComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "hueComponent")[])
       : float)
  method saturationComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "saturationComponent")[])
       : float)
  method brightnessComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "brightnessComponent")[])
       : float)
  method getHue_saturation_brightness_alpha  (hue : [`float] Objc.t) (saturation : [`float] Objc.t) (brightness : [`float] Objc.t) (alpha : [`float] Objc.t) =
    let sel, args = (
      Objc.arg hue "getHue" make_pointer_from_object
      ++ Objc.arg saturation "saturation" make_pointer_from_object
      ++ Objc.arg brightness "brightness" make_pointer_from_object
      ++ Objc.arg alpha "alpha" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method whiteComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "whiteComponent")[])
       : float)
  method getWhite_alpha  (white : [`float] Objc.t) (alpha : [`float] Objc.t) =
    let sel, args = (
      Objc.arg white "getWhite" make_pointer_from_object
      ++ Objc.arg alpha "alpha" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method cyanComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "cyanComponent")[])
       : float)
  method magentaComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "magentaComponent")[])
       : float)
  method yellowComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "yellowComponent")[])
       : float)
  method blackComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "blackComponent")[])
       : float)
  method getCyan_magenta_yellow_black_alpha  (cyan : [`float] Objc.t) (magenta : [`float] Objc.t) (yellow : [`float] Objc.t) (black : [`float] Objc.t) (alpha : [`float] Objc.t) =
    let sel, args = (
      Objc.arg cyan "getCyan" make_pointer_from_object
      ++ Objc.arg magenta "magenta" make_pointer_from_object
      ++ Objc.arg yellow "yellow" make_pointer_from_object
      ++ Objc.arg black "black" make_pointer_from_object
      ++ Objc.arg alpha "alpha" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method colorSpace =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "colorSpace")[])
       : [`NSColorSpace] Objc.id))
  method numberOfComponents =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfComponents")[])
       : int)
  method getComponents (components : [`float] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "getComponents:")
      [make_pointer_from_object components]) : unit)
  method alphaComponent =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "alphaComponent")[])
       : float)
  method writeToPasteboard (pasteBoard : [`NSPasteboard] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "writeToPasteboard:")
      [make_pointer_from_object pasteBoard]) : unit)
  method patternImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "patternImage")[])
       : [`NSImage] Objc.id))
  method drawSwatchInRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawSwatchInRect:")
      [make_rect rect]) : unit)
end
