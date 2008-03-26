(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSFileHandleAsynchronousAccess of NSFileHandle *)
class virtual methods_NSFileHandle = object (self)
  method virtual repr : [`NSObject] Objc.id
  method readInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "readInBackgroundAndNotifyForModes:")
      [make_pointer_from_object modes]) : unit)
  method readInBackgroundAndNotify =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "readInBackgroundAndNotify")[])
       : unit)
  method readToEndOfFileInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "readToEndOfFileInBackgroundAndNotifyForModes:")
      [make_pointer_from_object modes]) : unit)
  method readToEndOfFileInBackgroundAndNotify =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "readToEndOfFileInBackgroundAndNotify")[])
       : unit)
  method acceptConnectionInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "acceptConnectionInBackgroundAndNotifyForModes:")
      [make_pointer_from_object modes]) : unit)
  method acceptConnectionInBackgroundAndNotify =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "acceptConnectionInBackgroundAndNotify")[])
       : unit)
  method waitForDataInBackgroundAndNotifyForModes (modes : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "waitForDataInBackgroundAndNotifyForModes:")
      [make_pointer_from_object modes]) : unit)
  method waitForDataInBackgroundAndNotify =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "waitForDataInBackgroundAndNotify")[])
       : unit)
end
