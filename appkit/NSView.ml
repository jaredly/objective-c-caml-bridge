(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSResponder
open NSGeometry
open NSRange
open NSGraphics


external init : unit -> unit = "caml_init_NSView"
let _ = init()
(* ENUMS *)
let _NSViewNotSizable = 0L
let _NSViewMinXMargin = 1L
let _NSViewWidthSizable = 2L
let _NSViewMaxXMargin = 4L
let _NSViewMinYMargin = 8L
let _NSViewHeightSizable = 16L
let _NSViewMaxYMargin = 32L


let make_NSResponder_of_NSView (o : [`NSView] nativeNSObject) = (Obj.magic o : [`NSResponder] nativeNSObject)
(* Class object for NSView *)
let class_NSView = object
   val repr = Classes.find "NSView"
   method _new = (Objc.objcnew repr : [`NSView] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSView] nativeNSObject)
(* methods for category NSDrag *)
(* methods for category NSPrinting *)
(* methods for category NSKeyboardUI *)
   method defaultFocusRingType =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultFocusRingType:")[]) : [`NSView] Objc.nativeNSObject)
   method focusView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "focusView:")[]) : [`NSView] Objc.nativeNSObject)
   method defaultMenu =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultMenu:")[]) : [`NSMenu] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSView *)
class native_NSView = fun (o : [`NSView] nativeNSObject) -> object (self)
   inherit native_NSResponder (make_NSResponder_of_NSView o) as super
(* methods for category NSDrag *)
(*  UNSUPPORTED
   method dragImage  ~at:(viewLocation : (*NSPoint*) unsupported ) ~offset:(initialOffset : (*NSSize*) unsupported ) ~event:(event : [`NSEvent] Objc.t ) ~pasteboard:(pboard : [`NSPasteboard] Objc.t ) ~source:(sourceObj : [`NSObject] Objc.t ) ~slideBack:(slideFlag : bool ) (anImage : [`NSImage] Objc.t) =
     let sel, args = (
       Objc.arg anImage "dragImage" make_pointer_from_object
       ++ Objc.arg viewLocation "at" (*NSPoint*) unsupported
       ++ Objc.arg initialOffset "offset" (*NSSize*) unsupported
       ++ Objc.arg event "event" make_pointer_from_object
       ++ Objc.arg pboard "pasteboard" make_pointer_from_object
       ++ Objc.arg sourceObj "source" make_pointer_from_object
       ++ Objc.arg slideFlag "slideBack" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method registeredDraggedTypes =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "registeredDraggedTypes:")[]) : [`NSArray] Objc.nativeNSObject)
   method registerForDraggedTypes (newTypes : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "registerForDraggedTypes:")[make_pointer_from_object newTypes]) : unit)
   method unregisterDraggedTypes =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unregisterDraggedTypes:")[]) : unit)
(*  UNSUPPORTED
   method dragFile  ~fromRect:(rect : (*NSRect*) unsupported ) ~slideBack:(aFlag : bool ) ~event:(event : [`NSEvent] Objc.t ) (filename : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg filename "dragFile" make_pointer_from_object
       ++ Objc.arg rect "fromRect" (*NSRect*) unsupported
       ++ Objc.arg aFlag "slideBack" make_bool
       ++ Objc.arg event "event" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
(*  UNSUPPORTED
   method dragPromisedFilesOfTypes  ~fromRect:(rect : (*NSRect*) unsupported ) ~source:(sourceObject : [`NSObject] Objc.t ) ~slideBack:(aFlag : bool ) ~event:(event : [`NSEvent] Objc.t ) (typeArray : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg typeArray "dragPromisedFilesOfTypes" make_pointer_from_object
       ++ Objc.arg rect "fromRect" (*NSRect*) unsupported
       ++ Objc.arg sourceObject "source" make_pointer_from_object
       ++ Objc.arg aFlag "slideBack" make_bool
       ++ Objc.arg event "event" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
(* methods for category NSPrinting *)
(*  UNSUPPORTED
   method writeEPSInsideRect  ~toPasteboard:(pasteboard : [`NSPasteboard] Objc.t ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "writeEPSInsideRect" (*NSRect*) unsupported
       ++ Objc.arg pasteboard "toPasteboard" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method dataWithEPSInsideRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataWithEPSInsideRect:")[(*NSRect*) unsupported rect]) : [`NSData] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method writePDFInsideRect  ~toPasteboard:(pasteboard : [`NSPasteboard] Objc.t ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "writePDFInsideRect" (*NSRect*) unsupported
       ++ Objc.arg pasteboard "toPasteboard" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method dataWithPDFInsideRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dataWithPDFInsideRect:")[(*NSRect*) unsupported rect]) : [`NSData] Objc.nativeNSObject)

*)
   method print (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "print:")[make_pointer_from_object sender]) : unit)
(*  UNSUPPORTED
   method knowsPageRange (range : (*NSRangePointer*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "knowsPageRange:")[(*NSRangePointer*) unsupported range]) : bool)

*)
   method heightAdjustLimit =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "heightAdjustLimit:")[]) : float)
   method widthAdjustLimit =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "widthAdjustLimit:")[]) : float)
   method adjustPageWidthNew  ~left:(oldLeft : float ) ~right:(oldRight : float ) ~limit:(rightLimit : float ) (newRight : [`float] Objc.t) =
     let sel, args = (
       Objc.arg newRight "adjustPageWidthNew" make_pointer_from_object
       ++ Objc.arg oldLeft "left" make_float
       ++ Objc.arg oldRight "right" make_float
       ++ Objc.arg rightLimit "limit" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method adjustPageHeightNew  ~top:(oldTop : float ) ~bottom:(oldBottom : float ) ~limit:(bottomLimit : float ) (newBottom : [`float] Objc.t) =
     let sel, args = (
       Objc.arg newBottom "adjustPageHeightNew" make_pointer_from_object
       ++ Objc.arg oldTop "top" make_float
       ++ Objc.arg oldBottom "bottom" make_float
       ++ Objc.arg bottomLimit "limit" make_float
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method rectForPage (page : int) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "rectForPage:")[make_int page]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method locationOfPrintRect (aRect : (*NSRect*) unsupported) =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find "locationOfPrintRect:")[(*NSRect*) unsupported aRect]) : (*NSPoint*) unsupported)

*)
(*  UNSUPPORTED
   method drawPageBorderWithSize (borderSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawPageBorderWithSize:")[(*NSSize*) unsupported borderSize]) : unit)

*)
   method pageHeader =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pageHeader:")[]) : [`NSAttributedString] Objc.nativeNSObject)
   method pageFooter =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "pageFooter:")[]) : [`NSAttributedString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method drawSheetBorderWithSize (borderSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawSheetBorderWithSize:")[(*NSSize*) unsupported borderSize]) : unit)

*)
   method printJobTitle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "printJobTitle:")[]) : [`NSString] Objc.nativeNSObject)
   method beginDocument =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "beginDocument:")[]) : unit)
   method endDocument =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "endDocument:")[]) : unit)
(*  UNSUPPORTED
   method beginPageInRect  ~atPlacement:(location : (*NSPoint*) unsupported ) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "beginPageInRect" (*NSRect*) unsupported
       ++ Objc.arg location "atPlacement" (*NSPoint*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method endPage =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "endPage:")[]) : unit)
(* methods for category NSKeyboardUI *)
   method performMnemonic (theString : [`NSString] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "performMnemonic:")[make_pointer_from_object theString]) : bool)
   method setNextKeyView (next : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNextKeyView:")[make_pointer_from_object next]) : unit)
   method nextKeyView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "nextKeyView:")[]) : [`NSView] Objc.nativeNSObject)
   method previousKeyView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "previousKeyView:")[]) : [`NSView] Objc.nativeNSObject)
   method nextValidKeyView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "nextValidKeyView:")[]) : [`NSView] Objc.nativeNSObject)
   method previousValidKeyView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "previousValidKeyView:")[]) : [`NSView] Objc.nativeNSObject)
   method canBecomeKeyView =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canBecomeKeyView:")[]) : bool)
(*  UNSUPPORTED
   method setKeyboardFocusRingNeedsDisplayInRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setKeyboardFocusRingNeedsDisplayInRect:")[(*NSRect*) unsupported rect]) : unit)

*)
   method setFocusRingType (focusRingType : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFocusRingType:")[make_int focusRingType]) : unit)
   method focusRingType =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "focusRingType:")[]) : int)
(*  UNSUPPORTED
   method initWithFrame (frameRect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithFrame:")[(*NSRect*) unsupported frameRect]) : [`NSObject] Objc.nativeNSObject)

*)
   method window =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "window:")[]) : [`NSWindow] Objc.nativeNSObject)
   method superview =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "superview:")[]) : [`NSView] Objc.nativeNSObject)
   method subviews =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "subviews:")[]) : [`NSArray] Objc.nativeNSObject)
   method isDescendantOf (aView : [`NSView] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isDescendantOf:")[make_pointer_from_object aView]) : bool)
   method ancestorSharedWithView (aView : [`NSView] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "ancestorSharedWithView:")[make_pointer_from_object aView]) : [`NSView] Objc.nativeNSObject)
   method opaqueAncestor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "opaqueAncestor:")[]) : [`NSView] Objc.nativeNSObject)
   method setHidden (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHidden:")[make_bool flag]) : unit)
   method isHidden =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isHidden:")[]) : bool)
   method isHiddenOrHasHiddenAncestor =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isHiddenOrHasHiddenAncestor:")[]) : bool)
(*  UNSUPPORTED
   method getRectsBeingDrawn  ~count:(count : [`int] Objc.t ) (rects : (*pointer to pointer to const NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rects "getRectsBeingDrawn" (*pointer to pointer to const NSRect*) unsupported
       ++ Objc.arg count "count" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method needsToDrawRect (aRect : (*NSRect*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "needsToDrawRect:")[(*NSRect*) unsupported aRect]) : bool)

*)
   method wantsDefaultClipping =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "wantsDefaultClipping:")[]) : bool)
   (* skipping selector addSubview *)
   method addSubview  ?positioned:(place : int option) ?relativeTo:(otherView : [`NSView] Objc.t option) (aView : [`NSView] Objc.t) =
     let sel, args = (
       Objc.arg aView "addSubview" make_pointer_from_object
       ++ Objc.opt_arg place "positioned" make_int
       ++ Objc.opt_arg otherView "relativeTo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(*  UNSUPPORTED
   method sortSubviewsUsingFunction  ~context:(context : [`void] Objc.t ) (compare : (*id->id->pointer to void->int*) unsupported) =
     let sel, args = (
       Objc.arg compare "sortSubviewsUsingFunction" (*id->id->pointer to void->int*) unsupported
       ++ Objc.arg context "context" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method viewWillMoveToWindow (newWindow : [`NSWindow] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewWillMoveToWindow:")[make_pointer_from_object newWindow]) : unit)
   method viewDidMoveToWindow =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewDidMoveToWindow:")[]) : unit)
   method viewWillMoveToSuperview (newSuperview : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewWillMoveToSuperview:")[make_pointer_from_object newSuperview]) : unit)
   method viewDidMoveToSuperview =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewDidMoveToSuperview:")[]) : unit)
   method didAddSubview (subview : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "didAddSubview:")[make_pointer_from_object subview]) : unit)
   method willRemoveSubview (subview : [`NSView] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "willRemoveSubview:")[make_pointer_from_object subview]) : unit)
   method removeFromSuperview =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeFromSuperview:")[]) : unit)
   method replaceSubview  ~l_with:(newView : [`NSView] Objc.t ) (oldView : [`NSView] Objc.t) =
     let sel, args = (
       Objc.arg oldView "replaceSubview" make_pointer_from_object
       ++ Objc.arg newView "l_with" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method removeFromSuperviewWithoutNeedingDisplay =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeFromSuperviewWithoutNeedingDisplay:")[]) : unit)
   method setPostsFrameChangedNotifications (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPostsFrameChangedNotifications:")[make_bool flag]) : unit)
   method postsFrameChangedNotifications =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "postsFrameChangedNotifications:")[]) : bool)
(*  UNSUPPORTED
   method resizeSubviewsWithOldSize (oldSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resizeSubviewsWithOldSize:")[(*NSSize*) unsupported oldSize]) : unit)

*)
(*  UNSUPPORTED
   method resizeWithOldSuperviewSize (oldSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resizeWithOldSuperviewSize:")[(*NSSize*) unsupported oldSize]) : unit)

*)
   method setAutoresizesSubviews (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutoresizesSubviews:")[make_bool flag]) : unit)
   method autoresizesSubviews =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autoresizesSubviews:")[]) : bool)
   method setAutoresizingMask (mask : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAutoresizingMask:")[make_int mask]) : unit)
   method autoresizingMask =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "autoresizingMask:")[]) : int)
(*  UNSUPPORTED
   method setFrameOrigin (newOrigin : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFrameOrigin:")[(*NSPoint*) unsupported newOrigin]) : unit)

*)
(*  UNSUPPORTED
   method setFrameSize (newSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFrameSize:")[(*NSSize*) unsupported newSize]) : unit)

*)
(*  UNSUPPORTED
   method setFrame (frameRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFrame:")[(*NSRect*) unsupported frameRect]) : unit)

*)
(*  UNSUPPORTED
   method frame =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "frame:")[]) : (*NSRect*) unsupported)

*)
   method setFrameRotation (angle : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFrameRotation:")[make_float angle]) : unit)
   method frameRotation =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "frameRotation:")[]) : float)
(*  UNSUPPORTED
   method setBoundsOrigin (newOrigin : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBoundsOrigin:")[(*NSPoint*) unsupported newOrigin]) : unit)

*)
(*  UNSUPPORTED
   method setBoundsSize (newSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBoundsSize:")[(*NSSize*) unsupported newSize]) : unit)

*)
   method setBoundsRotation (angle : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBoundsRotation:")[make_float angle]) : unit)
   method boundsRotation =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "boundsRotation:")[]) : float)
(*  UNSUPPORTED
   method translateOriginToPoint (translation : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "translateOriginToPoint:")[(*NSPoint*) unsupported translation]) : unit)

*)
(*  UNSUPPORTED
   method scaleUnitSquareToSize (newUnitSize : (*NSSize*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scaleUnitSquareToSize:")[(*NSSize*) unsupported newUnitSize]) : unit)

*)
   method rotateByAngle (angle : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "rotateByAngle:")[make_float angle]) : unit)
(*  UNSUPPORTED
   method setBounds (aRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBounds:")[(*NSRect*) unsupported aRect]) : unit)

*)
(*  UNSUPPORTED
   method bounds =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "bounds:")[]) : (*NSRect*) unsupported)

*)
   method isFlipped =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFlipped:")[]) : bool)
   method isRotatedFromBase =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRotatedFromBase:")[]) : bool)
   method isRotatedOrScaledFromBase =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRotatedOrScaledFromBase:")[]) : bool)
   method isOpaque =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isOpaque:")[]) : bool)
(*  UNSUPPORTED
   method convertPoint  ~fromView:(aView : [`NSView] Objc.t ) (aPoint : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg aPoint "convertPoint" (*NSPoint*) unsupported
       ++ Objc.arg aView "fromView" make_pointer_from_object
     ) ([],[]) in
       ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSPoint*) unsupported)

*)
   (* skipping selector convertPoint:toView *)
(*  UNSUPPORTED
   method convertSize  ~fromView:(aView : [`NSView] Objc.t ) (aSize : (*NSSize*) unsupported) =
     let sel, args = (
       Objc.arg aSize "convertSize" (*NSSize*) unsupported
       ++ Objc.arg aView "fromView" make_pointer_from_object
     ) ([],[]) in
       ((*NSSize*) unsupported (Objc.invoke (*NSSize*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSSize*) unsupported)

*)
   (* skipping selector convertSize:toView *)
(*  UNSUPPORTED
   method convertRect  ~fromView:(aView : [`NSView] Objc.t ) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "convertRect" (*NSRect*) unsupported
       ++ Objc.arg aView "fromView" make_pointer_from_object
     ) ([],[]) in
       ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSRect*) unsupported)

*)
   (* skipping selector convertRect:toView *)
(*  UNSUPPORTED
   method centerScanRect (aRect : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "centerScanRect:")[(*NSRect*) unsupported aRect]) : (*NSRect*) unsupported)

*)
   method canDraw =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "canDraw:")[]) : bool)
   method setNeedsDisplay (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNeedsDisplay:")[make_bool flag]) : unit)
(*  UNSUPPORTED
   method setNeedsDisplayInRect (invalidRect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setNeedsDisplayInRect:")[(*NSRect*) unsupported invalidRect]) : unit)

*)
   method needsDisplay =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "needsDisplay:")[]) : bool)
   method lockFocus =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "lockFocus:")[]) : unit)
   method unlockFocus =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unlockFocus:")[]) : unit)
   method lockFocusIfCanDraw =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "lockFocusIfCanDraw:")[]) : bool)
   method lockFocusIfCanDrawInContext (context : [`NSGraphicsContext] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "lockFocusIfCanDrawInContext:")[make_pointer_from_object context]) : bool)
(*  UNSUPPORTED
   method visibleRect =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "visibleRect:")[]) : (*NSRect*) unsupported)

*)
   method display =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "display:")[]) : unit)
   method displayIfNeeded =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "displayIfNeeded:")[]) : unit)
   method displayIfNeededIgnoringOpacity =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "displayIfNeededIgnoringOpacity:")[]) : unit)
(*  UNSUPPORTED
   method displayRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "displayRect:")[(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
   method displayIfNeededInRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "displayIfNeededInRect:")[(*NSRect*) unsupported rect]) : unit)

*)
   (* skipping selector displayRectIgnoringOpacity *)
(*  UNSUPPORTED
   method displayIfNeededInRectIgnoringOpacity (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "displayIfNeededInRectIgnoringOpacity:")[(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
   method drawRect (rect : (*NSRect*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "drawRect:")[(*NSRect*) unsupported rect]) : unit)

*)
(*  UNSUPPORTED
   method displayRectIgnoringOpacity  ?inContext:(context : [`NSGraphicsContext] Objc.t option) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "displayRectIgnoringOpacity" (*NSRect*) unsupported
       ++ Objc.opt_arg context "inContext" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method bitmapImageRepForCachingDisplayInRect (rect : (*NSRect*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "bitmapImageRepForCachingDisplayInRect:")[(*NSRect*) unsupported rect]) : [`NSBitmapImageRep] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method cacheDisplayInRect  ~toBitmapImageRep:(bitmapImageRep : [`NSBitmapImageRep] Objc.t ) (rect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg rect "cacheDisplayInRect" (*NSRect*) unsupported
       ++ Objc.arg bitmapImageRep "toBitmapImageRep" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method gState =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "gState:")[]) : int)
   method allocateGState =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "allocateGState:")[]) : unit)
   method releaseGState =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "releaseGState:")[]) : unit)
   method setUpGState =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setUpGState:")[]) : unit)
   method renewGState =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "renewGState:")[]) : unit)
(*  UNSUPPORTED
   method scrollPoint (aPoint : (*NSPoint*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "scrollPoint:")[(*NSPoint*) unsupported aPoint]) : unit)

*)
(*  UNSUPPORTED
   method scrollRectToVisible (aRect : (*NSRect*) unsupported) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "scrollRectToVisible:")[(*NSRect*) unsupported aRect]) : bool)

*)
   method autoscroll (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "autoscroll:")[make_pointer_from_object theEvent]) : bool)
(*  UNSUPPORTED
   method adjustScroll (newVisible : (*NSRect*) unsupported) =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "adjustScroll:")[(*NSRect*) unsupported newVisible]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method scrollRect  ~by:(delta : (*NSSize*) unsupported ) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "scrollRect" (*NSRect*) unsupported
       ++ Objc.arg delta "by" (*NSSize*) unsupported
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method hitTest (aPoint : (*NSPoint*) unsupported) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "hitTest:")[(*NSPoint*) unsupported aPoint]) : [`NSView] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method mouse  ~inRect:(aRect : (*NSRect*) unsupported ) (aPoint : (*NSPoint*) unsupported) =
     let sel, args = (
       Objc.arg aPoint "mouse" (*NSPoint*) unsupported
       ++ Objc.arg aRect "inRect" (*NSRect*) unsupported
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)

*)
   method viewWithTag (aTag : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "viewWithTag:")[make_int aTag]) : [`NSObject] Objc.nativeNSObject)
   method tag =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "tag:")[]) : int)
   method performKeyEquivalent (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "performKeyEquivalent:")[make_pointer_from_object theEvent]) : bool)
   method acceptsFirstMouse (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "acceptsFirstMouse:")[make_pointer_from_object theEvent]) : bool)
   method shouldDelayWindowOrderingForEvent (theEvent : [`NSEvent] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "shouldDelayWindowOrderingForEvent:")[make_pointer_from_object theEvent]) : bool)
   method needsPanelToBecomeKey =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "needsPanelToBecomeKey:")[]) : bool)
   method mouseDownCanMoveWindow =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "mouseDownCanMoveWindow:")[]) : bool)
(*  UNSUPPORTED
   method addCursorRect  ~cursor:(anObj : [`NSCursor] Objc.t ) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "addCursorRect" (*NSRect*) unsupported
       ++ Objc.arg anObj "cursor" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
(*  UNSUPPORTED
   method removeCursorRect  ~cursor:(anObj : [`NSCursor] Objc.t ) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "removeCursorRect" (*NSRect*) unsupported
       ++ Objc.arg anObj "cursor" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
   method discardCursorRects =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "discardCursorRects:")[]) : unit)
   method resetCursorRects =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "resetCursorRects:")[]) : unit)
(*  UNSUPPORTED
   method addTrackingRect  ~owner:(anObject : [`NSObject] Objc.t ) ~userData:(data : [`void] Objc.t ) ~assumeInside:(flag : bool ) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "addTrackingRect" (*NSRect*) unsupported
       ++ Objc.arg anObject "owner" make_pointer_from_object
       ++ Objc.arg data "userData" make_pointer_from_object
       ++ Objc.arg flag "assumeInside" make_bool
     ) ([],[]) in
       ((*NSTrackingRectTag*) unsupported (Objc.invoke (*NSTrackingRectTag*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSTrackingRectTag*) unsupported)

*)
(*  UNSUPPORTED
   method removeTrackingRect (tag : (*NSTrackingRectTag*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeTrackingRect:")[(*NSTrackingRectTag*) unsupported tag]) : unit)

*)
   method shouldDrawColor =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "shouldDrawColor:")[]) : bool)
   method setPostsBoundsChangedNotifications (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPostsBoundsChangedNotifications:")[make_bool flag]) : unit)
   method postsBoundsChangedNotifications =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "postsBoundsChangedNotifications:")[]) : bool)
   method enclosingScrollView =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "enclosingScrollView:")[]) : [`NSScrollView] Objc.nativeNSObject)
   method menuForEvent (event : [`NSEvent] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "menuForEvent:")[make_pointer_from_object event]) : [`NSMenu] Objc.nativeNSObject)
   method setToolTip (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setToolTip:")[make_pointer_from_object string]) : unit)
   method toolTip =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "toolTip:")[]) : [`NSString] Objc.nativeNSObject)
(*  UNSUPPORTED
   method addToolTipRect  ~owner:(anObject : [`NSObject] Objc.t ) ~userData:(data : [`void] Objc.t ) (aRect : (*NSRect*) unsupported) =
     let sel, args = (
       Objc.arg aRect "addToolTipRect" (*NSRect*) unsupported
       ++ Objc.arg anObject "owner" make_pointer_from_object
       ++ Objc.arg data "userData" make_pointer_from_object
     ) ([],[]) in
       ((*NSToolTipTag*) unsupported (Objc.invoke (*NSToolTipTag*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSToolTipTag*) unsupported)

*)
(*  UNSUPPORTED
   method removeToolTip (tag : (*NSToolTipTag*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeToolTip:")[(*NSToolTipTag*) unsupported tag]) : unit)

*)
   method removeAllToolTips =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeAllToolTips:")[]) : unit)
   method viewWillStartLiveResize =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewWillStartLiveResize:")[]) : unit)
   method viewDidEndLiveResize =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "viewDidEndLiveResize:")[]) : unit)
   method inLiveResize =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "inLiveResize:")[]) : bool)
   method preservesContentDuringLiveResize =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "preservesContentDuringLiveResize:")[]) : bool)
(*  UNSUPPORTED
   method rectPreservedDuringLiveResize =
     ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported repr (Selector.find "rectPreservedDuringLiveResize:")[]) : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
   method getRectsExposedDuringLiveResize  ~count:(count : [`int] Objc.t ) (exposedRects : (*array of NSRect*) unsupported) =
     let sel, args = (
       Objc.arg exposedRects "getRectsExposedDuringLiveResize" (*array of NSRect*) unsupported
       ++ Objc.arg count "count" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSToolTipOwner *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSToolTipOwner *)
(*  UNSUPPORTED
   method view  ~stringForToolTip:(tag : (*NSToolTipTag*) unsupported ) ~point:(point : (*NSPoint*) unsupported ) ~userData:(data : [`void] Objc.t ) (view : [`NSView] Objc.t) =
     let sel, args = (
       Objc.arg view "view" make_pointer_from_object
       ++ Objc.arg tag "stringForToolTip" (*NSToolTipTag*) unsupported
       ++ Objc.arg point "point" (*NSPoint*) unsupported
       ++ Objc.arg data "userData" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)

*)
end
