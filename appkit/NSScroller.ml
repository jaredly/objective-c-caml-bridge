(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSControl
open NSCell


external init : unit -> unit = "caml_init_NSScroller"
let _ = init()
let make_NSControl_of_NSScroller (o : [`NSScroller] nativeNSObject) = (Obj.magic o : [`NSControl] nativeNSObject)
(* Class object for NSScroller *)
let class_NSScroller = object
   val repr = Classes.find "NSScroller"
   method _new = (Objc.objcnew repr : [`NSScroller] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSScroller] nativeNSObject)
   method scrollerWidth =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "scrollerWidth:")[]) : [`NSScroller] Objc.nativeNSObject)
   method scrollerWidthForControlSize (controlSize : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "scrollerWidthForControlSize:")[make_int controlSize]) : [`NSScroller] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSScroller *)
class native_NSScroller = fun (o : [`NSScroller] nativeNSObject) -> object (self)
   inherit native_NSControl (make_NSControl_of_NSScroller o) as super
   method drawParts =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawParts:")[]) : unit)
(*  UNSUPPORTED
   method rectForPart (partCode : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "rectForPart:")[make_int partCode]) : (*NSRect*) unsupported)

*)
   method checkSpaceForParts =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "checkSpaceForParts:")[]) : unit)
   method usableParts =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "usableParts:")[]) : int)
   method setArrowsPosition (where : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setArrowsPosition:")[make_int where]) : unit)
   method arrowsPosition =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "arrowsPosition:")[]) : int)
   method setControlTint (controlTint : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setControlTint:")[make_int controlTint]) : unit)
   method controlTint =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "controlTint:")[]) : int)
   method setControlSize (controlSize : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setControlSize:")[make_int controlSize]) : unit)
   method controlSize =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "controlSize:")[]) : int)
   method drawArrow  ~highlight:(flag : bool ) (whichArrow : int) =
     let sel, args = (
       Objc.arg whichArrow "drawArrow" make_int
       ++ Objc.arg flag "highlight" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method drawKnob =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawKnob:")[]) : unit)
   method highlight (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "highlight:")[make_bool flag]) : unit)
(*  UNSUPPORTED
   method testPart (thePoint : (*NSPoint*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "testPart:")[(*NSPoint*) unsupported thePoint]) : int)

*)
   method trackKnob (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "trackKnob:")[make_pointer_from_object theEvent]) : unit)
   method trackScrollButtons (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "trackScrollButtons:")[make_pointer_from_object theEvent]) : unit)
   method hitPart =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "hitPart:")[]) : int)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
   method setFloatValue  ~knobProportion:(percent : float ) (aFloat : float) =
     let sel, args = (
       Objc.arg aFloat "setFloatValue" make_float
       ++ Objc.arg percent "knobProportion" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method knobProportion =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "knobProportion:")[]) : float)
end
