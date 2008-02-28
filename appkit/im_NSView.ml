(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSView *)
class virtual methods = object (self)
  method virtual repr : [`NSView] Objc.id
(*  UNSUPPORTED
  method initWithFrame (frameRect : (*NSRect*) unsupported) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFrame:")
      [(*NSRect*) unsupported frameRect]) : [`NSObject] Objc.id)

*)
  method window =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "window")[])
       : [`NSWindow] Objc.id))
  method superview =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "superview")[])
       : [`NSView] Objc.id))
  method subviews =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "subviews")[])
       : [`NSArray] Objc.id))
  method isDescendantOf (aView : [`NSView] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDescendantOf:")
      [make_pointer_from_object aView]) : bool)
  method ancestorSharedWithView (aView : [`NSView] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "ancestorSharedWithView:")
      [make_pointer_from_object aView]) : [`NSView] Objc.id))
  method opaqueAncestor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "opaqueAncestor")[])
       : [`NSView] Objc.id))
  method setHidden (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHidden:")
      [make_bool flag]) : unit)
  method isHidden =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isHidden")[])
       : bool)
  method isHiddenOrHasHiddenAncestor =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isHiddenOrHasHiddenAncestor")[])
       : bool)
(*  UNSUPPORTED
  method getRectsBeingDrawn  ~count:(count : [`int] Objc.t ) (rects : (*pointer to pointer to const NSRect*) unsupported) =
    let sel, args = (
      Objc.arg rects "getRectsBeingDrawn" (*pointer to pointer to const NSRect*) unsupported
      ++ Objc.arg count "count" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method needsToDrawRect (aRect : (*NSRect*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "needsToDrawRect:")
      [(*NSRect*) unsupported aRect]) : bool)

*)
  method wantsDefaultClipping =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "wantsDefaultClipping")[])
       : bool)
  (* skipping selector addSubview *)
  method addSubview  ?positioned:(place : int option) ?relativeTo:(otherView : [`NSView] Objc.t option) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aView "addSubview" make_pointer_from_object
      ++ Objc.opt_arg place "positioned" make_int
      ++ Objc.opt_arg otherView "relativeTo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method sortSubviewsUsingFunction  ~context:(context : [`void] Objc.t ) (compare : (*id->id->pointer to void->int*) unsupported) =
    let sel, args = (
      Objc.arg compare "sortSubviewsUsingFunction" (*id->id->pointer to void->int*) unsupported
      ++ Objc.arg context "context" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method viewWillMoveToWindow (newWindow : [`NSWindow] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewWillMoveToWindow:")
      [make_pointer_from_object newWindow]) : unit)
  method viewDidMoveToWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewDidMoveToWindow")[])
       : unit)
  method viewWillMoveToSuperview (newSuperview : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewWillMoveToSuperview:")
      [make_pointer_from_object newSuperview]) : unit)
  method viewDidMoveToSuperview =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewDidMoveToSuperview")[])
       : unit)
  method didAddSubview (subview : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "didAddSubview:")
      [make_pointer_from_object subview]) : unit)
  method willRemoveSubview (subview : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "willRemoveSubview:")
      [make_pointer_from_object subview]) : unit)
  method removeFromSuperview =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeFromSuperview")[])
       : unit)
  method replaceSubview  ~l_with:(newView : [`NSView] Objc.t ) (oldView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg oldView "replaceSubview" make_pointer_from_object
      ++ Objc.arg newView "l_with" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeFromSuperviewWithoutNeedingDisplay =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeFromSuperviewWithoutNeedingDisplay")[])
       : unit)
  method setPostsFrameChangedNotifications (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPostsFrameChangedNotifications:")
      [make_bool flag]) : unit)
  method postsFrameChangedNotifications =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "postsFrameChangedNotifications")[])
       : bool)
(*  UNSUPPORTED
  method resizeSubviewsWithOldSize (oldSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resizeSubviewsWithOldSize:")
      [(*NSSize*) unsupported oldSize]) : unit)

*)
(*  UNSUPPORTED
  method resizeWithOldSuperviewSize (oldSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resizeWithOldSuperviewSize:")
      [(*NSSize*) unsupported oldSize]) : unit)

*)
  method setAutoresizesSubviews (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutoresizesSubviews:")
      [make_bool flag]) : unit)
  method autoresizesSubviews =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autoresizesSubviews")[])
       : bool)
  method setAutoresizingMask (mask : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutoresizingMask:")
      [make_int mask]) : unit)
  method autoresizingMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "autoresizingMask")[])
       : int)
(*  UNSUPPORTED
  method setFrameOrigin (newOrigin : (*NSPoint*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameOrigin:")
      [(*NSPoint*) unsupported newOrigin]) : unit)

*)
(*  UNSUPPORTED
  method setFrameSize (newSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameSize:")
      [(*NSSize*) unsupported newSize]) : unit)

*)
(*  UNSUPPORTED
  method setFrame (frameRect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrame:")
      [(*NSRect*) unsupported frameRect]) : unit)

*)
(*  UNSUPPORTED
  method frame =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "frame")[])
       : (*NSRect*) unsupported)

*)
  method setFrameRotation (angle : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameRotation:")
      [make_float angle]) : unit)
  method frameRotation =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "frameRotation")[])
       : float)
(*  UNSUPPORTED
  method setBoundsOrigin (newOrigin : (*NSPoint*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBoundsOrigin:")
      [(*NSPoint*) unsupported newOrigin]) : unit)

*)
(*  UNSUPPORTED
  method setBoundsSize (newSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBoundsSize:")
      [(*NSSize*) unsupported newSize]) : unit)

*)
  method setBoundsRotation (angle : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBoundsRotation:")
      [make_float angle]) : unit)
  method boundsRotation =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "boundsRotation")[])
       : float)
(*  UNSUPPORTED
  method translateOriginToPoint (translation : (*NSPoint*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "translateOriginToPoint:")
      [(*NSPoint*) unsupported translation]) : unit)

*)
(*  UNSUPPORTED
  method scaleUnitSquareToSize (newUnitSize : (*NSSize*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scaleUnitSquareToSize:")
      [(*NSSize*) unsupported newUnitSize]) : unit)

*)
  method rotateByAngle (angle : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "rotateByAngle:")
      [make_float angle]) : unit)
(*  UNSUPPORTED
  method setBounds (aRect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBounds:")
      [(*NSRect*) unsupported aRect]) : unit)

*)
(*  UNSUPPORTED
  method bounds =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "bounds")[])
       : (*NSRect*) unsupported)

*)
  method isFlipped =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFlipped")[])
       : bool)
  method isRotatedFromBase =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRotatedFromBase")[])
       : bool)
  method isRotatedOrScaledFromBase =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRotatedOrScaledFromBase")[])
       : bool)
  method isOpaque =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOpaque")[])
       : bool)
(*  UNSUPPORTED
  method convertPoint  ~fromView:(aView : [`NSView] Objc.t ) (aPoint : (*NSPoint*) unsupported) =
    let sel, args = (
      Objc.arg aPoint "convertPoint" (*NSPoint*) unsupported
      ++ Objc.arg aView "fromView" make_pointer_from_object
    ) ([],[]) in
      ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSPoint*) unsupported)

*)
  (* skipping selector convertPoint:toView *)
(*  UNSUPPORTED
  method convertSize  ~fromView:(aView : [`NSView] Objc.t ) (aSize : (*NSSize*) unsupported) =
    let sel, args = (
      Objc.arg aSize "convertSize" (*NSSize*) unsupported
      ++ Objc.arg aView "fromView" make_pointer_from_object
    ) ([],[]) in
      ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSSize*) unsupported)

*)
  (* skipping selector convertSize:toView *)
(*  UNSUPPORTED
  method convertRect  ~fromView:(aView : [`NSView] Objc.t ) (aRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg aRect "convertRect" (*NSRect*) unsupported
      ++ Objc.arg aView "fromView" make_pointer_from_object
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
  (* skipping selector convertRect:toView *)
(*  UNSUPPORTED
  method centerScanRect (aRect : (*NSRect*) unsupported) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "centerScanRect:")
      [(*NSRect*) unsupported aRect]) : (*NSRect*) unsupported)

*)
  method canDraw =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canDraw")[])
       : bool)
  method setNeedsDisplay (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsDisplay:")
      [make_bool flag]) : unit)
(*  UNSUPPORTED
  method setNeedsDisplayInRect (invalidRect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsDisplayInRect:")
      [(*NSRect*) unsupported invalidRect]) : unit)

*)
  method needsDisplay =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "needsDisplay")[])
       : bool)
  method lockFocus =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "lockFocus")[])
       : unit)
  method unlockFocus =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unlockFocus")[])
       : unit)
  method lockFocusIfCanDraw =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "lockFocusIfCanDraw")[])
       : bool)
  method lockFocusIfCanDrawInContext (context : [`NSGraphicsContext] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "lockFocusIfCanDrawInContext:")
      [make_pointer_from_object context]) : bool)
(*  UNSUPPORTED
  method visibleRect =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "visibleRect")[])
       : (*NSRect*) unsupported)

*)
  method display =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "display")[])
       : unit)
  method displayIfNeeded =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeeded")[])
       : unit)
  method displayIfNeededIgnoringOpacity =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeededIgnoringOpacity")[])
       : unit)
(*  UNSUPPORTED
  method displayRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
  method displayIfNeededInRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeededInRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
  (* skipping selector displayRectIgnoringOpacity *)
(*  UNSUPPORTED
  method displayIfNeededInRectIgnoringOpacity (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeededInRectIgnoringOpacity:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
  method drawRect (rect : (*NSRect*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawRect:")
      [(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
  method displayRectIgnoringOpacity  ?inContext:(context : [`NSGraphicsContext] Objc.t option) (aRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg aRect "displayRectIgnoringOpacity" (*NSRect*) unsupported
      ++ Objc.opt_arg context "inContext" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method bitmapImageRepForCachingDisplayInRect (rect : (*NSRect*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bitmapImageRepForCachingDisplayInRect:")
      [(*NSRect*) unsupported rect]) : [`NSBitmapImageRep] Objc.id))

*)
(*  UNSUPPORTED
  method cacheDisplayInRect  ~toBitmapImageRep:(bitmapImageRep : [`NSBitmapImageRep] Objc.t ) (rect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg rect "cacheDisplayInRect" (*NSRect*) unsupported
      ++ Objc.arg bitmapImageRep "toBitmapImageRep" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method gState =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "gState")[])
       : int)
  method allocateGState =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "allocateGState")[])
       : unit)
  method releaseGState =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "releaseGState")[])
       : unit)
  method setUpGState =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setUpGState")[])
       : unit)
  method renewGState =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "renewGState")[])
       : unit)
(*  UNSUPPORTED
  method scrollPoint (aPoint : (*NSPoint*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollPoint:")
      [(*NSPoint*) unsupported aPoint]) : unit)

*)
(*  UNSUPPORTED
  method scrollRectToVisible (aRect : (*NSRect*) unsupported) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scrollRectToVisible:")
      [(*NSRect*) unsupported aRect]) : bool)

*)
  method autoscroll (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autoscroll:")
      [make_pointer_from_object theEvent]) : bool)
(*  UNSUPPORTED
  method adjustScroll (newVisible : (*NSRect*) unsupported) =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "adjustScroll:")
      [(*NSRect*) unsupported newVisible]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method scrollRect  ~by:(delta : (*NSSize*) unsupported ) (aRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg aRect "scrollRect" (*NSRect*) unsupported
      ++ Objc.arg delta "by" (*NSSize*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method hitTest (aPoint : (*NSPoint*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "hitTest:")
      [(*NSPoint*) unsupported aPoint]) : [`NSView] Objc.id))

*)
(*  UNSUPPORTED
  method mouse  ~inRect:(aRect : (*NSRect*) unsupported ) (aPoint : (*NSPoint*) unsupported) =
    let sel, args = (
      Objc.arg aPoint "mouse" (*NSPoint*) unsupported
      ++ Objc.arg aRect "inRect" (*NSRect*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method viewWithTag (aTag : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "viewWithTag:")
      [make_int aTag]) : [`NSObject] Objc.id)
  method tag =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tag")[])
       : int)
  method performKeyEquivalent (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "performKeyEquivalent:")
      [make_pointer_from_object theEvent]) : bool)
  method acceptsFirstMouse (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsFirstMouse:")
      [make_pointer_from_object theEvent]) : bool)
  method shouldDelayWindowOrderingForEvent (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldDelayWindowOrderingForEvent:")
      [make_pointer_from_object theEvent]) : bool)
  method needsPanelToBecomeKey =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "needsPanelToBecomeKey")[])
       : bool)
  method mouseDownCanMoveWindow =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "mouseDownCanMoveWindow")[])
       : bool)
(*  UNSUPPORTED
  method addCursorRect  ~cursor:(anObj : [`NSCursor] Objc.t ) (aRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg aRect "addCursorRect" (*NSRect*) unsupported
      ++ Objc.arg anObj "cursor" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
(*  UNSUPPORTED
  method removeCursorRect  ~cursor:(anObj : [`NSCursor] Objc.t ) (aRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg aRect "removeCursorRect" (*NSRect*) unsupported
      ++ Objc.arg anObj "cursor" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method discardCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "discardCursorRects")[])
       : unit)
  method resetCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resetCursorRects")[])
       : unit)
(*  UNSUPPORTED
  method addTrackingRect  ~owner:(anObject : [`NSObject] Objc.t ) ~userData:(data : [`void] Objc.t ) ~assumeInside:(flag : bool ) (aRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg aRect "addTrackingRect" (*NSRect*) unsupported
      ++ Objc.arg anObject "owner" make_pointer_from_object
      ++ Objc.arg data "userData" make_pointer_from_object
      ++ Objc.arg flag "assumeInside" make_bool
    ) ([],[]) in
      ((*NSTrackingRectTag*) unsupported (Objc.invoke (*NSTrackingRectTag*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSTrackingRectTag*) unsupported)

*)
(*  UNSUPPORTED
  method removeTrackingRect (tag : (*NSTrackingRectTag*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeTrackingRect:")
      [(*NSTrackingRectTag*) unsupported tag]) : unit)

*)
  method shouldDrawColor =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "shouldDrawColor")[])
       : bool)
  method setPostsBoundsChangedNotifications (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPostsBoundsChangedNotifications:")
      [make_bool flag]) : unit)
  method postsBoundsChangedNotifications =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "postsBoundsChangedNotifications")[])
       : bool)
  method enclosingScrollView =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "enclosingScrollView")[])
       : [`NSScrollView] Objc.id))
  method menuForEvent (event : [`NSEvent] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "menuForEvent:")
      [make_pointer_from_object event]) : [`NSMenu] Objc.id))
  method setToolTip (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setToolTip:")
      [make_pointer_from_object string]) : unit)
  method toolTip =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "toolTip")[])
       : [`NSString] Objc.id))
(*  UNSUPPORTED
  method addToolTipRect  ~owner:(anObject : [`NSObject] Objc.t ) ~userData:(data : [`void] Objc.t ) (aRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg aRect "addToolTipRect" (*NSRect*) unsupported
      ++ Objc.arg anObject "owner" make_pointer_from_object
      ++ Objc.arg data "userData" make_pointer_from_object
    ) ([],[]) in
      ((*NSToolTipTag*) unsupported (Objc.invoke (*NSToolTipTag*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSToolTipTag*) unsupported)

*)
(*  UNSUPPORTED
  method removeToolTip (tag : (*NSToolTipTag*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeToolTip:")
      [(*NSToolTipTag*) unsupported tag]) : unit)

*)
  method removeAllToolTips =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeAllToolTips")[])
       : unit)
  method viewWillStartLiveResize =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewWillStartLiveResize")[])
       : unit)
  method viewDidEndLiveResize =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "viewDidEndLiveResize")[])
       : unit)
  method inLiveResize =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "inLiveResize")[])
       : bool)
  method preservesContentDuringLiveResize =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "preservesContentDuringLiveResize")[])
       : bool)
(*  UNSUPPORTED
  method rectPreservedDuringLiveResize =
    ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported self#repr (Selector.find "rectPreservedDuringLiveResize")[])
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
  method getRectsExposedDuringLiveResize  ~count:(count : [`int] Objc.t ) (exposedRects : (*array of NSRect*) unsupported) =
    let sel, args = (
      Objc.arg exposedRects "getRectsExposedDuringLiveResize" (*array of NSRect*) unsupported
      ++ Objc.arg count "count" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end