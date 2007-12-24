(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSActionCell


external init : unit -> unit = "caml_init_NSSliderCell"
let _ = init()
let make_NSActionCell_of_NSSliderCell (o : [`NSSliderCell] nativeNSObject) = (Obj.magic o : [`NSActionCell] nativeNSObject)
(* Class object for NSSliderCell *)
let class_NSSliderCell = object
   val repr = Classes.find "NSSliderCell"
   method _new = (Objc.objcnew repr : [`NSSliderCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSSliderCell] nativeNSObject)
(* methods for category NSTickMarkSupport *)
   method prefersTrackingUntilMouseUp =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "prefersTrackingUntilMouseUp:")[]) : [`NSSliderCell] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSSliderCell *)
class native_NSSliderCell = fun (o : [`NSSliderCell] nativeNSObject) -> object (self)
   inherit native_NSActionCell (make_NSActionCell_of_NSSliderCell o) as super
(* methods for category NSTickMarkSupport *)
   method setNumberOfTickMarks (count : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNumberOfTickMarks:")[make_int count]) : unit)
   method numberOfTickMarks =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfTickMarks:")[]) : int)
   method setTickMarkPosition (position : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTickMarkPosition:")[make_int position]) : unit)
   method tickMarkPosition =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "tickMarkPosition:")[]) : int)
   method setAllowsTickMarkValuesOnly (yorn : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsTickMarkValuesOnly:")[make_bool yorn]) : unit)
   method allowsTickMarkValuesOnly =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsTickMarkValuesOnly:")[]) : bool)
   method tickMarkValueAtIndex (index : int) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "tickMarkValueAtIndex:")[make_int index]) : float)
(*  UNSUPPORTED
   method rectOfTickMarkAtIndex (index : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "rectOfTickMarkAtIndex:")[make_int index]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method indexOfTickMarkAtPoint (point : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "indexOfTickMarkAtPoint:")[(*NSPoint*) unsupported point]) : int)

*)
   method closestTickMarkValueToValue (value : float) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "closestTickMarkValueToValue:")[make_float value]) : float)
   method minValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "minValue:")[]) : float)
   method setMinValue (aDouble : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMinValue:")[make_float aDouble]) : unit)
   method maxValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "maxValue:")[]) : float)
   method setMaxValue (aDouble : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaxValue:")[make_float aDouble]) : unit)
   method setAltIncrementValue (incValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAltIncrementValue:")[make_float incValue]) : unit)
   method altIncrementValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "altIncrementValue:")[]) : float)
   method isVertical =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "isVertical:")[]) : int)
   method setTitleColor (newColor : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleColor:")[make_pointer_from_object newColor]) : unit)
   method titleColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "titleColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setTitleFont (fontObj : [`NSFont] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleFont:")[make_pointer_from_object fontObj]) : unit)
   method titleFont =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "titleFont:")[]) : [`NSFont] Objc.nativeNSObject)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method setTitleCell (aCell : [`NSCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleCell:")[make_pointer_from_object aCell]) : unit)
   method titleCell =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "titleCell:")[]) : [`NSObject] Objc.nativeNSObject)
   method setKnobThickness (aFloat : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setKnobThickness:")[make_float aFloat]) : unit)
   method knobThickness =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "knobThickness:")[]) : float)
(*  UNSUPPORTED
   method knobRectFlipped (flipped : bool) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "knobRectFlipped:")[make_bool flipped]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method drawKnob (knobRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawKnob:")[(*NSRect*) unsupported knobRect]) : unit)

*)
   (* skipping selector drawKnob *)
(*  UNSUPPORTED
   method drawBarInside  ~flipped:(flipped : bool ) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "drawBarInside" (*NSRect*) unsupported
       ++ Objc.arg flipped "flipped" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method trackRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "trackRect:")[]) : (*NSRect*) unsupported)

*)
   method setSliderType (sliderType : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setSliderType:")[make_int sliderType]) : unit)
   method sliderType =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "sliderType:")[]) : int)
end
