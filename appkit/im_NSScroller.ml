(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSScroller *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method drawParts =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawParts")[])
       : unit)
  method rectForPart (partCode : int) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "rectForPart:")
      [make_int partCode]) : NSRect.t)
  method checkSpaceForParts =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "checkSpaceForParts")[])
       : unit)
  method usableParts =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "usableParts")[])
       : int)
  method setArrowsPosition (where : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setArrowsPosition:")
      [make_int where]) : unit)
  method arrowsPosition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "arrowsPosition")[])
       : int)
  method setControlTint (controlTint : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setControlTint:")
      [make_int controlTint]) : unit)
  method controlTint =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "controlTint")[])
       : int)
  method setControlSize (controlSize : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setControlSize:")
      [make_int controlSize]) : unit)
  method controlSize =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "controlSize")[])
       : int)
  method drawArrow_highlight  (whichArrow : int) (flag : bool) =
    let sel, args = (
      Objc.arg whichArrow "drawArrow" make_int
      ++ Objc.arg flag "highlight" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawKnob =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawKnob")[])
       : unit)
  method highlight (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "highlight:")
      [make_bool flag]) : unit)
  method testPart (thePoint : NSPoint.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "testPart:")
      [make_point thePoint]) : int)
  method trackKnob (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "trackKnob:")
      [make_pointer_from_object theEvent]) : unit)
  method trackScrollButtons (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "trackScrollButtons:")
      [make_pointer_from_object theEvent]) : unit)
  method hitPart =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "hitPart")[])
       : int)
  method setFloatValue_knobProportion  (aFloat : float) (percent : float) =
    let sel, args = (
      Objc.arg aFloat "setFloatValue" make_float
      ++ Objc.arg percent "knobProportion" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method knobProportion =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "knobProportion")[])
       : float)
end
