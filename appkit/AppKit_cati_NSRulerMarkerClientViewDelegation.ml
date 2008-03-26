(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSRulerMarkerClientViewDelegation of NSView *)
class virtual methods_NSView = object (self)
  method virtual repr : [`NSObject] Objc.id
  method rulerView_shouldMoveMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "shouldMoveMarker" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method rulerView_willMoveMarker_toLocation  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) (location : float) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "willMoveMarker" make_pointer_from_object
      ++ Objc.arg location "toLocation" make_float
    ) ([],[]) in
      (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find_list sel) args)
       : float)
  method rulerView_didMoveMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "didMoveMarker" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rulerView_shouldRemoveMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "shouldRemoveMarker" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method rulerView_didRemoveMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "didRemoveMarker" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rulerView_shouldAddMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "shouldAddMarker" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method rulerView_willAddMarker_atLocation  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) (location : float) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "willAddMarker" make_pointer_from_object
      ++ Objc.arg location "atLocation" make_float
    ) ([],[]) in
      (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find_list sel) args)
       : float)
  method rulerView_didAddMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "didAddMarker" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rulerView_handleMouseDown  (ruler : [`NSRulerView] Objc.t) (event : [`NSEvent] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg event "handleMouseDown" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rulerView_willSetClientView  (ruler : [`NSRulerView] Objc.t) (newClient : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg newClient "willSetClientView" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
end
