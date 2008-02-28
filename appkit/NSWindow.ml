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


class t = fun (r :[`NSWindow] id) -> object
  inherit Cati_NSCarbonExtensions.methods_NSWindow
  inherit Cati_NSWindowsExtensions.methods_NSWindow
  inherit Cati_NSDrag.methods_NSWindow
  inherit Cati_NSToolbarSupport.methods_NSWindow
  inherit Cati_NSKeyboardUI.methods_NSWindow
  inherit Im_NSWindow.methods
  method repr = r
end

(* Class object for NSWindow *)
let c = Classes.find "NSWindow"
let _new()= (Objc.objcnew c : [`NSWindow] id)
let alloc() = (Objc.objcalloc c : [`NSWindow] id)
(* class methods for category NSCarbonExtensions of NSWindow *)
(* class methods for category NSWindowsExtensions of NSWindow *)
(* class methods for category NSDrag of NSWindow *)
(* class methods for category NSToolbarSupport of NSWindow *)
(* class methods for category NSKeyboardUI of NSWindow *)
(*  UNSUPPORTED
let frameRectForContentRect  ~styleMask:(aStyle : int ) (cRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg cRect "frameRectForContentRect" (*NSRect*) unsupported
      ++ Objc.arg aStyle "styleMask" make_int
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported c (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
(*  UNSUPPORTED
let contentRectForFrameRect  ~styleMask:(aStyle : int ) (fRect : (*NSRect*) unsupported) =
    let sel, args = (
      Objc.arg fRect "contentRectForFrameRect" (*NSRect*) unsupported
      ++ Objc.arg aStyle "styleMask" make_int
    ) ([],[]) in
      ((*NSRect*) unsupported (Objc.invoke (*NSRect*) Objc.tag_unsupported c (Selector.find_list sel) args)
       : (*NSRect*) unsupported)

*)
let minFrameWidthWithTitle  ~styleMask:(aStyle : int ) (aTitle : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg aTitle "minFrameWidthWithTitle" make_pointer_from_object
      ++ Objc.arg aStyle "styleMask" make_int
    ) ([],[]) in
      (get_float (Objc.invoke Objc.tag_float c (Selector.find_list sel) args)
       : float)
(*  UNSUPPORTED
let defaultDepthLimit () =
    ((*NSWindowDepth*) unsupported (Objc.invoke (*NSWindowDepth*) Objc.tag_unsupported c (Selector.find "defaultDepthLimit")[])
       : (*NSWindowDepth*) unsupported)

*)
let removeFrameUsingName (name : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "removeFrameUsingName:")
      [make_pointer_from_object name]) : unit)
let menuChanged (menu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "menuChanged:")
      [make_pointer_from_object menu]) : unit)
let standardWindowButton  ~forStyleMask:(styleMask : int ) (b : int) =
    let sel, args = (
      Objc.arg b "standardWindowButton" make_int
      ++ Objc.arg styleMask "forStyleMask" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSButton] Objc.id))
