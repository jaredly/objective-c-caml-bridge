(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedDate of NSDate *)
class virtual methods_NSDate = object (self)
  method virtual repr : [`NSDate] Objc.id
  method timeIntervalSinceDate (anotherDate : [`NSDate] Objc.t) =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "timeIntervalSinceDate:")
      [make_pointer_from_object anotherDate]) : float)
  method timeIntervalSinceNow =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "timeIntervalSinceNow")[])
       : float)
  method timeIntervalSince1970 =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "timeIntervalSince1970")[])
       : float)
  method addTimeInterval (seconds : float) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "addTimeInterval:")
      [make_float seconds]) : [`NSObject] Objc.id)
  method earlierDate (anotherDate : [`NSDate] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "earlierDate:")
      [make_pointer_from_object anotherDate]) : [`NSDate] Objc.id))
  method laterDate (anotherDate : [`NSDate] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "laterDate:")
      [make_pointer_from_object anotherDate]) : [`NSDate] Objc.id))
  method compare (other : [`NSDate] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "compare:")
      [make_pointer_from_object other]) : int)
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method isEqualToDate (otherDate : [`NSDate] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToDate:")
      [make_pointer_from_object otherDate]) : bool)
end
