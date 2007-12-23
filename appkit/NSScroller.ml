open Objc
open NSControl
open NSCell


external init : unit -> unit = "caml_init_NSScroller"
let _ = init()
(* Class object for NSScroller *)
let class_NSScroller = object
   val o = Classes.find "NSScroller"
   method _new = (Objc.objcnew o : [`NSScroller] nativeNSObject)
   method scrollerWidth =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "scrollerWidth:")[]) : [`NSScroller] Objc.nativeNSObject)
   method scrollerWidthForControlSize (controlSize : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "scrollerWidthForControlSize:")[make_int controlSize]) : [`NSScroller] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScroller *)
class native_NSScroller = fun (o : [`NSScroller] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method drawParts =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "drawParts:")[]) : unit)
(*  UNSUPPORTED
   method rectForPart (partCode : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported o (Selector.find "rectForPart:")[make_int partCode]) : (*NSRect*) unsupported)

*)
   method checkSpaceForParts =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "checkSpaceForParts:")[]) : unit)
   method usableParts =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "usableParts:")[]) : int)
   method setArrowsPosition (where : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setArrowsPosition:")[make_int where]) : unit)
   method arrowsPosition =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "arrowsPosition:")[]) : int)
   method setControlTint (controlTint : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setControlTint:")[make_int controlTint]) : unit)
   method controlTint =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "controlTint:")[]) : int)
   method setControlSize (controlSize : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setControlSize:")[make_int controlSize]) : unit)
   method controlSize =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "controlSize:")[]) : int)
   method drawArrow  ~highlight:(flag : bool ) (whichArrow : int) =
     let sel, args = (
       Objc.arg whichArrow "drawArrow" make_int
       ++ Objc.arg flag "highlight" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method drawKnob =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "drawKnob:")[]) : unit)
   method highlight (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "highlight:")[make_bool flag]) : unit)
(*  UNSUPPORTED
   method testPart (thePoint : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "testPart:")[(*NSPoint*) unsupported thePoint]) : int)

*)
   method trackKnob (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "trackKnob:")[make_pointer_from_object theEvent]) : unit)
   method trackScrollButtons (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "trackScrollButtons:")[make_pointer_from_object theEvent]) : unit)
   method hitPart =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "hitPart:")[]) : int)
   method setFloatValue  ~knobProportion:(percent : float ) (aFloat : float) =
     let sel, args = (
       Objc.arg aFloat "setFloatValue" make_float
       ++ Objc.arg percent "knobProportion" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method knobProportion =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "knobProportion:")[]) : float)
end
