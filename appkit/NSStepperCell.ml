open Objc
open NSActionCell


external init : unit -> unit = "caml_init_NSStepperCell"
let _ = init()
(* Class object for NSStepperCell *)
let class_NSStepperCell = object
   val o = Classes.find "NSStepperCell"
   method _new = (Objc.objcnew o : [`NSStepperCell] nativeNSObject)
end
(* Encapsulation for native instance of NSStepperCell *)
class native_NSStepperCell = fun (o : [`NSStepperCell] nativeNSObject) -> object (self)
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
   method increment =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "increment:")[]) : float)
   method setIncrement (increment : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setIncrement:")[make_float increment]) : unit)
   method valueWraps =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "valueWraps:")[]) : bool)
   method setValueWraps (valueWraps : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setValueWraps:")[make_bool valueWraps]) : unit)
   method autorepeat =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "autorepeat:")[]) : bool)
   method setAutorepeat (autorepeat : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setAutorepeat:")[make_bool autorepeat]) : unit)
end
