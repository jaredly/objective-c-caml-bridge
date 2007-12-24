(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSResponder


external init : unit -> unit = "caml_init_NSApplication"
let _ = init()
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


let make_NSResponder_of_NSApplication (o : [`NSApplication] nativeNSObject) = (Obj.magic o : [`NSResponder] nativeNSObject)
(* Class object for NSApplication *)
let class_NSApplication = object
   val repr = Classes.find "NSApplication"
   method _new = (Objc.objcnew repr : [`NSApplication] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSApplication] nativeNSObject)
(* methods for category NSWindowsExtensions *)
   method setApplicationHandle  ~previousHandle:(_PrevInstance : [`void] Objc.t ) ~commandLine:(cmdLine : [`NSString] Objc.t ) ~show:(cmdShow : int ) (hInstance : [`void] Objc.t) =
     let sel, args = (
       Objc.arg hInstance "setApplicationHandle" make_pointer_from_object
       ++ Objc.arg _PrevInstance "previousHandle" make_pointer_from_object
       ++ Objc.arg cmdLine "commandLine" make_pointer_from_object
       ++ Objc.arg cmdShow "show" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSApplication] Objc.nativeNSObject)
   method useRunningCopyOfApplication =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "useRunningCopyOfApplication:")[]) : [`NSApplication] Objc.nativeNSObject)
(* methods for category NSStandardAboutPanel *)
(* methods for category NSServicesHandling *)
(* methods for category NSServicesMenu *)
(* methods for category NSWindowsMenu *)
   method sharedApplication =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedApplication:")[]) : [`NSApplication] Objc.nativeNSObject)
   method detachDrawingThread  ~toTarget:(target : [`NSObject] Objc.t ) ~withObject:(argument : [`NSObject] Objc.t ) (selector : selector) =
     let sel, args = (
       Objc.arg selector "detachDrawingThread" make_selector
       ++ Objc.arg target "toTarget" make_pointer_from_object
       ++ Objc.arg argument "withObject" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSApplication] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSApplication *)
class native_NSApplication = fun (o : [`NSApplication] nativeNSObject) -> object (self)
   inherit native_NSResponder (make_NSResponder_of_NSApplication o) as super
(* methods for category NSWindowsExtensions *)
   method applicationHandle =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "applicationHandle:")[]) : [`void] Objc.nativeNSObject)
   method windowWithWindowHandle (hWnd : [`void] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowWithWindowHandle:")[make_pointer_from_object hWnd]) : [`NSWindow] Objc.nativeNSObject)
(* methods for category NSStandardAboutPanel *)
   method orderFrontStandardAboutPanel (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontStandardAboutPanel:")[make_pointer_from_object sender]) : unit)
   method orderFrontStandardAboutPanelWithOptions (optionsDictionary : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontStandardAboutPanelWithOptions:")[make_pointer_from_object optionsDictionary]) : unit)
(* methods for category NSServicesHandling *)
   method setServicesProvider (provider : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setServicesProvider:")[make_pointer_from_object provider]) : unit)
   method servicesProvider =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "servicesProvider:")[]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSServicesMenu *)
   method setServicesMenu (aMenu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setServicesMenu:")[make_pointer_from_object aMenu]) : unit)
   method servicesMenu =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "servicesMenu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method registerServicesMenuSendTypes  ~returnTypes:(returnTypes : [`NSArray] Objc.t ) (sendTypes : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg sendTypes "registerServicesMenuSendTypes" make_pointer_from_object
       ++ Objc.arg returnTypes "returnTypes" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
(* methods for category NSWindowsMenu *)
   method setWindowsMenu (aMenu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWindowsMenu:")[make_pointer_from_object aMenu]) : unit)
   method windowsMenu =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowsMenu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method arrangeInFront (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "arrangeInFront:")[make_pointer_from_object sender]) : unit)
   method removeWindowsItem (win : [`NSWindow] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeWindowsItem:")[make_pointer_from_object win]) : unit)
   method addWindowsItem  ~title:(aString : [`NSString] Objc.t ) ~filename:(isFilename : bool ) (win : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg win "addWindowsItem" make_pointer_from_object
       ++ Objc.arg aString "title" make_pointer_from_object
       ++ Objc.arg isFilename "filename" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method changeWindowsItem  ~title:(aString : [`NSString] Objc.t ) ~filename:(isFilename : bool ) (win : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg win "changeWindowsItem" make_pointer_from_object
       ++ Objc.arg aString "title" make_pointer_from_object
       ++ Objc.arg isFilename "filename" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method updateWindowsItem (win : [`NSWindow] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "updateWindowsItem:")[make_pointer_from_object win]) : unit)
   method miniaturizeAll (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "miniaturizeAll:")[make_pointer_from_object sender]) : unit)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method context =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "context:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method hide (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "hide:")[make_pointer_from_object sender]) : unit)
   method unhide (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unhide:")[make_pointer_from_object sender]) : unit)
   method unhideWithoutActivation =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unhideWithoutActivation:")[]) : unit)
   method windowWithWindowNumber (windowNum : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windowWithWindowNumber:")[make_int windowNum]) : [`NSWindow] Objc.nativeNSObject)
   method mainWindow =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "mainWindow:")[]) : [`NSWindow] Objc.nativeNSObject)
   method keyWindow =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "keyWindow:")[]) : [`NSWindow] Objc.nativeNSObject)
   method isActive =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isActive:")[]) : bool)
   method isHidden =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isHidden:")[]) : bool)
   method isRunning =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isRunning:")[]) : bool)
   method deactivate =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deactivate:")[]) : unit)
   method activateIgnoringOtherApps (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "activateIgnoringOtherApps:")[make_bool flag]) : unit)
   method hideOtherApplications (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "hideOtherApplications:")[make_pointer_from_object sender]) : unit)
   method unhideAllApplications (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "unhideAllApplications:")[make_pointer_from_object sender]) : unit)
   method finishLaunching =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "finishLaunching:")[]) : unit)
   method run =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "run:")[]) : unit)
   (* skipping selector runModalForWindow *)
   method stop (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "stop:")[make_pointer_from_object sender]) : unit)
   method stopModal =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "stopModal:")[]) : unit)
   method stopModalWithCode (returnCode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "stopModalWithCode:")[make_int returnCode]) : unit)
   method abortModal =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "abortModal:")[]) : unit)
   method modalWindow =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "modalWindow:")[]) : [`NSWindow] Objc.nativeNSObject)
   (* skipping selector beginModalSessionForWindow *)
(*  UNSUPPORTED
   method runModalSession (session : (*NSModalSession*) unsupported) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "runModalSession:")[(*NSModalSession*) unsupported session]) : int)

*)
(*  UNSUPPORTED
   method endModalSession (session : (*NSModalSession*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "endModalSession:")[(*NSModalSession*) unsupported session]) : unit)

*)
   method terminate (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "terminate:")[make_pointer_from_object sender]) : unit)
   method requestUserAttention (requestType : int) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "requestUserAttention:")[make_int requestType]) : int)
   method cancelUserAttentionRequest (request : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "cancelUserAttentionRequest:")[make_int request]) : unit)
   method beginSheet  ~modalForWindow:(docWindow : [`NSWindow] Objc.t ) ~modalDelegate:(modalDelegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (sheet : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg sheet "beginSheet" make_pointer_from_object
       ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
       ++ Objc.arg modalDelegate "modalDelegate" make_pointer_from_object
       ++ Objc.arg didEndSelector "didEndSelector" make_selector
       ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   (* skipping selector endSheet *)
   method endSheet  ?returnCode:(returnCode : int option) (sheet : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg sheet "endSheet" make_pointer_from_object
       ++ Objc.opt_arg returnCode "returnCode" make_int
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method runModalForWindow  ?relativeToWindow:(docWindow : [`NSWindow] Objc.t option) (theWindow : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg theWindow "runModalForWindow" make_pointer_from_object
       ++ Objc.opt_arg docWindow "relativeToWindow" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int repr (Selector.find_list sel) args) : int)
(*  UNSUPPORTED
   method beginModalSessionForWindow  ?relativeToWindow:(docWindow : [`NSWindow] Objc.t option) (theWindow : [`NSWindow] Objc.t) =
     let sel, args = (
       Objc.arg theWindow "beginModalSessionForWindow" make_pointer_from_object
       ++ Objc.opt_arg docWindow "relativeToWindow" make_pointer_from_object
     ) ([],[]) in
       ((*NSModalSession*) unsupported (Objc.invoke (*NSModalSession*) Objc.tag_unsupported repr (Selector.find_list sel) args) : (*NSModalSession*) unsupported)

*)
   method nextEventMatchingMask  ~untilDate:(expiration : [`NSDate] Objc.t ) ~inMode:(mode : [`NSString] Objc.t ) ~dequeue:(deqFlag : bool ) (mask : int) =
     let sel, args = (
       Objc.arg mask "nextEventMatchingMask" make_int
       ++ Objc.arg expiration "untilDate" make_pointer_from_object
       ++ Objc.arg mode "inMode" make_pointer_from_object
       ++ Objc.arg deqFlag "dequeue" make_bool
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
   method sendEvent (theEvent : [`NSEvent] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "sendEvent:")[make_pointer_from_object theEvent]) : unit)
   method preventWindowOrdering =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "preventWindowOrdering:")[]) : unit)
   method makeWindowsPerform  ~inOrder:(flag : bool ) (aSelector : selector) =
     let sel, args = (
       Objc.arg aSelector "makeWindowsPerform" make_selector
       ++ Objc.arg flag "inOrder" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSWindow] Objc.nativeNSObject)
   method windows =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "windows:")[]) : [`NSArray] Objc.nativeNSObject)
   method setWindowsNeedUpdate (needUpdate : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWindowsNeedUpdate:")[make_bool needUpdate]) : unit)
   method updateWindows =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "updateWindows:")[]) : unit)
   method setMainMenu (aMenu : [`NSMenu] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMainMenu:")[make_pointer_from_object aMenu]) : unit)
   method mainMenu =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "mainMenu:")[]) : [`NSMenu] Objc.nativeNSObject)
   method setApplicationIconImage (image : [`NSImage] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setApplicationIconImage:")[make_pointer_from_object image]) : unit)
   method applicationIconImage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "applicationIconImage:")[]) : [`NSImage] Objc.nativeNSObject)
   method sendAction  ~l_to:(theTarget : [`NSObject] Objc.t ) ~from:(sender : [`NSObject] Objc.t ) (theAction : selector) =
     let sel, args = (
       Objc.arg theAction "sendAction" make_selector
       ++ Objc.arg theTarget "l_to" make_pointer_from_object
       ++ Objc.arg sender "from" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   (* skipping selector targetForAction *)
   method targetForAction  ?l_to:(theTarget : [`NSObject] Objc.t option) ?from:(sender : [`NSObject] Objc.t option) (theAction : selector) =
     let sel, args = (
       Objc.arg theAction "targetForAction" make_selector
       ++ Objc.opt_arg theTarget "l_to" make_pointer_from_object
       ++ Objc.opt_arg sender "from" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
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
   method reportException (theException : [`NSException] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "reportException:")[make_pointer_from_object theException]) : unit)
   method replyToApplicationShouldTerminate (shouldTerminate : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "replyToApplicationShouldTerminate:")[make_bool shouldTerminate]) : unit)
   method replyToOpenOrPrint (reply : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "replyToOpenOrPrint:")[make_int reply]) : unit)
   method orderFrontCharacterPalette (sender : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "orderFrontCharacterPalette:")[make_pointer_from_object sender]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSServicesRequests *)
(* methods for category NSApplicationDelegate *)
(* methods for category NSApplicationNotifications *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSServicesRequests *)
   method writeSelectionToPasteboard  ~types:(types : [`NSArray] Objc.t ) (pboard : [`NSPasteboard] Objc.t) =
     let sel, args = (
       Objc.arg pboard "writeSelectionToPasteboard" make_pointer_from_object
       ++ Objc.arg types "types" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method readSelectionFromPasteboard (pboard : [`NSPasteboard] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "readSelectionFromPasteboard:")[make_pointer_from_object pboard]) : bool)
(* methods for category NSApplicationDelegate *)
   method applicationShouldTerminate (sender : [`NSApplication] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "applicationShouldTerminate:")[make_pointer_from_object sender]) : int)
   (* skipping selector application:openFile *)
   (* skipping selector application:openFiles *)
   (* skipping selector application:openTempFile *)
   method applicationShouldOpenUntitledFile (sender : [`NSApplication] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "applicationShouldOpenUntitledFile:")[make_pointer_from_object sender]) : bool)
   method applicationOpenUntitledFile (sender : [`NSApplication] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "applicationOpenUntitledFile:")[make_pointer_from_object sender]) : bool)
   method application  ~openFileWithoutUI:(filename : [`NSString] Objc.t ) (sender : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg sender "application" make_pointer_from_object
       ++ Objc.arg filename "openFileWithoutUI" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   (* skipping selector application:printFile *)
   (* skipping selector application:printFiles:withSettings:showPrintPanels *)
   (* skipping selector application:printFiles *)
   method applicationShouldTerminateAfterLastWindowClosed (sender : [`NSApplication] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "applicationShouldTerminateAfterLastWindowClosed:")[make_pointer_from_object sender]) : bool)
   method applicationShouldHandleReopen  ~hasVisibleWindows:(flag : bool ) (sender : [`NSApplication] Objc.t) =
     let sel, args = (
       Objc.arg sender "applicationShouldHandleReopen" make_pointer_from_object
       ++ Objc.arg flag "hasVisibleWindows" make_bool
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method applicationDockMenu (sender : [`NSApplication] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "applicationDockMenu:")[make_pointer_from_object sender]) : [`NSMenu] Objc.nativeNSObject)
   (* skipping selector application:willPresentError *)
(* methods for category NSApplicationNotifications *)
   method applicationWillFinishLaunching (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationWillFinishLaunching:")[make_pointer_from_object notification]) : unit)
   method applicationDidFinishLaunching (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationDidFinishLaunching:")[make_pointer_from_object notification]) : unit)
   method applicationWillHide (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationWillHide:")[make_pointer_from_object notification]) : unit)
   method applicationDidHide (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationDidHide:")[make_pointer_from_object notification]) : unit)
   method applicationWillUnhide (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationWillUnhide:")[make_pointer_from_object notification]) : unit)
   method applicationDidUnhide (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationDidUnhide:")[make_pointer_from_object notification]) : unit)
   method applicationWillBecomeActive (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationWillBecomeActive:")[make_pointer_from_object notification]) : unit)
   method applicationDidBecomeActive (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationDidBecomeActive:")[make_pointer_from_object notification]) : unit)
   method applicationWillResignActive (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationWillResignActive:")[make_pointer_from_object notification]) : unit)
   method applicationDidResignActive (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationDidResignActive:")[make_pointer_from_object notification]) : unit)
   method applicationWillUpdate (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationWillUpdate:")[make_pointer_from_object notification]) : unit)
   method applicationDidUpdate (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationDidUpdate:")[make_pointer_from_object notification]) : unit)
   method applicationWillTerminate (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationWillTerminate:")[make_pointer_from_object notification]) : unit)
   method applicationDidChangeScreenParameters (notification : [`NSNotification] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "applicationDidChangeScreenParameters:")[make_pointer_from_object notification]) : unit)
end
