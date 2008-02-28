(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSTimeZone *)
class virtual methods = object (self)
  method virtual repr : [`NSTimeZone] Objc.id
  method name =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "name")[])
       : [`NSString] Objc.id))
  method data =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "data")[])
       : [`NSData] Objc.id))
  method secondsFromGMTForDate (aDate : [`NSDate] Objc.t) =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "secondsFromGMTForDate:")
      [make_pointer_from_object aDate]) : int)
  method abbreviationForDate (aDate : [`NSDate] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "abbreviationForDate:")
      [make_pointer_from_object aDate]) : [`NSString] Objc.id))
  method isDaylightSavingTimeForDate (aDate : [`NSDate] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDaylightSavingTimeForDate:")
      [make_pointer_from_object aDate]) : bool)
end
