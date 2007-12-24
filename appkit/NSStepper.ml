(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSControl


external init : unit -> unit = "caml_init_NSStepper"
let _ = init()
let make_NSControl_of_NSStepper (o : [`NSStepper] nativeNSObject) = (Obj.magic o : [`NSControl] nativeNSObject)
(* Class object for NSStepper *)
let class_NSStepper = object
   val repr = Classes.find "NSStepper"
   method _new = (Objc.objcnew repr : [`NSStepper] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSStepper] nativeNSObject)
end
(* Encapsulation for native instance of NSStepper *)
class native_NSStepper = fun (o : [`NSStepper] nativeNSObject) -> object (self)
   inherit native_NSControl (make_NSControl_of_NSStepper o) as super
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
