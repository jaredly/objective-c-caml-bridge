(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSGeometry
open NSResponder
open NSGraphics
open NSDate


external init : unit -> unit = "caml_init_NSWindow"
let _ = init()
(* ENUMS *)
let _NSBorderlessWindowMask = 0L
let _NSTitledWindowMask = 1L
let _NSClosableWindowMask = 2L
let _NSMiniaturizableWindowMask = 4L
let _NSResizableWindowMask = 8L
let _NSTexturedBackgroundWindowMask = 256L
let _NSUnscaledWindowMask = 2048L
let _NSUnifiedTitleAndToolbarWindowMask = 4096L
let _NSDisplayWindowRunLoopOrdering = 600000L
let _NSResetCursorRectsRunLoopOrdering = 700000L


let make_NSResponder_of_NSWindow (o : [`NSWindow] nativeNSObject) = (Obj.magic o : [`NSResponder] nativeNSObject)
(* Class object for NSWindow *)
let class_NSWindow = object
   val repr = Classes.find "NSWindow"
   method _new = (Objc.objcnew repr : [`NSWindow] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSWindow] nativeNSObject)
(* methods for category NSCarbonExtensions *)
(* methods for category NSWindowsExtensions *)
(* methods for category NSDrag *)
(* methods for category NSToolbarSupport *)
(* methods for category NSKeyboardUI *)
(*  UNSUPPORTED
   method frameRectForContentRect  ~styleMask:(aStyle : int ) (cRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg cRect "frameRectForContentRect" (*NSRect*) unsupported
       ++ Objc.arg aStyle "styleMask" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSWindow] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method contentRectForFrameRect  ~styleMask:(aStyle : int ) (fRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg fRect "contentRectForFrameRect" (*NSRect*) unsupported
       ++ Objc.arg aStyle "styleMask" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSWindow] Objc.nativeNSObject)

*)
   method minFrameWidthWithTitle  ~styleMask:(aStyle : int ) (aTitle : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg aTitle "minFrameWidthWithTitle" make_pointer_from_object
       ++ Objc.arg aStyle "styleMask" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSWindow] Objc.nativeNSObject)
   method defaultDepthLimit =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultDepthLimit:")[]) : [`NSWindow] Objc.nativeNSObject)
   method removeFrameUsingName (name : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "removeFrameUsingName:")[make_pointer_from_object name]) : [`NSWindow] Objc.nativeNSObject)
   method menuChanged (menu : [`NSMenu] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menuChanged:")[make_pointer_from_object menu]) : [`NSWindow] Objc.nativeNSObject)
   method standardWindowButton  ~forStyleMask:(styleMask : int ) (b : int) =
     let sel, args = (
       Objc.arg b "standardWindowButton" make_int
       ++ Objc.arg styleMask "forStyleMask" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSButton] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSWindow *)
class native_NSWindow = fun (o : [`NSWindow] nativeNSObject) -> object (self)
   inherit native_NSResponder (make_NSResponder_of_NSWindow o) as super
(* methods for category NSCarbonExtensions *)
   method initWithWindowRef (windowRef : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithWindowRef:")[make_pointer_from_object windowRef]) : [`NSWindow] Objc.nativeNSObject)
   method windowRef =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowRef:")[]) : [`void] Objc.nativeNSObject)
(* methods for category NSWindowsExtensions *)
   method windowHandle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowHandle:")[]) : [`void] Objc.nativeNSObject)
(* methods for category NSDrag *)
(*  UNSUPPORTED
   method dragImage  ~at:(baseLocation : (*NSPoint*) unsupported ) ~offset:(initialOffset : (*NSSize*) unsupported ) ~event:(event : [`NSEvent] Objc.t ) ~pasteboard:(pboard : [`NSPasteboard] Objc.t ) ~source:(sourceObj : [`NSObject] Objc.t ) ~slideBack:(slideFlag : bool ) (anImage : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg anImage "dragImage" make_pointer_from_object
       ++ Objc.arg baseLocation "at" (*NSPoint*) unsupported
       ++ Objc.arg initialOffset "offset" (*NSSize*) unsupported
       ++ Objc.arg event "event" make_pointer_from_object
       ++ Objc.arg pboard "pasteboard" make_pointer_from_object
       ++ Objc.arg sourceObj "source" make_pointer_from_object
       ++ Objc.arg slideFlag "slideBack" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method registerForDraggedTypes (newTypes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "registerForDraggedTypes:")[make_pointer_from_object newTypes]) : unit)
   method unregisterDraggedTypes =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unregisterDraggedTypes:")[]) : unit)
(* methods for category NSToolbarSupport *)
   method setToolbar (toolbar : [`NSToolbar] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setToolbar:")[make_pointer_from_object toolbar]) : unit)
   method toolbar =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolbar:")[]) : [`NSToolbar] Objc.nativeNSObject)
   method toggleToolbarShown (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "toggleToolbarShown:")[make_pointer_from_object sender]) : unit)
   method runToolbarCustomizationPalette (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "runToolbarCustomizationPalette:")[make_pointer_from_object sender]) : unit)
   method setShowsToolbarButton (show : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShowsToolbarButton:")[make_bool show]) : unit)
   method showsToolbarButton =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "showsToolbarButton:")[]) : bool)
(* methods for category NSKeyboardUI *)
   method setInitialFirstResponder (view : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setInitialFirstResponder:")[make_pointer_from_object view]) : unit)
   method initialFirstResponder =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initialFirstResponder:")[]) : [`NSView] Objc.nativeNSObject)
   method selectNextKeyView (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectNextKeyView:")[make_pointer_from_object sender]) : unit)
   method selectPreviousKeyView (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectPreviousKeyView:")[make_pointer_from_object sender]) : unit)
   method selectKeyViewFollowingView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectKeyViewFollowingView:")[make_pointer_from_object aView]) : unit)
   method selectKeyViewPrecedingView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "selectKeyViewPrecedingView:")[make_pointer_from_object aView]) : unit)
   method keyViewSelectionDirection =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "keyViewSelectionDirection:")[]) : int)
   method setDefaultButtonCell (defButt : [`NSButtonCell] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDefaultButtonCell:")[make_pointer_from_object defButt]) : unit)
   method defaultButtonCell =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultButtonCell:")[]) : [`NSButtonCell] Objc.nativeNSObject)
   method disableKeyEquivalentForDefaultButtonCell =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "disableKeyEquivalentForDefaultButtonCell:")[]) : unit)
   method enableKeyEquivalentForDefaultButtonCell =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "enableKeyEquivalentForDefaultButtonCell:")[]) : unit)
   method setAutorecalculatesKeyViewLoop (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutorecalculatesKeyViewLoop:")[make_bool flag]) : unit)
   method autorecalculatesKeyViewLoop =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autorecalculatesKeyViewLoop:")[]) : bool)
   method recalculateKeyViewLoop =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "recalculateKeyViewLoop:")[]) : unit)
(*  UNSUPPORTED
   method frameRectForContentRect (contentRect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "frameRectForContentRect:")[(*NSRect*) unsupported contentRect]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method contentRectForFrameRect (frameRect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "contentRectForFrameRect:")[(*NSRect*) unsupported frameRect]) : (*NSRect*) unsupported)

*)
   (* skipping selector initWithContentRect:styleMask:backing:defer *)
(*  UNSUPPORTED
   method initWithContentRect  ~styleMask:(aStyle : int ) ~backing:(bufferingType : int ) ~defer:(flag : bool ) ?screen:(screen : [`NSScreen] Objc.t option) (contentRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg contentRect "initWithContentRect" (*NSRect*) unsupported
       ++ Objc.arg aStyle "styleMask" make_int
       ++ Objc.arg bufferingType "backing" make_int
       ++ Objc.arg flag "defer" make_bool
       ++ Objc.opt_arg screen "screen" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)

*)
   method title =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "title:")[]) : [`NSString] Objc.nativeNSObject)
   method setTitle (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitle:")[make_pointer_from_object aString]) : unit)
   method representedFilename =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "representedFilename:")[]) : [`NSString] Objc.nativeNSObject)
   method setRepresentedFilename (aString : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setRepresentedFilename:")[make_pointer_from_object aString]) : unit)
   method setTitleWithRepresentedFilename (filename : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTitleWithRepresentedFilename:")[make_pointer_from_object filename]) : unit)
   method setExcludedFromWindowsMenu (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setExcludedFromWindowsMenu:")[make_bool flag]) : unit)
   method isExcludedFromWindowsMenu =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isExcludedFromWindowsMenu:")[]) : bool)
   method setContentView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentView:")[make_pointer_from_object aView]) : unit)
   method contentView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "contentView:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method windowNumber =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "windowNumber:")[]) : int)
   method styleMask =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "styleMask:")[]) : int)
   method fieldEditor  ~forObject:(anObject : [`NSObject] Objc.t ) (createFlag : bool) =
     let sel, args = (
       Objc.arg createFlag "fieldEditor" make_bool
       ++ Objc.arg anObject "forObject" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSText] Objc.nativeNSObject)
   method endEditingFor (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "endEditingFor:")[make_pointer_from_object anObject]) : unit)
(*  UNSUPPORTED
   method constrainFrameRect  ~toScreen:(screen : [`NSScreen] Objc.t ) (frameRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg frameRect "constrainFrameRect" (*NSRect*) unsupported
       ++ Objc.arg screen "toScreen" make_pointer_from_object
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
   (* skipping selector setFrame:display *)
(*  UNSUPPORTED
   method setContentSize (aSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentSize:")[(*NSSize*) unsupported aSize]) : unit)

*)
(*  UNSUPPORTED
   method setFrameOrigin (aPoint : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFrameOrigin:")[(*NSPoint*) unsupported aPoint]) : unit)

*)
(*  UNSUPPORTED
   method setFrameTopLeftPoint (aPoint : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFrameTopLeftPoint:")[(*NSPoint*) unsupported aPoint]) : unit)

*)
(*  UNSUPPORTED
   method cascadeTopLeftFromPoint (topLeftPoint : (*NSPoint*) unsupported) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "cascadeTopLeftFromPoint:")[(*NSPoint*) unsupported topLeftPoint]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method frame =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "frame:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method animationResizeTime (newFrame : (*NSRect*) unsupported) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "animationResizeTime:")[(*NSRect*) unsupported newFrame]) : float)

*)
(*  UNSUPPORTED
   method setFrame  ~display:(displayFlag : bool ) ?animate:(animateFlag : bool option) (frameRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg frameRect "setFrame" (*NSRect*) unsupported
       ++ Objc.arg displayFlag "display" make_bool
       ++ Objc.opt_arg animateFlag "animate" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method setShowsResizeIndicator (show : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShowsResizeIndicator:")[make_bool show]) : unit)
   method showsResizeIndicator =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "showsResizeIndicator:")[]) : bool)
(*  UNSUPPORTED
   method setResizeIncrements (increments : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setResizeIncrements:")[(*NSSize*) unsupported increments]) : unit)

*)
(*  UNSUPPORTED
   method resizeIncrements =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "resizeIncrements:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setAspectRatio (ratio : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAspectRatio:")[(*NSSize*) unsupported ratio]) : unit)

*)
(*  UNSUPPORTED
   method aspectRatio =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "aspectRatio:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setContentResizeIncrements (increments : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentResizeIncrements:")[(*NSSize*) unsupported increments]) : unit)

*)
(*  UNSUPPORTED
   method contentResizeIncrements =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "contentResizeIncrements:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setContentAspectRatio (ratio : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentAspectRatio:")[(*NSSize*) unsupported ratio]) : unit)

*)
(*  UNSUPPORTED
   method contentAspectRatio =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "contentAspectRatio:")[]) : (*NSSize*) unsupported)

*)
   method useOptimizedDrawing (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "useOptimizedDrawing:")[make_bool flag]) : unit)
   method disableFlushWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "disableFlushWindow:")[]) : unit)
   method enableFlushWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "enableFlushWindow:")[]) : unit)
   method isFlushWindowDisabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFlushWindowDisabled:")[]) : bool)
   method flushWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "flushWindow:")[]) : unit)
   method flushWindowIfNeeded =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "flushWindowIfNeeded:")[]) : unit)
   method setViewsNeedDisplay (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setViewsNeedDisplay:")[make_bool flag]) : unit)
   method viewsNeedDisplay =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "viewsNeedDisplay:")[]) : bool)
   method displayIfNeeded =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "displayIfNeeded:")[]) : unit)
   method display =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "display:")[]) : unit)
   method setAutodisplay (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutodisplay:")[make_bool flag]) : unit)
   method isAutodisplay =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isAutodisplay:")[]) : bool)
   method preservesContentDuringLiveResize =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "preservesContentDuringLiveResize:")[]) : bool)
   method setPreservesContentDuringLiveResize (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPreservesContentDuringLiveResize:")[make_bool flag]) : unit)
   method update =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "update:")[]) : unit)
   method makeFirstResponder (aResponder : [`NSResponder] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "makeFirstResponder:")[make_pointer_from_object aResponder]) : bool)
   method firstResponder =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "firstResponder:")[]) : [`NSResponder] Objc.nativeNSObject)
   method resizeFlags =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "resizeFlags:")[]) : int)
   method keyDown (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "keyDown:")[make_pointer_from_object theEvent]) : unit)
   method close =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "close:")[]) : unit)
   method setReleasedWhenClosed (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setReleasedWhenClosed:")[make_bool flag]) : unit)
   method isReleasedWhenClosed =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isReleasedWhenClosed:")[]) : bool)
   method miniaturize (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "miniaturize:")[make_pointer_from_object sender]) : unit)
   method deminiaturize (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deminiaturize:")[make_pointer_from_object sender]) : unit)
   method isZoomed =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isZoomed:")[]) : bool)
   method zoom (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "zoom:")[make_pointer_from_object sender]) : unit)
   method isMiniaturized =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isMiniaturized:")[]) : bool)
   method tryToPerform  ~l_with:(anObject : [`NSObject] Objc.t ) (anAction : selector) =
     let sel, args = (
       Objc.arg anAction "tryToPerform" make_selector
       ++ Objc.arg anObject "l_with" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method validRequestorForSendType  ~returnType:(returnType : [`NSString] Objc.t ) (sendType : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg sendType "validRequestorForSendType" make_pointer_from_object
       ++ Objc.arg returnType "returnType" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setMovableByWindowBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMovableByWindowBackground:")[make_bool flag]) : unit)
   method isMovableByWindowBackground =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isMovableByWindowBackground:")[]) : bool)
   method setHidesOnDeactivate (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHidesOnDeactivate:")[make_bool flag]) : unit)
   method hidesOnDeactivate =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hidesOnDeactivate:")[]) : bool)
   method setCanHide (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCanHide:")[make_bool flag]) : unit)
   method canHide =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canHide:")[]) : bool)
   method center =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "center:")[]) : unit)
   method makeKeyAndOrderFront (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "makeKeyAndOrderFront:")[make_pointer_from_object sender]) : unit)
   method orderFront (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFront:")[make_pointer_from_object sender]) : unit)
   method orderBack (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderBack:")[make_pointer_from_object sender]) : unit)
   method orderOut (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderOut:")[make_pointer_from_object sender]) : unit)
   method orderWindow  ~relativeTo:(otherWin : int ) (place : int) =
     let sel, args = (
       Objc.arg place "orderWindow" make_int
       ++ Objc.arg otherWin "relativeTo" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method orderFrontRegardless =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontRegardless:")[]) : unit)
   method setMiniwindowImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMiniwindowImage:")[make_pointer_from_object image]) : unit)
   method setMiniwindowTitle (title : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMiniwindowTitle:")[make_pointer_from_object title]) : unit)
   method miniwindowImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "miniwindowImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method miniwindowTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "miniwindowTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method setDocumentEdited (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDocumentEdited:")[make_bool flag]) : unit)
   method isDocumentEdited =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isDocumentEdited:")[]) : bool)
   method isVisible =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isVisible:")[]) : bool)
   method isKeyWindow =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isKeyWindow:")[]) : bool)
   method isMainWindow =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isMainWindow:")[]) : bool)
   method canBecomeKeyWindow =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canBecomeKeyWindow:")[]) : bool)
   method canBecomeMainWindow =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canBecomeMainWindow:")[]) : bool)
   method makeKeyWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "makeKeyWindow:")[]) : unit)
   method makeMainWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "makeMainWindow:")[]) : unit)
   method becomeKeyWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "becomeKeyWindow:")[]) : unit)
   method resignKeyWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resignKeyWindow:")[]) : unit)
   method becomeMainWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "becomeMainWindow:")[]) : unit)
   method resignMainWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resignMainWindow:")[]) : unit)
   method worksWhenModal =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "worksWhenModal:")[]) : bool)
(*  UNSUPPORTED
   method convertBaseToScreen (aPoint : (*NSPoint*) unsupported) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "convertBaseToScreen:")[(*NSPoint*) unsupported aPoint]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method convertScreenToBase (aPoint : (*NSPoint*) unsupported) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "convertScreenToBase:")[(*NSPoint*) unsupported aPoint]) : (*NSPoint*) unsupported)

*)
   method performClose (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "performClose:")[make_pointer_from_object sender]) : unit)
   method performMiniaturize (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "performMiniaturize:")[make_pointer_from_object sender]) : unit)
   method performZoom (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "performZoom:")[make_pointer_from_object sender]) : unit)
   method gState =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "gState:")[]) : int)
   method setOneShot (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOneShot:")[make_bool flag]) : unit)
   method isOneShot =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isOneShot:")[]) : bool)
(*  UNSUPPORTED
   method dataWithEPSInsideRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataWithEPSInsideRect:")[(*NSRect*) unsupported rect]) : [`NSData] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method dataWithPDFInsideRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataWithPDFInsideRect:")[(*NSRect*) unsupported rect]) : [`NSData] Objc.nativeNSObject)

*)
   method print (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "print:")[make_pointer_from_object sender]) : unit)
   method disableCursorRects =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "disableCursorRects:")[]) : unit)
   method enableCursorRects =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "enableCursorRects:")[]) : unit)
   method discardCursorRects =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "discardCursorRects:")[]) : unit)
   method areCursorRectsEnabled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "areCursorRectsEnabled:")[]) : bool)
   method invalidateCursorRectsForView (aView : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "invalidateCursorRectsForView:")[make_pointer_from_object aView]) : unit)
   method resetCursorRects =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resetCursorRects:")[]) : unit)
   method setAllowsToolTipsWhenApplicationIsInactive (allowWhenInactive : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllowsToolTipsWhenApplicationIsInactive:")[make_bool allowWhenInactive]) : unit)
   method allowsToolTipsWhenApplicationIsInactive =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsToolTipsWhenApplicationIsInactive:")[]) : bool)
   method setBackingType (bufferingType : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackingType:")[make_int bufferingType]) : unit)
   method backingType =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "backingType:")[]) : int)
   method setLevel (newLevel : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLevel:")[make_int newLevel]) : unit)
   method level =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "level:")[]) : int)
(*  UNSUPPORTED
   method setDepthLimit (limit : (*NSWindowDepth*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDepthLimit:")[(*NSWindowDepth*) unsupported limit]) : unit)

*)
(*  UNSUPPORTED
   method depthLimit =
     ((*NSWindowDepth*) unsupported (Objc.invoke (*NSWindowDepth*) Objc.tag_unsupported repr (Selector.find "depthLimit:")[]) : (*NSWindowDepth*) unsupported)

*)
   method setDynamicDepthLimit (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDynamicDepthLimit:")[make_bool flag]) : unit)
   method hasDynamicDepthLimit =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasDynamicDepthLimit:")[]) : bool)
   method screen =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "screen:")[]) : [`NSScreen] Objc.nativeNSObject)
   method deepestScreen =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "deepestScreen:")[]) : [`NSScreen] Objc.nativeNSObject)
   method canStoreColor =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canStoreColor:")[]) : bool)
   method setHasShadow (hasShadow : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHasShadow:")[make_bool hasShadow]) : unit)
   method hasShadow =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "hasShadow:")[]) : bool)
   method invalidateShadow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "invalidateShadow:")[]) : unit)
   method setAlphaValue (windowAlpha : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAlphaValue:")[make_float windowAlpha]) : unit)
   method alphaValue =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "alphaValue:")[]) : float)
   method setOpaque (isOpaque : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setOpaque:")[make_bool isOpaque]) : unit)
   method isOpaque =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isOpaque:")[]) : bool)
   method displaysWhenScreenProfileChanges =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "displaysWhenScreenProfileChanges:")[]) : bool)
   method setDisplaysWhenScreenProfileChanges (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDisplaysWhenScreenProfileChanges:")[make_bool flag]) : unit)
   method disableScreenUpdatesUntilFlush =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "disableScreenUpdatesUntilFlush:")[]) : unit)
   method stringWithSavedFrame =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringWithSavedFrame:")[]) : [`NSString] Objc.nativeNSObject)
   method setFrameFromString (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFrameFromString:")[make_pointer_from_object string]) : unit)
   method saveFrameUsingName (name : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "saveFrameUsingName:")[make_pointer_from_object name]) : unit)
   method setFrameUsingName  ?force:(force : bool option) (name : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg name "setFrameUsingName" make_pointer_from_object
       ++ Objc.opt_arg force "force" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   (* skipping selector setFrameUsingName *)
   method setFrameAutosaveName (name : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "setFrameAutosaveName:")[make_pointer_from_object name]) : bool)
   method frameAutosaveName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "frameAutosaveName:")[]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method cacheImageInRect (aRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "cacheImageInRect:")[(*NSRect*) unsupported aRect]) : unit)

*)
   method restoreCachedImage =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "restoreCachedImage:")[]) : unit)
   method discardCachedImage =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "discardCachedImage:")[]) : unit)
(*  UNSUPPORTED
   method minSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "minSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method maxSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "maxSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setMinSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMinSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method setMaxSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaxSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method contentMinSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "contentMinSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method contentMaxSize =
     ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find "contentMaxSize:")[]) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method setContentMinSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentMinSize:")[(*NSSize*) unsupported size]) : unit)

*)
(*  UNSUPPORTED
   method setContentMaxSize (size : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setContentMaxSize:")[(*NSSize*) unsupported size]) : unit)

*)
   (* skipping selector nextEventMatchingMask *)
   method nextEventMatchingMask  ?untilDate:(expiration : [`NSDate] Objc.t option) ?inMode:(mode : [`NSString] Objc.t option) ?dequeue:(deqFlag : bool option) (mask : int) =
     let sel, args = (
       Objc.arg mask "nextEventMatchingMask" make_int
       ++ Objc.opt_arg expiration "untilDate" make_pointer_from_object
       ++ Objc.opt_arg mode "inMode" make_pointer_from_object
       ++ Objc.opt_arg deqFlag "dequeue" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSEvent] Objc.nativeNSObject)
   method discardEventsMatchingMask  ~beforeEvent:(lastEvent : [`NSEvent] Objc.t ) (mask : int) =
     let sel, args = (
       Objc.arg mask "discardEventsMatchingMask" make_int
       ++ Objc.arg lastEvent "beforeEvent" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method postEvent  ~atStart:(flag : bool ) (event : [`NSEvent] Objc.t) =
     let sel, args = (
       Objc.arg event "postEvent" make_pointer_from_object
       ++ Objc.arg flag "atStart" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method currentEvent =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "currentEvent:")[]) : [`NSEvent] Objc.nativeNSObject)
   method setAcceptsMouseMovedEvents (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAcceptsMouseMovedEvents:")[make_bool flag]) : unit)
   method acceptsMouseMovedEvents =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "acceptsMouseMovedEvents:")[]) : bool)
   method setIgnoresMouseEvents (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setIgnoresMouseEvents:")[make_bool flag]) : unit)
   method ignoresMouseEvents =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "ignoresMouseEvents:")[]) : bool)
   method deviceDescription =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "deviceDescription:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method sendEvent (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "sendEvent:")[make_pointer_from_object theEvent]) : unit)
(*  UNSUPPORTED
   method mouseLocationOutsideOfEventStream =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "mouseLocationOutsideOfEventStream:")[]) : (*NSPoint*) unsupported)

*)
   method windowController =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowController:")[]) : [`NSObject] Objc.nativeNSObject)
   method setWindowController (windowController : [`NSWindowController] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWindowController:")[make_pointer_from_object windowController]) : unit)
   method isSheet =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isSheet:")[]) : bool)
   method attachedSheet =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "attachedSheet:")[]) : [`NSWindow] Objc.nativeNSObject)
   method standardWindowButton (b : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "standardWindowButton:")[make_int b]) : [`NSButton] Objc.nativeNSObject)
   method addChildWindow  ~ordered:(place : int ) (childWin : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg childWin "addChildWindow" make_pointer_from_object
       ++ Objc.arg place "ordered" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeChildWindow (childWin : [`NSWindow] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeChildWindow:")[make_pointer_from_object childWin]) : unit)
   method childWindows =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "childWindows:")[]) : [`NSArray] Objc.nativeNSObject)
   method parentWindow =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "parentWindow:")[]) : [`NSWindow] Objc.nativeNSObject)
   method setParentWindow (window : [`NSWindow] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setParentWindow:")[make_pointer_from_object window]) : unit)
   method graphicsContext =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "graphicsContext:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method userSpaceScaleFactor =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "userSpaceScaleFactor:")[]) : float)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSWindowDelegate *)
(* methods for category NSWindowNotifications *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSWindowDelegate *)
   method windowShouldClose (sender : [`NSObject] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "windowShouldClose:")[make_pointer_from_object sender]) : bool)
   method windowWillReturnFieldEditor  ~toObject:(client : [`NSObject] Objc.t ) (sender : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg sender "windowWillReturnFieldEditor" make_pointer_from_object
       ++ Objc.arg client "toObject" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(*  UNSUPPORTED
   method windowWillResize  ~toSize:(frameSize : (*NSSize*) unsupported ) (sender : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg sender "windowWillResize" make_pointer_from_object
       ++ Objc.arg frameSize "toSize" (*NSSize*) unsupported
     ) ([],[]) in
       ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSSize*) unsupported)

*)
(*  UNSUPPORTED
   method windowWillUseStandardFrame  ~defaultFrame:(newFrame : (*NSRect*) unsupported ) (window : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg window "windowWillUseStandardFrame" make_pointer_from_object
       ++ Objc.arg newFrame "defaultFrame" (*NSRect*) unsupported
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method windowShouldZoom  ~toFrame:(newFrame : (*NSRect*) unsupported ) (window : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg window "windowShouldZoom" make_pointer_from_object
       ++ Objc.arg newFrame "toFrame" (*NSRect*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
   method windowWillReturnUndoManager (window : [`NSWindow] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowWillReturnUndoManager:")[make_pointer_from_object window]) : [`NSUndoManager] Objc.nativeNSObject)
(*  UNSUPPORTED
   method window  ~willPositionSheet:(sheet : [`NSWindow] Objc.t ) ~usingRect:(rect : (*NSRect*) unsupported ) (window : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg window "window" make_pointer_from_object
       ++ Objc.arg sheet "willPositionSheet" make_pointer_from_object
       ++ Objc.arg rect "usingRect" (*NSRect*) unsupported
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
(* methods for category NSWindowNotifications *)
   method windowDidResize (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidResize:")[make_pointer_from_object notification]) : unit)
   method windowDidExpose (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidExpose:")[make_pointer_from_object notification]) : unit)
   method windowWillMove (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowWillMove:")[make_pointer_from_object notification]) : unit)
   method windowDidMove (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidMove:")[make_pointer_from_object notification]) : unit)
   method windowDidBecomeKey (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidBecomeKey:")[make_pointer_from_object notification]) : unit)
   method windowDidResignKey (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidResignKey:")[make_pointer_from_object notification]) : unit)
   method windowDidBecomeMain (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidBecomeMain:")[make_pointer_from_object notification]) : unit)
   method windowDidResignMain (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidResignMain:")[make_pointer_from_object notification]) : unit)
   method windowWillClose (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowWillClose:")[make_pointer_from_object notification]) : unit)
   method windowWillMiniaturize (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowWillMiniaturize:")[make_pointer_from_object notification]) : unit)
   method windowDidMiniaturize (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidMiniaturize:")[make_pointer_from_object notification]) : unit)
   method windowDidDeminiaturize (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidDeminiaturize:")[make_pointer_from_object notification]) : unit)
   method windowDidUpdate (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidUpdate:")[make_pointer_from_object notification]) : unit)
   method windowDidChangeScreen (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidChangeScreen:")[make_pointer_from_object notification]) : unit)
   method windowDidChangeScreenProfile (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidChangeScreenProfile:")[make_pointer_from_object notification]) : unit)
   method windowWillBeginSheet (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowWillBeginSheet:")[make_pointer_from_object notification]) : unit)
   method windowDidEndSheet (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "windowDidEndSheet:")[make_pointer_from_object notification]) : unit)
end
