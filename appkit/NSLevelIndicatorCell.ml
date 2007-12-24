(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSActionCell
open NSSliderCell


external init : unit -> unit = "caml_init_NSLevelIndicatorCell"
let _ = init()
let make_NSActionCell_of_NSLevelIndicatorCell (o : [`NSLevelIndicatorCell] nativeNSObject) = (Obj.magic o : [`NSActionCell] nativeNSObject)
(* Class object for NSLevelIndicatorCell *)
let class_NSLevelIndicatorCell = object
   val repr = Classes.find "NSLevelIndicatorCell"
   method _new = (Objc.objcnew repr : [`NSLevelIndicatorCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSLevelIndicatorCell] nativeNSObject)
end
(* Encapsulation for native instance of NSLevelIndicatorCell *)
class native_NSLevelIndicatorCell = fun (o : [`NSLevelIndicatorCell] nativeNSObject) -> object (self)
   inherit native_NSActionCell (make_NSActionCell_of_NSLevelIndicatorCell o) as super
   method initWithLevelIndicatorStyle (levelIndicatorStyle : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithLevelIndicatorStyle:")[make_int levelIndicatorStyle]) : [`NSObject] Objc.nativeNSObject)
   method levelIndicatorStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "levelIndicatorStyle:")[]) : int)
   method setLevelIndicatorStyle (levelIndicatorStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLevelIndicatorStyle:")[make_int levelIndicatorStyle]) : unit)
   method minValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "minValue:")[]) : float)
   method setMinValue (minValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMinValue:")[make_float minValue]) : unit)
   method maxValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "maxValue:")[]) : float)
   method setMaxValue (maxValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaxValue:")[make_float maxValue]) : unit)
   method warningValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "warningValue:")[]) : float)
   method setWarningValue (warningValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWarningValue:")[make_float warningValue]) : unit)
   method criticalValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "criticalValue:")[]) : float)
   method setCriticalValue (criticalValue : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCriticalValue:")[make_float criticalValue]) : unit)
(*  UNSUPPORTED
   method setTickMarkPosition (position : (*NSTickMarkPosition*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTickMarkPosition:")[(*NSTickMarkPosition*) unsupported position]) : unit)

*)
(*  UNSUPPORTED
   method tickMarkPosition =
     ((*NSTickMarkPosition*) unsupported (Objc.invoke (*NSTickMarkPosition*) Objc.tag_unsupported repr (Selector.find "tickMarkPosition:")[]) : (*NSTickMarkPosition*) unsupported)

*)
   method setNumberOfTickMarks (count : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNumberOfTickMarks:")[make_int count]) : unit)
   method numberOfTickMarks =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfTickMarks:")[]) : int)
   method setNumberOfMajorTickMarks (count : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNumberOfMajorTickMarks:")[make_int count]) : unit)
   method numberOfMajorTickMarks =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "numberOfMajorTickMarks:")[]) : int)
(*  UNSUPPORTED
   method rectOfTickMarkAtIndex (index : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "rectOfTickMarkAtIndex:")[make_int index]) : (*NSRect*) unsupported)

*)
   method tickMarkValueAtIndex (index : int) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "tickMarkValueAtIndex:")[make_int index]) : float)
   method setImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setImage:")[make_pointer_from_object image]) : unit)
end
