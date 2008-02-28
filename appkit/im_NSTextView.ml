(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTextView *)
class virtual methods = object (self)
  method virtual repr : [`NSTextView] Objc.id
(*  UNSUPPORTED
  method initWithFrame  ?textContainer:(container : [`NSTextContainer] Objc.t option) (frameRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg frameRect "initWithFrame" (*NSRect*) unsupported
      ++ Objc.opt_arg container "textContainer" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)

*)
  (* skipping selector initWithFrame *)
  method textContainer =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textContainer")[])
       : [`NSTextContainer] Objc.id))
  method setTextContainer (container : [`NSTextContainer] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextContainer:")
      [make_pointer_from_object container]) : unit)
  method replaceTextContainer (newContainer : [`NSTextContainer] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "replaceTextContainer:")
      [make_pointer_from_object newContainer]) : unit)
(*  UNSUPPORTED
  method setTextContainerInset (inset : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextContainerInset:")
      [(*NSSize*) unsupported inset]) : unit)

*)
(*  UNSUPPORTED
  method textContainerInset =
    ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find "textContainerInset")[])
       : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
  method textContainerOrigin =
    ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported self#repr (Selector.find "textContainerOrigin")[])
       : (*NSPoint*) unsupported)

*)
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
(*  UNSUPPORTED
  method setConstrainedFrameSize (desiredSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setConstrainedFrameSize:")
      [(*NSSize*) unsupported desiredSize]) : unit)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method setAlignment  ~range:(range : (int * int) ) (alignment : int) =
    let sel, args = (
      Objc.arg alignment "setAlignment" make_int
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method setBaseWritingDirection  ~range:(range : (int * int) ) (writingDirection : int) =
    let sel, args = (
      Objc.arg writingDirection "setBaseWritingDirection" make_int
      ++ Objc.arg range "range" make_range
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
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
  (* skipping selector rulerView:didMoveMarker *)
  (* skipping selector rulerView:didRemoveMarker *)
  (* skipping selector rulerView:didAddMarker *)
  (* skipping selector rulerView:shouldMoveMarker *)
  (* skipping selector rulerView:shouldAddMarker *)
  method rulerView  ?willMoveMarker:(marker : [`NSRulerMarker] Objc.t option) ?toLocation:(location : float option) (ruler : [`NSRulerView] Objc.t) =
    let sel, args = (
      Objc.arg ruler "rulerView" make_pointer_from_object
      ++ Objc.opt_arg marker "willMoveMarker" make_pointer_from_object
      ++ Objc.opt_arg location "toLocation" make_float
    ) ([],[]) in
      (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find_list sel) args)
       : float)
  (* skipping selector rulerView:shouldRemoveMarker *)
  (* skipping selector rulerView:willAddMarker:atLocation *)
  (* skipping selector rulerView:handleMouseDown *)
(*  UNSUPPORTED
  method setNeedsDisplayInRect  ~avoidAdditionalLayout:(flag : bool ) (rect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg rect "setNeedsDisplayInRect" (*NSRect*) unsupported
      ++ Objc.arg flag "avoidAdditionalLayout" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method shouldDrawInsertionPoint =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldDrawInsertionPoint")[])
       : bool)
(*  UNSUPPORTED
  method drawInsertionPointInRect  ~color:(color : [`NSColor] Objc.t ) ~turnedOn:(flag : bool ) (rect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg rect "drawInsertionPointInRect" (*NSRect*) unsupported
      ++ Objc.arg color "color" make_pointer_from_object
      ++ Objc.arg flag "turnedOn" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method drawViewBackgroundInRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawViewBackgroundInRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
  method updateRuler =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateRuler")[])
       : unit)
  method updateFontPanel =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateFontPanel")[])
       : unit)
  method updateDragTypeRegistration =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateDragTypeRegistration")[])
       : unit)
  method selectionRangeForProposedRange  ~granularity:(granularity : int ) (proposedCharRange : int * int) =
    let sel, args = (
      Objc.arg proposedCharRange "selectionRangeForProposedRange" make_range
      ++ Objc.arg granularity "granularity" make_int
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : (int * int))
  method clickedOnLink  ~atIndex:(charIndex : int ) (link : [`NSObject] Objc.t) =
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
