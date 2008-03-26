(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSView *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithFrame (frameRect : NSRect.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithFrame:")
      [make_rect frameRect]) : [`NSObject] Objc.id)
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
  method getRectsBeingDrawn_count  (rects : (*pointer to pointer to const NSRect*) unsupported) (count : [`int] Objc.t) =
    let sel, args = (
      Objc.arg rects "getRectsBeingDrawn" (*pointer to pointer to const NSRect*) unsupported
      ++ Objc.arg count "count" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
  method needsToDrawRect (aRect : NSRect.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "needsToDrawRect:")
      [make_rect aRect]) : bool)
  method wantsDefaultClipping =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "wantsDefaultClipping")[])
       : bool)
  method addSubview (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "addSubview:")
      [make_pointer_from_object aView]) : unit)
  method addSubview_positioned_relativeTo  (aView : [`NSView] Objc.t) (place : int) (otherView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aView "addSubview" make_pointer_from_object
      ++ Objc.arg place "positioned" make_int
      ++ Objc.arg otherView "relativeTo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method sortSubviewsUsingFunction_context  (compare : (*id->id->pointer to void->int*) unsupported) (context : [`void] Objc.t) =
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
  method replaceSubview_with  (oldView : [`NSView] Objc.t) (newView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg oldView "replaceSubview" make_pointer_from_object
      ++ Objc.arg newView "with" make_pointer_from_object
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
  method resizeSubviewsWithOldSize (oldSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resizeSubviewsWithOldSize:")
      [make_size oldSize]) : unit)
  method resizeWithOldSuperviewSize (oldSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resizeWithOldSuperviewSize:")
      [make_size oldSize]) : unit)
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
  method setFrameOrigin (newOrigin : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameOrigin:")
      [make_point newOrigin]) : unit)
  method setFrameSize (newSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameSize:")
      [make_size newSize]) : unit)
  method setFrame (frameRect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrame:")
      [make_rect frameRect]) : unit)
  method frame =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "frame")[])
       : NSRect.t)
  method setFrameRotation (angle : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameRotation:")
      [make_float angle]) : unit)
  method frameRotation =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "frameRotation")[])
       : float)
  method setBoundsOrigin (newOrigin : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBoundsOrigin:")
      [make_point newOrigin]) : unit)
  method setBoundsSize (newSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBoundsSize:")
      [make_size newSize]) : unit)
  method setBoundsRotation (angle : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBoundsRotation:")
      [make_float angle]) : unit)
  method boundsRotation =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "boundsRotation")[])
       : float)
  method translateOriginToPoint (translation : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "translateOriginToPoint:")
      [make_point translation]) : unit)
  method scaleUnitSquareToSize (newUnitSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scaleUnitSquareToSize:")
      [make_size newUnitSize]) : unit)
  method rotateByAngle (angle : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "rotateByAngle:")
      [make_float angle]) : unit)
  method setBounds (aRect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBounds:")
      [make_rect aRect]) : unit)
  method bounds =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "bounds")[])
       : NSRect.t)
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
  method convertPoint_fromView  (aPoint : NSPoint.t) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aPoint "convertPoint" make_point
      ++ Objc.arg aView "fromView" make_pointer_from_object
    ) ([],[]) in
      (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find_list sel) args)
       : NSPoint.t)
  method convertPoint_toView  (aPoint : NSPoint.t) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aPoint "convertPoint" make_point
      ++ Objc.arg aView "toView" make_pointer_from_object
    ) ([],[]) in
      (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find_list sel) args)
       : NSPoint.t)
  method convertSize_fromView  (aSize : NSSize.t) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aSize "convertSize" make_size
      ++ Objc.arg aView "fromView" make_pointer_from_object
    ) ([],[]) in
      (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find_list sel) args)
       : NSSize.t)
  method convertSize_toView  (aSize : NSSize.t) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aSize "convertSize" make_size
      ++ Objc.arg aView "toView" make_pointer_from_object
    ) ([],[]) in
      (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find_list sel) args)
       : NSSize.t)
  method convertRect_fromView  (aRect : NSRect.t) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aRect "convertRect" make_rect
      ++ Objc.arg aView "fromView" make_pointer_from_object
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method convertRect_toView  (aRect : NSRect.t) (aView : [`NSView] Objc.t) =
    let sel, args = (
      Objc.arg aRect "convertRect" make_rect
      ++ Objc.arg aView "toView" make_pointer_from_object
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method centerScanRect (aRect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "centerScanRect:")
      [make_rect aRect]) : NSRect.t)
  method canDraw =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canDraw")[])
       : bool)
  method setNeedsDisplay (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsDisplay:")
      [make_bool flag]) : unit)
  method setNeedsDisplayInRect (invalidRect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setNeedsDisplayInRect:")
      [make_rect invalidRect]) : unit)
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
  method visibleRect =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "visibleRect")[])
       : NSRect.t)
  method display =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "display")[])
       : unit)
  method displayIfNeeded =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeeded")[])
       : unit)
  method displayIfNeededIgnoringOpacity =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeededIgnoringOpacity")[])
       : unit)
  method displayRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayRect:")
      [make_rect rect]) : unit)
  method displayIfNeededInRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeededInRect:")
      [make_rect rect]) : unit)
  method displayRectIgnoringOpacity (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayRectIgnoringOpacity:")
      [make_rect rect]) : unit)
  method displayIfNeededInRectIgnoringOpacity (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeededInRectIgnoringOpacity:")
      [make_rect rect]) : unit)
  method drawRect (rect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "drawRect:")
      [make_rect rect]) : unit)
  method displayRectIgnoringOpacity_inContext  (aRect : NSRect.t) (context : [`NSGraphicsContext] Objc.t) =
    let sel, args = (
      Objc.arg aRect "displayRectIgnoringOpacity" make_rect
      ++ Objc.arg context "inContext" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method bitmapImageRepForCachingDisplayInRect (rect : NSRect.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "bitmapImageRepForCachingDisplayInRect:")
      [make_rect rect]) : [`NSBitmapImageRep] Objc.id))
  method cacheDisplayInRect_toBitmapImageRep  (rect : NSRect.t) (bitmapImageRep : [`NSBitmapImageRep] Objc.t) =
    let sel, args = (
      Objc.arg rect "cacheDisplayInRect" make_rect
      ++ Objc.arg bitmapImageRep "toBitmapImageRep" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
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
  method scrollPoint (aPoint : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "scrollPoint:")
      [make_point aPoint]) : unit)
  method scrollRectToVisible (aRect : NSRect.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "scrollRectToVisible:")
      [make_rect aRect]) : bool)
  method autoscroll (theEvent : [`NSEvent] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "autoscroll:")
      [make_pointer_from_object theEvent]) : bool)
  method adjustScroll (newVisible : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "adjustScroll:")
      [make_rect newVisible]) : NSRect.t)
  method scrollRect_by  (aRect : NSRect.t) (delta : NSSize.t) =
    let sel, args = (
      Objc.arg aRect "scrollRect" make_rect
      ++ Objc.arg delta "by" make_size
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method hitTest (aPoint : NSPoint.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "hitTest:")
      [make_point aPoint]) : [`NSView] Objc.id))
  method mouse_inRect  (aPoint : NSPoint.t) (aRect : NSRect.t) =
    let sel, args = (
      Objc.arg aPoint "mouse" make_point
      ++ Objc.arg aRect "inRect" make_rect
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
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
  method addCursorRect_cursor  (aRect : NSRect.t) (anObj : [`NSCursor] Objc.t) =
    let sel, args = (
      Objc.arg aRect "addCursorRect" make_rect
      ++ Objc.arg anObj "cursor" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeCursorRect_cursor  (aRect : NSRect.t) (anObj : [`NSCursor] Objc.t) =
    let sel, args = (
      Objc.arg aRect "removeCursorRect" make_rect
      ++ Objc.arg anObj "cursor" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method discardCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "discardCursorRects")[])
       : unit)
  method resetCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resetCursorRects")[])
       : unit)
(*  UNSUPPORTED
  method addTrackingRect_owner_userData_assumeInside  (aRect : NSRect.t) (anObject : [`NSObject] Objc.t) (data : [`void] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg aRect "addTrackingRect" make_rect
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
  method addToolTipRect_owner_userData  (aRect : NSRect.t) (anObject : [`NSObject] Objc.t) (data : [`void] Objc.t) =
    let sel, args = (
      Objc.arg aRect "addToolTipRect" make_rect
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
  method rectPreservedDuringLiveResize =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "rectPreservedDuringLiveResize")[])
       : NSRect.t)
(*  UNSUPPORTED
  method getRectsExposedDuringLiveResize_count  (exposedRects : (*array of NSRect*) unsupported) (count : [`int] Objc.t) =
    let sel, args = (
      Objc.arg exposedRects "getRectsExposedDuringLiveResize" (*array of NSRect*) unsupported
      ++ Objc.arg count "count" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)

*)
end
