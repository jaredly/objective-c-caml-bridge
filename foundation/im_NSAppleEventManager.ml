(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSAppleEventManager *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method setEventHandler_andSelector_forEventClass_andEventID  (handler : [`NSObject] Objc.t) (handleEventSelector : selector) (eventClass : int64) (eventID : int64) =
    let sel, args = (
      Objc.arg handler "setEventHandler" make_pointer_from_object
      ++ Objc.arg handleEventSelector "andSelector" make_selector
      ++ Objc.arg eventClass "forEventClass" make_int64
      ++ Objc.arg eventID "andEventID" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method removeEventHandlerForEventClass_andEventID  (eventClass : int64) (eventID : int64) =
    let sel, args = (
      Objc.arg eventClass "removeEventHandlerForEventClass" make_int64
      ++ Objc.arg eventID "andEventID" make_int64
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
(*  UNSUPPORTED
  method dispatchRawAppleEvent_withRawReply_handlerRefCon  (theAppleEvent : (*pointer to const AppleEvent*) unsupported) (theReply : [`AppleEvent] Objc.t) (handlerRefCon : int64) =
    let sel, args = (
      Objc.arg theAppleEvent "dispatchRawAppleEvent" (*pointer to const AppleEvent*) unsupported
      ++ Objc.arg theReply "withRawReply" make_pointer_from_object
      ++ Objc.arg handlerRefCon "handlerRefCon" make_int64
    ) ([],[]) in
      ((*OSErr*) unsupported (Objc.invoke (*OSErr*) Objc.tag_unsupported self#repr (Selector.find_list sel) args)
       : (*OSErr*) unsupported)

*)
  method currentAppleEvent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentAppleEvent")[])
       : [`NSAppleEventDescriptor] Objc.id))
  method currentReplyAppleEvent =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "currentReplyAppleEvent")[])
       : [`NSAppleEventDescriptor] Objc.id))
(*  UNSUPPORTED
  method suspendCurrentAppleEvent =
    ((*NSAppleEventManagerSuspensionID*) unsupported (Objc.invoke (*NSAppleEventManagerSuspensionID*) Objc.tag_unsupported self#repr (Selector.find "suspendCurrentAppleEvent")[])
       : (*NSAppleEventManagerSuspensionID*) unsupported)

*)
(*  UNSUPPORTED
  method appleEventForSuspensionID (suspensionID : (*NSAppleEventManagerSuspensionID*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "appleEventForSuspensionID:")
      [(*NSAppleEventManagerSuspensionID*) unsupported suspensionID]) : [`NSAppleEventDescriptor] Objc.id))

*)
(*  UNSUPPORTED
  method replyAppleEventForSuspensionID (suspensionID : (*NSAppleEventManagerSuspensionID*) unsupported) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "replyAppleEventForSuspensionID:")
      [(*NSAppleEventManagerSuspensionID*) unsupported suspensionID]) : [`NSAppleEventDescriptor] Objc.id))

*)
(*  UNSUPPORTED
  method setCurrentAppleEventAndReplyEventWithSuspensionID (suspensionID : (*NSAppleEventManagerSuspensionID*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCurrentAppleEventAndReplyEventWithSuspensionID:")
      [(*NSAppleEventManagerSuspensionID*) unsupported suspensionID]) : unit)

*)
(*  UNSUPPORTED
  method resumeWithSuspensionID (suspensionID : (*NSAppleEventManagerSuspensionID*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "resumeWithSuspensionID:")
      [(*NSAppleEventManagerSuspensionID*) unsupported suspensionID]) : unit)

*)
end
