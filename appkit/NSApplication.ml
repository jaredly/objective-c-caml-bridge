(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSRunStoppedResponse = -1000L
let _NSRunAbortedResponse = -1001L
let _NSRunContinuesResponse = -1002L
let _NSUpdateWindowsRunLoopOrdering = 500000L
let _NSCriticalRequest = 0L
let _NSInformationalRequest = 10L
let _NSApplicationDelegateReplySuccess = 0L
let _NSApplicationDelegateReplyCancel = 1L
let _NSApplicationDelegateReplyFailure = 2L


class virtual methods = object
  inherit AppKit_cati_NSApplicationHelpExtension.methods_NSApplication
  inherit AppKit_cati_NSColorPanel.methods_NSApplication
  inherit AppKit_cati_NSScripting.methods_NSApplication
  inherit AppKit_cati_NSWindowsExtensions.methods_NSApplication
  inherit AppKit_cati_NSStandardAboutPanel.methods_NSApplication
  inherit AppKit_cati_NSServicesHandling.methods_NSApplication
  inherit AppKit_cati_NSServicesMenu.methods_NSApplication
  inherit AppKit_cati_NSWindowsMenu.methods_NSApplication
  inherit Im_NSApplication.methods
end

class t = fun (r :[`NSApplication] id) -> object
  inherit methods
  inherit NSResponder.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSApplication *)
let c = Classes.find "NSApplication"
let _new()= (Objc.objcnew c : [`NSApplication] id)
let alloc() = (Objc.objcalloc c : [`NSApplication] id)
(* class methods for category NSApplicationHelpExtension of NSApplication *)
(* class methods for category NSColorPanel of NSApplication *)
(* class methods for category NSScripting of NSApplication *)
(* class methods for category NSWindowsExtensions of NSApplication *)
let setApplicationHandle_previousHandle_commandLine_show  (hInstance : [`void] Objc.t) (_PrevInstance : [`void] Objc.t) (cmdLine : [`NSString] Objc.t) (cmdShow : int) =
    let sel, args = (
      Objc.arg hInstance "setApplicationHandle" make_pointer_from_object
      ++ Objc.arg _PrevInstance "previousHandle" make_pointer_from_object
      ++ Objc.arg cmdLine "commandLine" make_pointer_from_object
      ++ Objc.arg cmdShow "show" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let useRunningCopyOfApplication () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "useRunningCopyOfApplication")[])
       : unit)
(* class methods for category NSStandardAboutPanel of NSApplication *)
(* class methods for category NSServicesHandling of NSApplication *)
(* class methods for category NSServicesMenu of NSApplication *)
(* class methods for category NSWindowsMenu of NSApplication *)
let sharedApplication () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "sharedApplication")[])
       : [`NSApplication] Objc.id))
let detachDrawingThread_toTarget_withObject  (selector : selector) (target : [`NSObject] Objc.t) (argument : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg selector "detachDrawingThread" make_selector
      ++ Objc.arg target "toTarget" make_pointer_from_object
      ++ Objc.arg argument "withObject" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
