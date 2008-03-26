(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

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


class virtual methods = object
  inherit AppKit_cati_NSScripting.methods_NSWindow
  inherit AppKit_cati_NSCarbonExtensions.methods_NSWindow
  inherit AppKit_cati_NSWindowsExtensions.methods_NSWindow
  inherit AppKit_cati_NSDrag.methods_NSWindow
  inherit AppKit_cati_NSToolbarSupport.methods_NSWindow
  inherit AppKit_cati_NSKeyboardUI.methods_NSWindow
  inherit Im_NSWindow.methods
  inherit AppKit_cati_Drawers.methods_NSWindow
end

class t = fun (r :[`NSWindow] id) -> object
  inherit methods
  inherit NSResponder.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSWindow *)
let c = Classes.find "NSWindow"
let _new()= (Objc.objcnew c : [`NSWindow] id)
let alloc() = (Objc.objcalloc c : [`NSWindow] id)
(* class methods for category NSScripting of NSWindow *)
(* class methods for category NSCarbonExtensions of NSWindow *)
(* class methods for category NSWindowsExtensions of NSWindow *)
(* class methods for category NSDrag of NSWindow *)
(* class methods for category NSToolbarSupport of NSWindow *)
(* class methods for category NSKeyboardUI of NSWindow *)
let frameRectForContentRect_styleMask  (cRect : NSRect.t) (aStyle : int) =
    let sel, args = (
      Objc.arg cRect "frameRectForContentRect" make_rect
      ++ Objc.arg aStyle "styleMask" make_int
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect c (Selector.find_list sel) args)
       : NSRect.t)
let contentRectForFrameRect_styleMask  (fRect : NSRect.t) (aStyle : int) =
    let sel, args = (
      Objc.arg fRect "contentRectForFrameRect" make_rect
      ++ Objc.arg aStyle "styleMask" make_int
    ) ([],[]) in
      (get_rect (Objc.invoke Objc.tag_nsrect c (Selector.find_list sel) args)
       : NSRect.t)
let minFrameWidthWithTitle_styleMask  (aTitle : [`NSString] Objc.t) (aStyle : int) =
    let sel, args = (
      Objc.arg aTitle "minFrameWidthWithTitle" make_pointer_from_object
      ++ Objc.arg aStyle "styleMask" make_int
    ) ([],[]) in
      (get_float (Objc.invoke Objc.tag_float c (Selector.find_list sel) args)
       : float)
let defaultDepthLimit () =
    (get_int (Objc.invoke Objc.tag_int c (Selector.find "defaultDepthLimit")[])
       : int)
let removeFrameUsingName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "removeFrameUsingName:")
      [make_pointer_from_object name]) : unit)
let menuChanged (menu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "menuChanged:")
      [make_pointer_from_object menu]) : unit)
let standardWindowButton_forStyleMask  (b : int) (styleMask : int) =
    let sel, args = (
      Objc.arg b "standardWindowButton" make_int
      ++ Objc.arg styleMask "forStyleMask" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSButton] Objc.id))
(* class methods for category Drawers of NSWindow *)
