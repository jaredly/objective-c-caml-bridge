(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSEvent *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method _type =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "type")[])
       : int)
  method modifierFlags =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "modifierFlags")[])
       : int)
  method timestamp =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "timestamp")[])
       : float)
  method window =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "window")[])
       : [`NSWindow] Objc.id))
  method windowNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "windowNumber")[])
       : int)
  method context =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "context")[])
       : [`NSGraphicsContext] Objc.id))
  method clickCount =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "clickCount")[])
       : int)
  method buttonNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "buttonNumber")[])
       : int)
  method eventNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "eventNumber")[])
       : int)
  method pressure =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "pressure")[])
       : float)
  method locationInWindow =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "locationInWindow")[])
       : NSPoint.t)
  method deltaX =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "deltaX")[])
       : float)
  method deltaY =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "deltaY")[])
       : float)
  method deltaZ =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "deltaZ")[])
       : float)
  method characters =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "characters")[])
       : [`NSString] Objc.id))
  method charactersIgnoringModifiers =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "charactersIgnoringModifiers")[])
       : [`NSString] Objc.id))
  method isARepeat =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isARepeat")[])
       : bool)
  method keyCode =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "keyCode")[])
       : int)
  method trackingNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "trackingNumber")[])
       : int)
  method userData =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "userData")[])
       : [`void] Objc.id))
  method subtype =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "subtype")[])
       : int)
  method data1 =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "data1")[])
       : int)
  method data2 =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "data2")[])
       : int)
  method deviceID =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "deviceID")[])
       : int)
  method absoluteX =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "absoluteX")[])
       : int)
  method absoluteY =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "absoluteY")[])
       : int)
  method absoluteZ =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "absoluteZ")[])
       : int)
  method buttonMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "buttonMask")[])
       : int)
  method tilt =
    (get_point (Objc.invoke Objc.tag_nspoint self#repr (Selector.find "tilt")[])
       : NSPoint.t)
  method rotation =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "rotation")[])
       : float)
  method tangentialPressure =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "tangentialPressure")[])
       : float)
  method vendorDefined =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "vendorDefined")[])
       : [`NSObject] Objc.id)
  method vendorID =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "vendorID")[])
       : int)
  method tabletID =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "tabletID")[])
       : int)
  method pointingDeviceID =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pointingDeviceID")[])
       : int)
  method systemTabletID =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "systemTabletID")[])
       : int)
  method vendorPointingDeviceType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "vendorPointingDeviceType")[])
       : int)
  method pointingDeviceSerialNumber =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pointingDeviceSerialNumber")[])
       : int)
  method uniqueID =
    (get_int64 (Objc.invoke Objc.tag_int64 self#repr (Selector.find "uniqueID")[])
       : int64)
  method capabilityMask =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "capabilityMask")[])
       : int)
  method pointingDeviceType =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "pointingDeviceType")[])
       : int)
  method isEnteringProximity =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEnteringProximity")[])
       : bool)
end
