(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSTickMarkSupport of NSSlider *)
class virtual methods_NSSlider = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setNumberOfTickMarks (count : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNumberOfTickMarks:")
      [make_int count]) : unit)
  method numberOfTickMarks =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfTickMarks")[])
       : int)
  method setTickMarkPosition (position : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTickMarkPosition:")
      [make_int position]) : unit)
  method tickMarkPosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tickMarkPosition")[])
       : int)
  method setAllowsTickMarkValuesOnly (yorn : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsTickMarkValuesOnly:")
      [make_bool yorn]) : unit)
  method allowsTickMarkValuesOnly =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsTickMarkValuesOnly")[])
       : bool)
  method tickMarkValueAtIndex (index : int) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "tickMarkValueAtIndex:")
      [make_int index]) : float)
  method rectOfTickMarkAtIndex (index : int) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "rectOfTickMarkAtIndex:")
      [make_int index]) : NSRect.t)
  method indexOfTickMarkAtPoint (point : NSPoint.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfTickMarkAtPoint:")
      [make_point point]) : int)
  method closestTickMarkValueToValue (value : float) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "closestTickMarkValueToValue:")
      [make_float value]) : float)
end
(* instance methods for category NSTickMarkSupport of NSSliderCell *)
class virtual methods_NSSliderCell = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setNumberOfTickMarks (count : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNumberOfTickMarks:")
      [make_int count]) : unit)
  method numberOfTickMarks =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfTickMarks")[])
       : int)
  method setTickMarkPosition (position : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTickMarkPosition:")
      [make_int position]) : unit)
  method tickMarkPosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tickMarkPosition")[])
       : int)
  method setAllowsTickMarkValuesOnly (yorn : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsTickMarkValuesOnly:")
      [make_bool yorn]) : unit)
  method allowsTickMarkValuesOnly =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsTickMarkValuesOnly")[])
       : bool)
  method tickMarkValueAtIndex (index : int) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "tickMarkValueAtIndex:")
      [make_int index]) : float)
  method rectOfTickMarkAtIndex (index : int) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "rectOfTickMarkAtIndex:")
      [make_int index]) : NSRect.t)
  method indexOfTickMarkAtPoint (point : NSPoint.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfTickMarkAtPoint:")
      [make_point point]) : int)
  method closestTickMarkValueToValue (value : float) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "closestTickMarkValueToValue:")
      [make_float value]) : float)
end
