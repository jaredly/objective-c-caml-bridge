open Objc
open NSControl
open NSLevelIndicatorCell


external init : unit -> unit = "caml_init_NSLevelIndicator"
let _ = init()
(* Class object for NSLevelIndicator *)
let class_NSLevelIndicator = object
   val o = Classes.find "NSLevelIndicator"
   method _new = (Objc.objcnew o : [`NSLevelIndicator] nativeNSObject)
end
(* Encapsulation for native instance of NSLevelIndicator *)
class native_NSLevelIndicator = fun (o : [`NSLevelIndicator] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method minValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "minValue:")[]) : float)
   method setMinValue (minValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinValue:")[make_float minValue]) : unit)
   method maxValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "maxValue:")[]) : float)
   method setMaxValue (maxValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaxValue:")[make_float maxValue]) : unit)
   method warningValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "warningValue:")[]) : float)
   method setWarningValue (warningValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWarningValue:")[make_float warningValue]) : unit)
   method criticalValue =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "criticalValue:")[]) : float)
   method setCriticalValue (criticalValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCriticalValue:")[make_float criticalValue]) : unit)
(*  UNSUPPORTED
   method tickMarkPosition =
     ((*NSTickMarkPosition*) unsupported (Objc.invoke (*NSTickMarkPosition*) Objc.tag_unsupported o (Selector.find "tickMarkPosition:")[]) : (*NSTickMarkPosition*) unsupported)

*)
(*  UNSUPPORTED
   method setTickMarkPosition (position : (*NSTickMarkPosition*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTickMarkPosition:")[(*NSTickMarkPosition*) unsupported position]) : unit)

*)
   method numberOfTickMarks =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfTickMarks:")[]) : int)
   method setNumberOfTickMarks (count : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNumberOfTickMarks:")[make_int count]) : unit)
   method numberOfMajorTickMarks =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "numberOfMajorTickMarks:")[]) : int)
   method setNumberOfMajorTickMarks (count : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setNumberOfMajorTickMarks:")[make_int count]) : unit)
   method tickMarkValueAtIndex (index : int) =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "tickMarkValueAtIndex:")[make_int index]) : float)
(*  UNSUPPORTED
   method rectOfTickMarkAtIndex (index : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "rectOfTickMarkAtIndex:")[make_int index]) : (*NSRect*) unsupported)

*)
end
