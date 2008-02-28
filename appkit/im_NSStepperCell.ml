(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSStepperCell *)
class virtual methods = object (self)
  method virtual repr : [`NSStepperCell] Objc.id
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
  method increment =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "increment")[])
       : float)
  method setIncrement (increment : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIncrement:")
      [make_float increment]) : unit)
  method valueWraps =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "valueWraps")[])
       : bool)
  method setValueWraps (valueWraps : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setValueWraps:")
      [make_bool valueWraps]) : unit)
  method autorepeat =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autorepeat")[])
       : bool)
  method setAutorepeat (autorepeat : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutorepeat:")
      [make_bool autorepeat]) : unit)
end
