(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSApplication *)
class virtual methods = object (self)
  method virtual repr : [`NSApplication] Objc.id
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method context =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "context")[])
       : [`NSGraphicsContext] Objc.id))
  method hide (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "hide:")
      [make_pointer_from_object sender]) : unit)
  method unhide (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unhide:")
      [make_pointer_from_object sender]) : unit)
  method unhideWithoutActivation =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unhideWithoutActivation")[])
       : unit)
  method windowWithWindowNumber (windowNum : int) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windowWithWindowNumber:")
      [make_int windowNum]) : [`NSWindow] Objc.id))
  method mainWindow =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mainWindow")[])
       : [`NSWindow] Objc.id))
  method keyWindow =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keyWindow")[])
       : [`NSWindow] Objc.id))
  method isActive =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isActive")[])
       : bool)
  method isHidden =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isHidden")[])
       : bool)
  method isRunning =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isRunning")[])
       : bool)
  method deactivate =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deactivate")[])
       : unit)
  method activateIgnoringOtherApps (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "activateIgnoringOtherApps:")
      [make_bool flag]) : unit)
  method hideOtherApplications (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "hideOtherApplications:")
      [make_pointer_from_object sender]) : unit)
  method unhideAllApplications (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unhideAllApplications:")
      [make_pointer_from_object sender]) : unit)
  method finishLaunching =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "finishLaunching")[])
       : unit)
  method run =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "run")[])
       : unit)
  (* skipping selector runModalForWindow *)
  method stop (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stop:")
      [make_pointer_from_object sender]) : unit)
  method stopModal =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopModal")[])
       : unit)
  method stopModalWithCode (returnCode : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopModalWithCode:")
      [make_int returnCode]) : unit)
  method abortModal =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "abortModal")[])
       : unit)
  method modalWindow =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "modalWindow")[])
       : [`NSWindow] Objc.id))
  (* skipping selector beginModalSessionForWindow *)
(*  UNSUPPORTED
  method runModalSession (session : (*NSModalSession*) unsupported) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "runModalSession:")
      [(*NSModalSession*) unsupported session]) : int)

*)
(*  UNSUPPORTED
  method endModalSession (session : (*NSModalSession*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "endModalSession:")
      [(*NSModalSession*) unsupported session]) : unit)

*)
  method terminate (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "terminate:")
      [make_pointer_from_object sender]) : unit)
  method requestUserAttention (requestType : int) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "requestUserAttention:")
      [make_int requestType]) : int)
  method cancelUserAttentionRequest (request : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "cancelUserAttentionRequest:")
      [make_int request]) : unit)
  method beginSheet  ~modalForWindow:(docWindow : [`NSWindow] Objc.t ) ~modalDelegate:(modalDelegate : [`NSObject] Objc.t ) ~didEndSelector:(didEndSelector : selector ) ~contextInfo:(contextInfo : [`void] Objc.t ) (sheet : [`NSWindow] Objc.t) =
    let sel, args = (
      Objc.arg sheet "beginSheet" make_pointer_from_object
      ++ Objc.arg docWindow "modalForWindow" make_pointer_from_object
      ++ Objc.arg modalDelegate "modalDelegate" make_pointer_from_object
      ++ Objc.arg didEndSelector "didEndSelector" make_selector
      ++ Objc.arg contextInfo "contextInfo" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  (* skipping selector endSheet *)
  method endSheet  ?returnCode:(returnCode : int option) (sheet : [`NSWindow] Objc.t) =
    let sel, args = (
      Objc.arg sheet "endSheet" make_pointer_from_object
      ++ Objc.opt_arg returnCode "returnCode" make_int
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method runModalForWindow  ?relativeToWindow:(docWindow : [`NSWindow] Objc.t option) (theWindow : [`NSWindow] Objc.t) =
    let sel, args = (
      Objc.arg theWindow "runModalForWindow" make_pointer_from_object
      ++ Objc.opt_arg docWindow "relativeToWindow" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
(*  UNSUPPORTED
  method beginModalSessionForWindow  ?relativeToWindow:(docWindow : [`NSWindow] Objc.t option) (theWindow : [`NSWindow] Objc.t) =
    let sel, args = (
      Objc.arg theWindow "beginModalSessionForWindow" make_pointer_from_object
      ++ Objc.opt_arg docWindow "relativeToWindow" make_pointer_from_object
    ) ([],[]) in
      ((*NSModalSession*) unsupported (Objc.invoke (*NSModalSession*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*NSModalSession*) unsupported)

*)
  method nextEventMatchingMask  ~untilDate:(expiration : [`NSDate] Objc.t ) ~inMode:(mode : [`NSString] Objc.t ) ~dequeue:(deqFlag : bool ) (mask : int) =
    let sel, args = (
      Objc.arg mask "nextEventMatchingMask" make_int
      ++ Objc.arg expiration "untilDate" make_pointer_from_object
      ++ Objc.arg mode "inMode" make_pointer_from_object
      ++ Objc.arg deqFlag "dequeue" make_bool
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSEvent] Objc.id))
  method discardEventsMatchingMask  ~beforeEvent:(lastEvent : [`NSEvent] Objc.t ) (mask : int) =
    let sel, args = (
      Objc.arg mask "discardEventsMatchingMask" make_int
      ++ Objc.arg lastEvent "beforeEvent" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method postEvent  ~atStart:(flag : bool ) (event : [`NSEvent] Objc.t) =
    let sel, args = (
      Objc.arg event "postEvent" make_pointer_from_object
      ++ Objc.arg flag "atStart" make_bool
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method currentEvent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentEvent")[])
       : [`NSEvent] Objc.id))
  method sendEvent (theEvent : [`NSEvent] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "sendEvent:")
      [make_pointer_from_object theEvent]) : unit)
  method preventWindowOrdering =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "preventWindowOrdering")[])
       : unit)
  method makeWindowsPerform  ~inOrder:(flag : bool ) (aSelector : selector) =
    let sel, args = (
      Objc.arg aSelector "makeWindowsPerform" make_selector
      ++ Objc.arg flag "inOrder" make_bool
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSWindow] Objc.id))
  method windows =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "windows")[])
       : [`NSArray] Objc.id))
  method setWindowsNeedUpdate (needUpdate : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWindowsNeedUpdate:")
      [make_bool needUpdate]) : unit)
  method updateWindows =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "updateWindows")[])
       : unit)
  method setMainMenu (aMenu : [`NSMenu] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMainMenu:")
      [make_pointer_from_object aMenu]) : unit)
  method mainMenu =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mainMenu")[])
       : [`NSMenu] Objc.id))
  method setApplicationIconImage (image : [`NSImage] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setApplicationIconImage:")
      [make_pointer_from_object image]) : unit)
  method applicationIconImage =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "applicationIconImage")[])
       : [`NSImage] Objc.id))
  method sendAction  ~l_to:(theTarget : [`NSObject] Objc.t ) ~from:(sender : [`NSObject] Objc.t ) (theAction : selector) =
    let sel, args = (
      Objc.arg theAction "sendAction" make_selector
      ++ Objc.arg theTarget "l_to" make_pointer_from_object
      ++ Objc.arg sender "from" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  (* skipping selector targetForAction *)
  method targetForAction  ?l_to:(theTarget : [`NSObject] Objc.t option) ?from:(sender : [`NSObject] Objc.t option) (theAction : selector) =
    let sel, args = (
      Objc.arg theAction "targetForAction" make_selector
      ++ Objc.opt_arg theTarget "l_to" make_pointer_from_object
      ++ Objc.opt_arg sender "from" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method tryToPerform  ~l_with:(anObject : [`NSObject] Objc.t ) (anAction : selector) =
    let sel, args = (
      Objc.arg anAction "tryToPerform" make_selector
      ++ Objc.arg anObject "l_with" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method validRequestorForSendType  ~returnType:(returnType : [`NSString] Objc.t ) (sendType : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg sendType "validRequestorForSendType" make_pointer_from_object
      ++ Objc.arg returnType "returnType" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method reportException (theException : [`NSException] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "reportException:")
      [make_pointer_from_object theException]) : unit)
  method replyToApplicationShouldTerminate (shouldTerminate : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "replyToApplicationShouldTerminate:")
      [make_bool shouldTerminate]) : unit)
  method replyToOpenOrPrint (reply : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "replyToOpenOrPrint:")
      [make_int reply]) : unit)
  method orderFrontCharacterPalette (sender : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "orderFrontCharacterPalette:")
      [make_pointer_from_object sender]) : unit)
end
