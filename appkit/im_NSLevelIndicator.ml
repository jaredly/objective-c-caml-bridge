(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSLevelIndicator *)
class virtual methods = object (self)
  method virtual repr : [`NSLevelIndicator] Objc.id
  method minValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "minValue")[])
       : float)
  method setMinValue (minValue : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinValue:")
      [make_float minValue]) : unit)
  method maxValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "maxValue")[])
       : float)
  method setMaxValue (maxValue : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxValue:")
      [make_float maxValue]) : unit)
  method warningValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "warningValue")[])
       : float)
  method setWarningValue (warningValue : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWarningValue:")
      [make_float warningValue]) : unit)
  method criticalValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "criticalValue")[])
       : float)
  method setCriticalValue (criticalValue : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCriticalValue:")
      [make_float criticalValue]) : unit)
(*  UNSUPPORTED
  method tickMarkPosition =
    ((*NSTickMarkPosition*) unsupported (Objc.invoke (*NSTickMarkPosition*) Objc.tag_unsupported self#repr (Selector.find "tickMarkPosition")[])
       : (*NSTickMarkPosition*) unsupported)

*)
(*  UNSUPPORTED
  method setTickMarkPosition (position : (*NSTickMarkPosition*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTickMarkPosition:")
      [(*NSTickMarkPosition*) unsupported position]) : unit)

*)
  method numberOfTickMarks =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfTickMarks")[])
       : int)
  method setNumberOfTickMarks (count : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNumberOfTickMarks:")
      [make_int count]) : unit)
  method numberOfMajorTickMarks =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "numberOfMajorTickMarks")[])
       : int)
  method setNumberOfMajorTickMarks (count : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNumberOfMajorTickMarks:")
      [make_int count]) : unit)
  method tickMarkValueAtIndex (index : int) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "tickMarkValueAtIndex:")
      [make_int index]) : float)
(*  UNSUPPORTED
  method rectOfTickMarkAtIndex (index : int) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rectOfTickMarkAtIndex:")
      [make_int index]) : (*NSRect*) unsupported)

*)
end
