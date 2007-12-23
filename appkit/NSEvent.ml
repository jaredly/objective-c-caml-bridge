open Objc
open NSObject
open NSDate
open NSGeometry


external init : unit -> unit = "caml_init_NSEvent"
let _ = init()
(* Class object for NSEvent *)
let class_NSEvent = object
   val o = Classes.find "NSEvent"
   method _new = (Objc.objcnew o : [`NSEvent] nativeNSObject)
   method startPeriodicEventsAfterDelay  ~withPeriod:(period : float ) (delay : float) =
     let sel, args = (
       Objc.arg delay "startPeriodicEventsAfterDelay" make_float
       ++ Objc.arg period "withPeriod" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSEvent] Objc.nativeNSObject)
   method stopPeriodicEvents =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "stopPeriodicEvents:")[]) : [`NSEvent] Objc.nativeNSObject)
(*  UNSUPPORTED
   method mouseEventWithType  ~location:(location : (*NSPoint*) unsupported ) ~modifierFlags:(flags : int ) ~timestamp:(time : float ) ~windowNumber:(wNum : int ) ~context:(context : [`NSGraphicsContext] Objc.t ) ~eventNumber:(eNum : int ) ~clickCount:(cNum : int ) ~pressure:(pressure : float ) (_type : int) =
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
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSEvent] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method keyEventWithType  ~location:(location : (*NSPoint*) unsupported ) ~modifierFlags:(flags : int ) ~timestamp:(time : float ) ~windowNumber:(wNum : int ) ~context:(context : [`NSGraphicsContext] Objc.t ) ~characters:(keys : [`NSString] Objc.t ) ~charactersIgnoringModifiers:(ukeys : [`NSString] Objc.t ) ~isARepeat:(flag : bool ) ~keyCode:(code : int ) (_type : int) =
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
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSEvent] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method enterExitEventWithType  ~location:(location : (*NSPoint*) unsupported ) ~modifierFlags:(flags : int ) ~timestamp:(time : float ) ~windowNumber:(wNum : int ) ~context:(context : [`NSGraphicsContext] Objc.t ) ~eventNumber:(eNum : int ) ~trackingNumber:(tNum : int ) ~userData:(data : [`void] Objc.t ) (_type : int) =
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
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSEvent] Objc.nativeNSObject)

*)
(*  UNSUPPORTED
   method otherEventWithType  ~location:(location : (*NSPoint*) unsupported ) ~modifierFlags:(flags : int ) ~timestamp:(time : float ) ~windowNumber:(wNum : int ) ~context:(context : [`NSGraphicsContext] Objc.t ) ~subtype:(subtype : int ) ~data1:(d1 : int ) ~data2:(d2 : int ) (_type : int) =
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
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSEvent] Objc.nativeNSObject)

*)
   method mouseLocation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "mouseLocation:")[]) : [`NSEvent] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSEvent *)
class native_NSEvent = fun (o : [`NSEvent] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method l_type =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "l_type:")[]) : int)
   method modifierFlags =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "modifierFlags:")[]) : int)
   method timestamp =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "timestamp:")[]) : float)
   method window =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "window:")[]) : [`NSWindow] Objc.nativeNSObject)
   method windowNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "windowNumber:")[]) : int)
   method context =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "context:")[]) : [`NSGraphicsContext] Objc.nativeNSObject)
   method clickCount =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "clickCount:")[]) : int)
   method buttonNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "buttonNumber:")[]) : int)
   method eventNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "eventNumber:")[]) : int)
   method pressure =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "pressure:")[]) : float)
(*  UNSUPPORTED
   method locationInWindow =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "locationInWindow:")[]) : (*NSPoint*) unsupported)

*)
   method deltaX =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "deltaX:")[]) : float)
   method deltaY =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "deltaY:")[]) : float)
   method deltaZ =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "deltaZ:")[]) : float)
   method characters =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "characters:")[]) : [`NSString] Objc.nativeNSObject)
   method charactersIgnoringModifiers =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "charactersIgnoringModifiers:")[]) : [`NSString] Objc.nativeNSObject)
   method isARepeat =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isARepeat:")[]) : bool)
   method keyCode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "keyCode:")[]) : int)
   method trackingNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "trackingNumber:")[]) : int)
   method userData =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "userData:")[]) : [`void] Objc.nativeNSObject)
   method subtype =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "subtype:")[]) : int)
   method data1 =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "data1:")[]) : int)
   method data2 =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "data2:")[]) : int)
   method deviceID =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "deviceID:")[]) : int)
   method absoluteX =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "absoluteX:")[]) : int)
   method absoluteY =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "absoluteY:")[]) : int)
   method absoluteZ =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "absoluteZ:")[]) : int)
   method buttonMask =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "buttonMask:")[]) : int)
(*  UNSUPPORTED
   method tilt =
     ((*NSPoint*) unsupported (Objc.invoke (*NSPoint*) Objc.tag_unsupported o (Selector.find "tilt:")[]) : (*NSPoint*) unsupported)

*)
   method rotation =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "rotation:")[]) : float)
   method tangentialPressure =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "tangentialPressure:")[]) : float)
   method vendorDefined =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "vendorDefined:")[]) : [`NSObject] Objc.nativeNSObject)
   method vendorID =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "vendorID:")[]) : int)
   method tabletID =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "tabletID:")[]) : int)
   method pointingDeviceID =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "pointingDeviceID:")[]) : int)
   method systemTabletID =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "systemTabletID:")[]) : int)
   method vendorPointingDeviceType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "vendorPointingDeviceType:")[]) : int)
   method pointingDeviceSerialNumber =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "pointingDeviceSerialNumber:")[]) : int)
   method uniqueID =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "uniqueID:")[]) : int64)
   method capabilityMask =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "capabilityMask:")[]) : int)
   method pointingDeviceType =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "pointingDeviceType:")[]) : int)
   method isEnteringProximity =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEnteringProximity:")[]) : bool)
end
