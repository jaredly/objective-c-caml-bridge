(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSTickMarkSupport of NSSlider *)
class virtual methods_NSSlider = object (self)
  method virtual repr : [`NSSlider] Objc.id
  method setNumberOfTickMarks (count : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNumberOfTickMarks:")
      [make_int count]) : unit)
  method numberOfTickMarks =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfTickMarks")[])
       : int)
(*  UNSUPPORTED
  method setTickMarkPosition (position : (*NSTickMarkPosition*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTickMarkPosition:")
      [(*NSTickMarkPosition*) unsupported position]) : unit)

*)
(*  UNSUPPORTED
  method tickMarkPosition =
    ((*NSTickMarkPosition*) unsupported (Objc.invoke (*NSTickMarkPosition*) Objc.tag_unsupported self#repr (Selector.find "tickMarkPosition")[])
       : (*NSTickMarkPosition*) unsupported)

*)
  method setAllowsTickMarkValuesOnly (yorn : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsTickMarkValuesOnly:")
      [make_bool yorn]) : unit)
  method allowsTickMarkValuesOnly =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsTickMarkValuesOnly")[])
       : bool)
  method tickMarkValueAtIndex (index : int) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "tickMarkValueAtIndex:")
      [make_int index]) : float)
(*  UNSUPPORTED
  method rectOfTickMarkAtIndex (index : int) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rectOfTickMarkAtIndex:")
      [make_int index]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method indexOfTickMarkAtPoint (point : (*NSPoint*) unsupported) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfTickMarkAtPoint:")
      [(*NSPoint*) unsupported point]) : int)

*)
  method closestTickMarkValueToValue (value : float) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "closestTickMarkValueToValue:")
      [make_float value]) : float)
end
(* instance methods for category NSTickMarkSupport of NSSliderCell *)
class virtual methods_NSSliderCell = object (self)
  method virtual repr : [`NSSliderCell] Objc.id
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
(*  UNSUPPORTED
  method rectOfTickMarkAtIndex (index : int) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rectOfTickMarkAtIndex:")
      [make_int index]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method indexOfTickMarkAtPoint (point : (*NSPoint*) unsupported) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "indexOfTickMarkAtPoint:")
      [(*NSPoint*) unsupported point]) : int)

*)
  method closestTickMarkValueToValue (value : float) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "closestTickMarkValueToValue:")
      [make_float value]) : float)
end
