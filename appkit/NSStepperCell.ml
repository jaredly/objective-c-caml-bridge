(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSActionCell


external init : unit -> unit = "caml_init_NSStepperCell"
let _ = init()
let make_NSActionCell_of_NSStepperCell (o : [`NSStepperCell] nativeNSObject) = (Obj.magic o : [`NSActionCell] nativeNSObject)
(* Class object for NSStepperCell *)
let class_NSStepperCell = object
   val repr = Classes.find "NSStepperCell"
   method _new = (Objc.objcnew repr : [`NSStepperCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSStepperCell] nativeNSObject)
end
(* Encapsulation for native instance of NSStepperCell *)
class native_NSStepperCell = fun (o : [`NSStepperCell] nativeNSObject) -> object (self)
   inherit native_NSActionCell (make_NSActionCell_of_NSStepperCell o) as super
   method minValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "minValue:")[]) : float)
   method setMinValue (minValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMinValue:")[make_float minValue]) : unit)
   method maxValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "maxValue:")[]) : float)
   method setMaxValue (maxValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaxValue:")[make_float maxValue]) : unit)
   method increment =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "increment:")[]) : float)
   method setIncrement (increment : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIncrement:")[make_float increment]) : unit)
   method valueWraps =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "valueWraps:")[]) : bool)
   method setValueWraps (valueWraps : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setValueWraps:")[make_bool valueWraps]) : unit)
   method autorepeat =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autorepeat:")[]) : bool)
   method setAutorepeat (autorepeat : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutorepeat:")[make_bool autorepeat]) : unit)
end
