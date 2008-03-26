(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSWindow *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method frameRectForContentRect (contentRect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "frameRectForContentRect:")
      [make_rect contentRect]) : NSRect.t)
  method contentRectForFrameRect (frameRect : NSRect.t) =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "contentRectForFrameRect:")
      [make_rect frameRect]) : NSRect.t)
  method initWithContentRect_styleMask_backing_defer  (contentRect : NSRect.t) (aStyle : int) (bufferingType : int) (flag : bool) =
    let sel, args = (
      Objc.arg contentRect "initWithContentRect" make_rect
      ++ Objc.arg aStyle "styleMask" make_int
      ++ Objc.arg bufferingType "backing" make_int
      ++ Objc.arg flag "defer" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentRect_styleMask_backing_defer_screen  (contentRect : NSRect.t) (aStyle : int) (bufferingType : int) (flag : bool) (screen : [`NSScreen] Objc.t) =
    let sel, args = (
      Objc.arg contentRect "initWithContentRect" make_rect
      ++ Objc.arg aStyle "styleMask" make_int
      ++ Objc.arg bufferingType "backing" make_int
      ++ Objc.arg flag "defer" make_bool
      ++ Objc.arg screen "screen" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method title =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "title")[])
       : [`NSString] Objc.id))
  method setTitle (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitle:")
      [make_pointer_from_object aString]) : unit)
  method representedFilename =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "representedFilename")[])
       : [`NSString] Objc.id))
  method setRepresentedFilename (aString : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setRepresentedFilename:")
      [make_pointer_from_object aString]) : unit)
  method setTitleWithRepresentedFilename (filename : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTitleWithRepresentedFilename:")
      [make_pointer_from_object filename]) : unit)
  method setExcludedFromWindowsMenu (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setExcludedFromWindowsMenu:")
      [make_bool flag]) : unit)
  method isExcludedFromWindowsMenu =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isExcludedFromWindowsMenu")[])
       : bool)
  method setContentView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentView:")
      [make_pointer_from_object aView]) : unit)
  method contentView =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "contentView")[])
       : [`NSObject] Objc.id)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method windowNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "windowNumber")[])
       : int)
  method styleMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "styleMask")[])
       : int)
  method fieldEditor_forObject  (createFlag : bool) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg createFlag "fieldEditor" make_bool
      ++ Objc.arg anObject "forObject" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSText] Objc.id))
  method endEditingFor (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endEditingFor:")
      [make_pointer_from_object anObject]) : unit)
  method constrainFrameRect_toScreen  (frameRect : NSRect.t) (screen : [`NSScreen] Objc.t) =
    let sel, args = (
      Objc.arg frameRect "constrainFrameRect" make_rect
      ++ Objc.arg screen "toScreen" make_pointer_from_object
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find_list sel) args)
       : NSRect.t)
  method setFrame_display  (frameRect : NSRect.t) (flag : bool) =
    let sel, args = (
      Objc.arg frameRect "setFrame" make_rect
      ++ Objc.arg flag "display" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setContentSize (aSize : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentSize:")
      [make_size aSize]) : unit)
  method setFrameOrigin (aPoint : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameOrigin:")
      [make_point aPoint]) : unit)
  method setFrameTopLeftPoint (aPoint : NSPoint.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameTopLeftPoint:")
      [make_point aPoint]) : unit)
  method cascadeTopLeftFromPoint (topLeftPoint : NSPoint.t) =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "cascadeTopLeftFromPoint:")
      [make_point topLeftPoint]) : NSPoint.t)
  method frame =
    (get_rect (Objc.invoke Objc.tag_nsrect self#repr (Selector.find "frame")[])
       : NSRect.t)
  method animationResizeTime (newFrame : NSRect.t) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "animationResizeTime:")
      [make_rect newFrame]) : float)
  method setFrame_display_animate  (frameRect : NSRect.t) (displayFlag : bool) (animateFlag : bool) =
    let sel, args = (
      Objc.arg frameRect "setFrame" make_rect
      ++ Objc.arg displayFlag "display" make_bool
      ++ Objc.arg animateFlag "animate" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method setShowsResizeIndicator (show : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShowsResizeIndicator:")
      [make_bool show]) : unit)
  method showsResizeIndicator =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "showsResizeIndicator")[])
       : bool)
  method setResizeIncrements (increments : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setResizeIncrements:")
      [make_size increments]) : unit)
  method resizeIncrements =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "resizeIncrements")[])
       : NSSize.t)
  method setAspectRatio (ratio : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAspectRatio:")
      [make_size ratio]) : unit)
  method aspectRatio =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "aspectRatio")[])
       : NSSize.t)
  method setContentResizeIncrements (increments : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentResizeIncrements:")
      [make_size increments]) : unit)
  method contentResizeIncrements =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "contentResizeIncrements")[])
       : NSSize.t)
  method setContentAspectRatio (ratio : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentAspectRatio:")
      [make_size ratio]) : unit)
  method contentAspectRatio =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "contentAspectRatio")[])
       : NSSize.t)
  method useOptimizedDrawing (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "useOptimizedDrawing:")
      [make_bool flag]) : unit)
  method disableFlushWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "disableFlushWindow")[])
       : unit)
  method enableFlushWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "enableFlushWindow")[])
       : unit)
  method isFlushWindowDisabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isFlushWindowDisabled")[])
       : bool)
  method flushWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "flushWindow")[])
       : unit)
  method flushWindowIfNeeded =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "flushWindowIfNeeded")[])
       : unit)
  method setViewsNeedDisplay (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setViewsNeedDisplay:")
      [make_bool flag]) : unit)
  method viewsNeedDisplay =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "viewsNeedDisplay")[])
       : bool)
  method displayIfNeeded =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "displayIfNeeded")[])
       : unit)
  method display =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "display")[])
       : unit)
  method setAutodisplay (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAutodisplay:")
      [make_bool flag]) : unit)
  method isAutodisplay =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isAutodisplay")[])
       : bool)
  method preservesContentDuringLiveResize =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "preservesContentDuringLiveResize")[])
       : bool)
  method setPreservesContentDuringLiveResize (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPreservesContentDuringLiveResize:")
      [make_bool flag]) : unit)
  method update =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "update")[])
       : unit)
  method makeFirstResponder (aResponder : [`NSResponder] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "makeFirstResponder:")
      [make_pointer_from_object aResponder]) : bool)
  method firstResponder =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "firstResponder")[])
       : [`NSResponder] Objc.id))
  method resizeFlags =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "resizeFlags")[])
       : int)
  method keyDown (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "keyDown:")
      [make_pointer_from_object theEvent]) : unit)
  method close =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "close")[])
       : unit)
  method setReleasedWhenClosed (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setReleasedWhenClosed:")
      [make_bool flag]) : unit)
  method isReleasedWhenClosed =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isReleasedWhenClosed")[])
       : bool)
  method miniaturize (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "miniaturize:")
      [make_pointer_from_object sender]) : unit)
  method deminiaturize (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deminiaturize:")
      [make_pointer_from_object sender]) : unit)
  method isZoomed =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isZoomed")[])
       : bool)
  method zoom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "zoom:")
      [make_pointer_from_object sender]) : unit)
  method isMiniaturized =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isMiniaturized")[])
       : bool)
  method tryToPerform_with  (anAction : selector) (anObject : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg anAction "tryToPerform" make_selector
      ++ Objc.arg anObject "with" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method validRequestorForSendType_returnType  (sendType : [`NSString] Objc.t) (returnType : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sendType "validRequestorForSendType" make_pointer_from_object
      ++ Objc.arg returnType "returnType" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object color]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
  method setMovableByWindowBackground (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMovableByWindowBackground:")
      [make_bool flag]) : unit)
  method isMovableByWindowBackground =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isMovableByWindowBackground")[])
       : bool)
  method setHidesOnDeactivate (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHidesOnDeactivate:")
      [make_bool flag]) : unit)
  method hidesOnDeactivate =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hidesOnDeactivate")[])
       : bool)
  method setCanHide (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCanHide:")
      [make_bool flag]) : unit)
  method canHide =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canHide")[])
       : bool)
  method center =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "center")[])
       : unit)
  method makeKeyAndOrderFront (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "makeKeyAndOrderFront:")
      [make_pointer_from_object sender]) : unit)
  method orderFront (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFront:")
      [make_pointer_from_object sender]) : unit)
  method orderBack (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderBack:")
      [make_pointer_from_object sender]) : unit)
  method orderOut (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderOut:")
      [make_pointer_from_object sender]) : unit)
  method orderWindow_relativeTo  (place : int) (otherWin : int) =
    let sel, args = (
      Objc.arg place "orderWindow" make_int
      ++ Objc.arg otherWin "relativeTo" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method orderFrontRegardless =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontRegardless")[])
       : unit)
  method setMiniwindowImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMiniwindowImage:")
      [make_pointer_from_object image]) : unit)
  method setMiniwindowTitle (title : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMiniwindowTitle:")
      [make_pointer_from_object title]) : unit)
  method miniwindowImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "miniwindowImage")[])
       : [`NSImage] Objc.id))
  method miniwindowTitle =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "miniwindowTitle")[])
       : [`NSString] Objc.id))
  method setDocumentEdited (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDocumentEdited:")
      [make_bool flag]) : unit)
  method isDocumentEdited =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDocumentEdited")[])
       : bool)
  method isVisible =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isVisible")[])
       : bool)
  method isKeyWindow =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isKeyWindow")[])
       : bool)
  method isMainWindow =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isMainWindow")[])
       : bool)
  method canBecomeKeyWindow =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canBecomeKeyWindow")[])
       : bool)
  method canBecomeMainWindow =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canBecomeMainWindow")[])
       : bool)
  method makeKeyWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "makeKeyWindow")[])
       : unit)
  method makeMainWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "makeMainWindow")[])
       : unit)
  method becomeKeyWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "becomeKeyWindow")[])
       : unit)
  method resignKeyWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resignKeyWindow")[])
       : unit)
  method becomeMainWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "becomeMainWindow")[])
       : unit)
  method resignMainWindow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resignMainWindow")[])
       : unit)
  method worksWhenModal =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "worksWhenModal")[])
       : bool)
  method convertBaseToScreen (aPoint : NSPoint.t) =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "convertBaseToScreen:")
      [make_point aPoint]) : NSPoint.t)
  method convertScreenToBase (aPoint : NSPoint.t) =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "convertScreenToBase:")
      [make_point aPoint]) : NSPoint.t)
  method performClose (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performClose:")
      [make_pointer_from_object sender]) : unit)
  method performMiniaturize (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performMiniaturize:")
      [make_pointer_from_object sender]) : unit)
  method performZoom (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "performZoom:")
      [make_pointer_from_object sender]) : unit)
  method gState =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "gState")[])
       : int)
  method setOneShot (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOneShot:")
      [make_bool flag]) : unit)
  method isOneShot =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOneShot")[])
       : bool)
  method dataWithEPSInsideRect (rect : NSRect.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataWithEPSInsideRect:")
      [make_rect rect]) : [`NSData] Objc.id))
  method dataWithPDFInsideRect (rect : NSRect.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dataWithPDFInsideRect:")
      [make_rect rect]) : [`NSData] Objc.id))
  method print (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "print:")
      [make_pointer_from_object sender]) : unit)
  method disableCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "disableCursorRects")[])
       : unit)
  method enableCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "enableCursorRects")[])
       : unit)
  method discardCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "discardCursorRects")[])
       : unit)
  method areCursorRectsEnabled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "areCursorRectsEnabled")[])
       : bool)
  method invalidateCursorRectsForView (aView : [`NSView] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invalidateCursorRectsForView:")
      [make_pointer_from_object aView]) : unit)
  method resetCursorRects =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resetCursorRects")[])
       : unit)
  method setAllowsToolTipsWhenApplicationIsInactive (allowWhenInactive : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAllowsToolTipsWhenApplicationIsInactive:")
      [make_bool allowWhenInactive]) : unit)
  method allowsToolTipsWhenApplicationIsInactive =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsToolTipsWhenApplicationIsInactive")[])
       : bool)
  method setBackingType (bufferingType : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackingType:")
      [make_int bufferingType]) : unit)
  method backingType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "backingType")[])
       : int)
  method setLevel (newLevel : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLevel:")
      [make_int newLevel]) : unit)
  method level =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "level")[])
       : int)
  method setDepthLimit (limit : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDepthLimit:")
      [make_int limit]) : unit)
  method depthLimit =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "depthLimit")[])
       : int)
  method setDynamicDepthLimit (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDynamicDepthLimit:")
      [make_bool flag]) : unit)
  method hasDynamicDepthLimit =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasDynamicDepthLimit")[])
       : bool)
  method screen =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "screen")[])
       : [`NSScreen] Objc.id))
  method deepestScreen =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "deepestScreen")[])
       : [`NSScreen] Objc.id))
  method canStoreColor =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "canStoreColor")[])
       : bool)
  method setHasShadow (hasShadow : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHasShadow:")
      [make_bool hasShadow]) : unit)
  method hasShadow =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasShadow")[])
       : bool)
  method invalidateShadow =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "invalidateShadow")[])
       : unit)
  method setAlphaValue (windowAlpha : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAlphaValue:")
      [make_float windowAlpha]) : unit)
  method alphaValue =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "alphaValue")[])
       : float)
  method setOpaque (isOpaque : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setOpaque:")
      [make_bool isOpaque]) : unit)
  method isOpaque =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isOpaque")[])
       : bool)
  method displaysWhenScreenProfileChanges =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "displaysWhenScreenProfileChanges")[])
       : bool)
  method setDisplaysWhenScreenProfileChanges (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDisplaysWhenScreenProfileChanges:")
      [make_bool flag]) : unit)
  method disableScreenUpdatesUntilFlush =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "disableScreenUpdatesUntilFlush")[])
       : unit)
  method stringWithSavedFrame =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringWithSavedFrame")[])
       : [`NSString] Objc.id))
  method setFrameFromString (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFrameFromString:")
      [make_pointer_from_object string]) : unit)
  method saveFrameUsingName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "saveFrameUsingName:")
      [make_pointer_from_object name]) : unit)
  method setFrameUsingName_force  (name : [`NSString] Objc.t) (force : bool) =
    let sel, args = (
      Objc.arg name "setFrameUsingName" make_pointer_from_object
      ++ Objc.arg force "force" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method setFrameUsingName (name : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setFrameUsingName:")
      [make_pointer_from_object name]) : bool)
  method setFrameAutosaveName (name : [`NSString] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "setFrameAutosaveName:")
      [make_pointer_from_object name]) : bool)
  method frameAutosaveName =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "frameAutosaveName")[])
       : [`NSString] Objc.id))
  method cacheImageInRect (aRect : NSRect.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cacheImageInRect:")
      [make_rect aRect]) : unit)
  method restoreCachedImage =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "restoreCachedImage")[])
       : unit)
  method discardCachedImage =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "discardCachedImage")[])
       : unit)
  method minSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "minSize")[])
       : NSSize.t)
  method maxSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "maxSize")[])
       : NSSize.t)
  method setMinSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinSize:")
      [make_size size]) : unit)
  method setMaxSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxSize:")
      [make_size size]) : unit)
  method contentMinSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "contentMinSize")[])
       : NSSize.t)
  method contentMaxSize =
    (get_size (Objc.invoke Objc.tag_nssize self#repr (Selector.find "contentMaxSize")[])
       : NSSize.t)
  method setContentMinSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentMinSize:")
      [make_size size]) : unit)
  method setContentMaxSize (size : NSSize.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setContentMaxSize:")
      [make_size size]) : unit)
  method nextEventMatchingMask (mask : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "nextEventMatchingMask:")
      [make_int mask]) : [`NSEvent] Objc.id))
  method nextEventMatchingMask_untilDate_inMode_dequeue  (mask : int) (expiration : [`NSDate] Objc.t) (mode : [`NSString] Objc.t) (deqFlag : bool) =
    let sel, args = (
      Objc.arg mask "nextEventMatchingMask" make_int
      ++ Objc.arg expiration "untilDate" make_pointer_from_object
      ++ Objc.arg mode "inMode" make_pointer_from_object
      ++ Objc.arg deqFlag "dequeue" make_bool
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSEvent] Objc.id))
  method discardEventsMatchingMask_beforeEvent  (mask : int) (lastEvent : [`NSEvent] Objc.t) =
    let sel, args = (
      Objc.arg mask "discardEventsMatchingMask" make_int
      ++ Objc.arg lastEvent "beforeEvent" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postEvent_atStart  (event : [`NSEvent] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg event "postEvent" make_pointer_from_object
      ++ Objc.arg flag "atStart" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method currentEvent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentEvent")[])
       : [`NSEvent] Objc.id))
  method setAcceptsMouseMovedEvents (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAcceptsMouseMovedEvents:")
      [make_bool flag]) : unit)
  method acceptsMouseMovedEvents =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "acceptsMouseMovedEvents")[])
       : bool)
  method setIgnoresMouseEvents (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setIgnoresMouseEvents:")
      [make_bool flag]) : unit)
  method ignoresMouseEvents =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "ignoresMouseEvents")[])
       : bool)
  method deviceDescription =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "deviceDescription")[])
       : [`NSDictionary] Objc.id))
  method sendEvent (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sendEvent:")
      [make_pointer_from_object theEvent]) : unit)
  method mouseLocationOutsideOfEventStream =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "mouseLocationOutsideOfEventStream")[])
       : NSPoint.t)
  method windowController =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowController")[])
       : [`NSObject] Objc.id)
  method setWindowController (windowController : [`NSWindowController] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWindowController:")
      [make_pointer_from_object windowController]) : unit)
  method isSheet =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isSheet")[])
       : bool)
  method attachedSheet =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "attachedSheet")[])
       : [`NSWindow] Objc.id))
  method standardWindowButton (b : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "standardWindowButton:")
      [make_int b]) : [`NSButton] Objc.id))
  method addChildWindow_ordered  (childWin : [`NSWindow] Objc.t) (place : int) =
    let sel, args = (
      Objc.arg childWin "addChildWindow" make_pointer_from_object
      ++ Objc.arg place "ordered" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeChildWindow (childWin : [`NSWindow] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "removeChildWindow:")
      [make_pointer_from_object childWin]) : unit)
  method childWindows =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "childWindows")[])
       : [`NSArray] Objc.id))
  method parentWindow =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "parentWindow")[])
       : [`NSWindow] Objc.id))
  method setParentWindow (window : [`NSWindow] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setParentWindow:")
      [make_pointer_from_object window]) : unit)
  method graphicsContext =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "graphicsContext")[])
       : [`NSGraphicsContext] Objc.id))
  method userSpaceScaleFactor =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "userSpaceScaleFactor")[])
       : float)
end
