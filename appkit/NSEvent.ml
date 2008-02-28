(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
(* let_NSLeftMouseDownMask = ?? *)
(* let_NSLeftMouseUpMask = ?? *)
(* let_NSRightMouseDownMask = ?? *)
(* let_NSRightMouseUpMask = ?? *)
(* let_NSMouseMovedMask = ?? *)
(* let_NSLeftMouseDraggedMask = ?? *)
(* let_NSRightMouseDraggedMask = ?? *)
(* let_NSMouseEnteredMask = ?? *)
(* let_NSMouseExitedMask = ?? *)
(* let_NSKeyDownMask = ?? *)
(* let_NSKeyUpMask = ?? *)
(* let_NSFlagsChangedMask = ?? *)
(* let_NSAppKitDefinedMask = ?? *)
(* let_NSSystemDefinedMask = ?? *)
(* let_NSApplicationDefinedMask = ?? *)
(* let_NSPeriodicMask = ?? *)
(* let_NSCursorUpdateMask = ?? *)
(* let_NSScrollWheelMask = ?? *)
(* let_NSTabletPointMask = ?? *)
(* let_NSTabletProximityMask = ?? *)
(* let_NSOtherMouseDownMask = ?? *)
(* let_NSOtherMouseUpMask = ?? *)
(* let_NSOtherMouseDraggedMask = ?? *)
let _NSAnyEventMask = 4294967295L
let _NSAlphaShiftKeyMask = 65536L
let _NSShiftKeyMask = 131072L
let _NSControlKeyMask = 262144L
let _NSAlternateKeyMask = 524288L
let _NSCommandKeyMask = 1048576L
let _NSNumericPadKeyMask = 2097152L
let _NSHelpKeyMask = 4194304L
let _NSFunctionKeyMask = 8388608L
let _NSDeviceIndependentModifierFlagsMask = 4294901760L
(* let_NSPenTipMask = ?? *)
(* let_NSPenLowerSideMask = ?? *)
(* let_NSPenUpperSideMask = ?? *)
let _NSUpArrowFunctionKey = 63232L
let _NSDownArrowFunctionKey = 63233L
let _NSLeftArrowFunctionKey = 63234L
let _NSRightArrowFunctionKey = 63235L
let _NSF1FunctionKey = 63236L
let _NSF2FunctionKey = 63237L
let _NSF3FunctionKey = 63238L
let _NSF4FunctionKey = 63239L
let _NSF5FunctionKey = 63240L
let _NSF6FunctionKey = 63241L
let _NSF7FunctionKey = 63242L
let _NSF8FunctionKey = 63243L
let _NSF9FunctionKey = 63244L
let _NSF10FunctionKey = 63245L
let _NSF11FunctionKey = 63246L
let _NSF12FunctionKey = 63247L
let _NSF13FunctionKey = 63248L
let _NSF14FunctionKey = 63249L
let _NSF15FunctionKey = 63250L
let _NSF16FunctionKey = 63251L
let _NSF17FunctionKey = 63252L
let _NSF18FunctionKey = 63253L
let _NSF19FunctionKey = 63254L
let _NSF20FunctionKey = 63255L
let _NSF21FunctionKey = 63256L
let _NSF22FunctionKey = 63257L
let _NSF23FunctionKey = 63258L
let _NSF24FunctionKey = 63259L
let _NSF25FunctionKey = 63260L
let _NSF26FunctionKey = 63261L
let _NSF27FunctionKey = 63262L
let _NSF28FunctionKey = 63263L
let _NSF29FunctionKey = 63264L
let _NSF30FunctionKey = 63265L
let _NSF31FunctionKey = 63266L
let _NSF32FunctionKey = 63267L
let _NSF33FunctionKey = 63268L
let _NSF34FunctionKey = 63269L
let _NSF35FunctionKey = 63270L
let _NSInsertFunctionKey = 63271L
let _NSDeleteFunctionKey = 63272L
let _NSHomeFunctionKey = 63273L
let _NSBeginFunctionKey = 63274L
let _NSEndFunctionKey = 63275L
let _NSPageUpFunctionKey = 63276L
let _NSPageDownFunctionKey = 63277L
let _NSPrintScreenFunctionKey = 63278L
let _NSScrollLockFunctionKey = 63279L
let _NSPauseFunctionKey = 63280L
let _NSSysReqFunctionKey = 63281L
let _NSBreakFunctionKey = 63282L
let _NSResetFunctionKey = 63283L
let _NSStopFunctionKey = 63284L
let _NSMenuFunctionKey = 63285L
let _NSUserFunctionKey = 63286L
let _NSSystemFunctionKey = 63287L
let _NSPrintFunctionKey = 63288L
let _NSClearLineFunctionKey = 63289L
let _NSClearDisplayFunctionKey = 63290L
let _NSInsertLineFunctionKey = 63291L
let _NSDeleteLineFunctionKey = 63292L
let _NSInsertCharFunctionKey = 63293L
let _NSDeleteCharFunctionKey = 63294L
let _NSPrevFunctionKey = 63295L
let _NSNextFunctionKey = 63296L
let _NSSelectFunctionKey = 63297L
let _NSExecuteFunctionKey = 63298L
let _NSUndoFunctionKey = 63299L
let _NSRedoFunctionKey = 63300L
let _NSFindFunctionKey = 63301L
let _NSHelpFunctionKey = 63302L
let _NSModeSwitchFunctionKey = 63303L
let _NSWindowExposedEventType = 0L
let _NSApplicationActivatedEventType = 1L
let _NSApplicationDeactivatedEventType = 2L
let _NSWindowMovedEventType = 4L
let _NSScreenChangedEventType = 8L
let _NSAWTEventType = 16L
let _NSPowerOffEventType = 1L
(* let_NSMouseEventSubtype = ?? *)
(* let_NSTabletPointEventSubtype = ?? *)
(* let_NSTabletProximityEventSubtype = ?? *)


class t = fun (r :[`NSEvent] id) -> object
  inherit Im_NSEvent.methods
  method repr = r
end

(* Class object for NSEvent *)
let c = Classes.find "NSEvent"
let _new()= (Objc.objcnew c : [`NSEvent] id)
let alloc() = (Objc.objcalloc c : [`NSEvent] id)
let startPeriodicEventsAfterDelay  ~withPeriod:(period : float ) (delay : float) =
    let sel, args = (
      Objc.arg delay "startPeriodicEventsAfterDelay" make_float
      ++ Objc.arg period "withPeriod" make_float
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let stopPeriodicEvents () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "stopPeriodicEvents")[])
       : unit)
(*  UNSUPPORTED
let mouseEventWithType  ~location:(location : (*NSPoint*) unsupported ) ~modifierFlags:(flags : int ) ~timestamp:(time : float ) ~windowNumber:(wNum : int ) ~context:(context : [`NSGraphicsContext] Objc.t ) ~eventNumber:(eNum : int ) ~clickCount:(cNum : int ) ~pressure:(pressure : float ) (_type : int) =
    let sel, args = (
      Objc.arg _type "mouseEventWithType" make_int
      ++ Objc.arg location "location" (*NSPoint*) unsupported
      ++ Objc.arg flags "modifierFlags" make_int
      ++ Objc.arg time "timestamp" make_float
      ++ Objc.arg wNum "windowNumber" make_int
      ++ Objc.arg context "context" make_pointer_from_object
      ++ Objc.arg eNum "eventNumber" make_int
      ++ Objc.arg cNum "clickCount" make_int
      ++ Objc.arg pressure "pressure" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSEvent] Objc.id))

*)
(*  UNSUPPORTED
let keyEventWithType  ~location:(location : (*NSPoint*) unsupported ) ~modifierFlags:(flags : int ) ~timestamp:(time : float ) ~windowNumber:(wNum : int ) ~context:(context : [`NSGraphicsContext] Objc.t ) ~characters:(keys : [`NSString] Objc.t ) ~charactersIgnoringModifiers:(ukeys : [`NSString] Objc.t ) ~isARepeat:(flag : bool ) ~keyCode:(code : int ) (_type : int) =
    let sel, args = (
      Objc.arg _type "keyEventWithType" make_int
      ++ Objc.arg location "location" (*NSPoint*) unsupported
      ++ Objc.arg flags "modifierFlags" make_int
      ++ Objc.arg time "timestamp" make_float
      ++ Objc.arg wNum "windowNumber" make_int
      ++ Objc.arg context "context" make_pointer_from_object
      ++ Objc.arg keys "characters" make_pointer_from_object
      ++ Objc.arg ukeys "charactersIgnoringModifiers" make_pointer_from_object
      ++ Objc.arg flag "isARepeat" make_bool
      ++ Objc.arg code "keyCode" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSEvent] Objc.id))

*)
(*  UNSUPPORTED
let enterExitEventWithType  ~location:(location : (*NSPoint*) unsupported ) ~modifierFlags:(flags : int ) ~timestamp:(time : float ) ~windowNumber:(wNum : int ) ~context:(context : [`NSGraphicsContext] Objc.t ) ~eventNumber:(eNum : int ) ~trackingNumber:(tNum : int ) ~userData:(data : [`void] Objc.t ) (_type : int) =
    let sel, args = (
      Objc.arg _type "enterExitEventWithType" make_int
      ++ Objc.arg location "location" (*NSPoint*) unsupported
      ++ Objc.arg flags "modifierFlags" make_int
      ++ Objc.arg time "timestamp" make_float
      ++ Objc.arg wNum "windowNumber" make_int
      ++ Objc.arg context "context" make_pointer_from_object
      ++ Objc.arg eNum "eventNumber" make_int
      ++ Objc.arg tNum "trackingNumber" make_int
      ++ Objc.arg data "userData" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSEvent] Objc.id))

*)
(*  UNSUPPORTED
let otherEventWithType  ~location:(location : (*NSPoint*) unsupported ) ~modifierFlags:(flags : int ) ~timestamp:(time : float ) ~windowNumber:(wNum : int ) ~context:(context : [`NSGraphicsContext] Objc.t ) ~subtype:(subtype : int ) ~data1:(d1 : int ) ~data2:(d2 : int ) (_type : int) =
    let sel, args = (
      Objc.arg _type "otherEventWithType" make_int
      ++ Objc.arg location "location" (*NSPoint*) unsupported
      ++ Objc.arg flags "modifierFlags" make_int
      ++ Objc.arg time "timestamp" make_float
      ++ Objc.arg wNum "windowNumber" make_int
      ++ Objc.arg context "context" make_pointer_from_object
      ++ Objc.arg subtype "subtype" make_int
      ++ Objc.arg d1 "data1" make_int
      ++ Objc.arg d2 "data2" make_int
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSEvent] Objc.id))

*)
(*  UNSUPPORTED
let mouseLocation () =
    ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported c (Selector.find "mouseLocation")[])
       : (*NSPoint*) unsupported)

*)
