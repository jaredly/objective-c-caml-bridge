(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSRulerView *)
class virtual methods = object (self)
  method virtual repr : [`NSRulerView] Objc.id
  method initWithScrollView  ~orientation:(orientation : int ) (scrollView : [`NSScrollView] Objc.t) =
    let sel, args = (
      Objc.arg scrollView "initWithScrollView" make_pointer_from_object
      ++ Objc.arg orientation "orientation" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setScrollView (scrollView : [`NSScrollView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setScrollView:")
      [make_pointer_from_object scrollView]) : unit)
  method scrollView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "scrollView")[])
       : [`NSScrollView] Objc.id))
  method setOrientation (orientation : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOrientation:")
      [make_int orientation]) : unit)
  method orientation =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "orientation")[])
       : int)
  method baselineLocation =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "baselineLocation")[])
       : float)
  method requiredThickness =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "requiredThickness")[])
       : float)
  method setRuleThickness (thickness : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRuleThickness:")
      [make_float thickness]) : unit)
  method ruleThickness =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "ruleThickness")[])
       : float)
  method setReservedThicknessForMarkers (thickness : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setReservedThicknessForMarkers:")
      [make_float thickness]) : unit)
  method reservedThicknessForMarkers =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "reservedThicknessForMarkers")[])
       : float)
  method setReservedThicknessForAccessoryView (thickness : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setReservedThicknessForAccessoryView:")
      [make_float thickness]) : unit)
  method reservedThicknessForAccessoryView =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "reservedThicknessForAccessoryView")[])
       : float)
  method setMeasurementUnits (unitName : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMeasurementUnits:")
      [make_pointer_from_object unitName]) : unit)
  method measurementUnits =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "measurementUnits")[])
       : [`NSString] Objc.id))
  method setOriginOffset (offset : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOriginOffset:")
      [make_float offset]) : unit)
  method originOffset =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "originOffset")[])
       : float)
  method setClientView (client : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setClientView:")
      [make_pointer_from_object client]) : unit)
  method clientView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "clientView")[])
       : [`NSView] Objc.id))
  method setMarkers (markers : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMarkers:")
      [make_pointer_from_object markers]) : unit)
  method addMarker (marker : [`NSRulerMarker] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addMarker:")
      [make_pointer_from_object marker]) : unit)
  method removeMarker (marker : [`NSRulerMarker] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeMarker:")
      [make_pointer_from_object marker]) : unit)
  method markers =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "markers")[])
       : [`NSArray] Objc.id))
  method trackMarker  ~withMouseEvent:(event : [`NSEvent] Objc.t ) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg marker "trackMarker" make_pointer_from_object
      ++ Objc.arg event "withMouseEvent" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method setAccessoryView (accessory : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAccessoryView:")
      [make_pointer_from_object accessory]) : unit)
  method accessoryView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "accessoryView")[])
       : [`NSView] Objc.id))
  method moveRulerlineFromLocation  ~toLocation:(newLocation : float ) (oldLocation : float) =
    let sel, args = (
      Objc.arg oldLocation "moveRulerlineFromLocation" make_float
      ++ Objc.arg newLocation "toLocation" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method invalidateHashMarks =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invalidateHashMarks")[])
       : unit)
(*  UNSUPPORTED
  method drawHashMarksAndLabelsInRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawHashMarksAndLabelsInRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
  method drawMarkersInRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawMarkersInRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
  method isFlipped =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFlipped")[])
       : bool)
end
