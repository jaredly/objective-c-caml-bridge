(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextView *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithFrame_textContainer  (frameRect : NSRect.t) (container : [`NSTextContainer] Objc.t) =
    let sel, args = (
      Objc.arg frameRect "initWithFrame" make_rect
      ++ Objc.arg container "textContainer" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithFrame (frameRect : NSRect.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFrame:")
      [make_rect frameRect]) : [`NSObject] Objc.id)
  method textContainer =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textContainer")[])
       : [`NSTextContainer] Objc.id))
  method setTextContainer (container : [`NSTextContainer] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextContainer:")
      [make_pointer_from_object container]) : unit)
  method replaceTextContainer (newContainer : [`NSTextContainer] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "replaceTextContainer:")
      [make_pointer_from_object newContainer]) : unit)
  method setTextContainerInset (inset : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextContainerInset:")
      [make_size inset]) : unit)
  method textContainerInset =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "textContainerInset")[])
       : NSSize.t)
  method textContainerOrigin =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "textContainerOrigin")[])
       : NSPoint.t)
  method invalidateTextContainerOrigin =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invalidateTextContainerOrigin")[])
       : unit)
  method layoutManager =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "layoutManager")[])
       : [`NSLayoutManager] Objc.id))
  method textStorage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textStorage")[])
       : [`NSTextStorage] Objc.id))
  method insertText (insertString : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "insertText:")
      [make_pointer_from_object insertString]) : unit)
  method setConstrainedFrameSize (desiredSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setConstrainedFrameSize:")
      [make_size desiredSize]) : unit)
  method setAlignment_range  (alignment : int) (range : NSRange.t) =
    let sel, args = (
      Objc.arg alignment "setAlignment" make_int
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setBaseWritingDirection_range  (writingDirection : int) (range : NSRange.t) =
    let sel, args = (
      Objc.arg writingDirection "setBaseWritingDirection" make_int
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method turnOffKerning (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "turnOffKerning:")
      [make_pointer_from_object sender]) : unit)
  method tightenKerning (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "tightenKerning:")
      [make_pointer_from_object sender]) : unit)
  method loosenKerning (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "loosenKerning:")
      [make_pointer_from_object sender]) : unit)
  method useStandardKerning (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "useStandardKerning:")
      [make_pointer_from_object sender]) : unit)
  method turnOffLigatures (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "turnOffLigatures:")
      [make_pointer_from_object sender]) : unit)
  method useStandardLigatures (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "useStandardLigatures:")
      [make_pointer_from_object sender]) : unit)
  method useAllLigatures (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "useAllLigatures:")
      [make_pointer_from_object sender]) : unit)
  method raiseBaseline (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "raiseBaseline:")
      [make_pointer_from_object sender]) : unit)
  method lowerBaseline (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "lowerBaseline:")
      [make_pointer_from_object sender]) : unit)
  method toggleTraditionalCharacterShape (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "toggleTraditionalCharacterShape:")
      [make_pointer_from_object sender]) : unit)
  method outline (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "outline:")
      [make_pointer_from_object sender]) : unit)
  method performFindPanelAction (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performFindPanelAction:")
      [make_pointer_from_object sender]) : unit)
  method alignJustified (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "alignJustified:")
      [make_pointer_from_object sender]) : unit)
  method changeColor (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "changeColor:")
      [make_pointer_from_object sender]) : unit)
  method changeAttributes (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "changeAttributes:")
      [make_pointer_from_object sender]) : unit)
  method changeDocumentBackgroundColor (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "changeDocumentBackgroundColor:")
      [make_pointer_from_object sender]) : unit)
  method toggleBaseWritingDirection (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "toggleBaseWritingDirection:")
      [make_pointer_from_object sender]) : unit)
  method orderFrontSpacingPanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontSpacingPanel:")
      [make_pointer_from_object sender]) : unit)
  method orderFrontLinkPanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontLinkPanel:")
      [make_pointer_from_object sender]) : unit)
  method orderFrontListPanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontListPanel:")
      [make_pointer_from_object sender]) : unit)
  method orderFrontTablePanel (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontTablePanel:")
      [make_pointer_from_object sender]) : unit)
  method rulerView_didMoveMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "didMoveMarker" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rulerView_didRemoveMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "didRemoveMarker" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rulerView_didAddMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "didAddMarker" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method rulerView_shouldMoveMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "shouldMoveMarker" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method rulerView_shouldAddMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "shouldAddMarker" make_pointer_from_object
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
  method rulerView_shouldRemoveMarker  (ruler : [`NSRulerView] Objc.t) (marker : [`NSRulerMarker] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg marker "shouldRemoveMarker" make_pointer_from_object
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
  method rulerView_handleMouseDown  (ruler : [`NSRulerView] Objc.t) (event : [`NSEvent] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.arg event "handleMouseDown" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setNeedsDisplayInRect_avoidAdditionalLayout  (rect : NSRect.t) (flag : bool) =
    let sel, args = (
      Objc.arg rect "setNeedsDisplayInRect" make_rect
      ++ Objc.arg flag "avoidAdditionalLayout" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method shouldDrawInsertionPoint =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldDrawInsertionPoint")[])
       : bool)
  method drawInsertionPointInRect_color_turnedOn  (rect : NSRect.t) (color : [`NSColor] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg rect "drawInsertionPointInRect" make_rect
      ++ Objc.arg color "color" make_pointer_from_object
      ++ Objc.arg flag "turnedOn" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method drawViewBackgroundInRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawViewBackgroundInRect:")
      [make_rect rect]) : unit)
  method updateRuler =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateRuler")[])
       : unit)
  method updateFontPanel =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateFontPanel")[])
       : unit)
  method updateDragTypeRegistration =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateDragTypeRegistration")[])
       : unit)
  method selectionRangeForProposedRange_granularity  (proposedCharRange : NSRange.t) (granularity : int) =
    let sel, args = (
      Objc.arg proposedCharRange "selectionRangeForProposedRange" make_range
      ++ Objc.arg granularity "granularity" make_int
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method clickedOnLink_atIndex  (link : [`NSObject] Objc.t) (charIndex : int) =
    let sel, args = (
      Objc.arg link "clickedOnLink" make_pointer_from_object
      ++ Objc.arg charIndex "atIndex" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method startSpeaking (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "startSpeaking:")
      [make_pointer_from_object sender]) : unit)
  method stopSpeaking (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopSpeaking:")
      [make_pointer_from_object sender]) : unit)
end
