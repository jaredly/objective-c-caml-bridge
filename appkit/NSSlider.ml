open Objc
open NSControl
open NSSliderCell


external init : unit -> unit = "caml_init_NSSlider"
let _ = init()
(* Class object for NSSlider *)
let class_NSSlider = object
   val o = Classes.find "NSSlider"
   method _new = (Objc.objcnew o : [`NSSlider] nativeNSObject)
(* methods for category NSTickMarkSupport *)
end
(* Encapsulation for native instance of NSSlider *)
class native_NSSlider = fun (o : [`NSSlider] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSTickMarkSupport *)
   method setNumberOfTickMarks (count : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNumberOfTickMarks:")[make_int count]) : unit)
   method numberOfTickMarks =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfTickMarks:")[]) : int)
(*  UNSUPPORTED
   method setTickMarkPosition (position : (*NSTickMarkPosition*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTickMarkPosition:")[(*NSTickMarkPosition*) unsupported position]) : unit)

*)
(*  UNSUPPORTED
   method tickMarkPosition =
     ((*NSTickMarkPosition*) unsupported (Objc.invoke (*NSTickMarkPosition*) Objc.tag_unsupported o (Selector.find "tickMarkPosition:")[]) : (*NSTickMarkPosition*) unsupported)

*)
   method setAllowsTickMarkValuesOnly (yorn : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAllowsTickMarkValuesOnly:")[make_bool yorn]) : unit)
   method allowsTickMarkValuesOnly =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "allowsTickMarkValuesOnly:")[]) : bool)
   method tickMarkValueAtIndex (index : int) =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "tickMarkValueAtIndex:")[make_int index]) : float)
(*  UNSUPPORTED
   method rectOfTickMarkAtIndex (index : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "rectOfTickMarkAtIndex:")[make_int index]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method indexOfTickMarkAtPoint (point : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "indexOfTickMarkAtPoint:")[(*NSPoint*) unsupported point]) : int)

*)
   method closestTickMarkValueToValue (value : float) =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "closestTickMarkValueToValue:")[make_float value]) : float)
   method minValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "minValue:")[]) : float)
   method setMinValue (aDouble : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinValue:")[make_float aDouble]) : unit)
   method maxValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "maxValue:")[]) : float)
   method setMaxValue (aDouble : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaxValue:")[make_float aDouble]) : unit)
   method setAltIncrementValue (incValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAltIncrementValue:")[make_float incValue]) : unit)
   method altIncrementValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "altIncrementValue:")[]) : float)
   method setTitleCell (aCell : [`NSCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitleCell:")[make_pointer_from_object aCell]) : unit)
   method titleCell =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "titleCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method setTitleColor (newColor : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitleColor:")[make_pointer_from_object newColor]) : unit)
   method titleColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "titleColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setTitleFont (fontObj : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitleFont:")[make_pointer_from_object fontObj]) : unit)
   method titleFont =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "titleFont:")[]) : [`NSFont] Objc.nativeNSObject)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method setKnobThickness (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setKnobThickness:")[make_float aFloat]) : unit)
   method knobThickness =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "knobThickness:")[]) : float)
   method setImage (backgroundImage : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setImage:")[make_pointer_from_object backgroundImage]) : unit)
   method image =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "image:")[]) : [`NSImage] Objc.nativeNSObject)
   method isVertical =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "isVertical:")[]) : int)
   method acceptsFirstMouse (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "acceptsFirstMouse:")[make_pointer_from_object theEvent]) : bool)
end
