(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedTimeZone of NSTimeZone *)
class virtual methods_NSTimeZone = object (self)
  method virtual repr : [`NSObject] Objc.id
  method secondsFromGMT =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "secondsFromGMT")[])
       : int)
  method abbreviation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "abbreviation")[])
       : [`NSString] Objc.id))
  method isDaylightSavingTime =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isDaylightSavingTime")[])
       : bool)
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method isEqualToTimeZone (aTimeZone : [`NSTimeZone] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToTimeZone:")
      [make_pointer_from_object aTimeZone]) : bool)
end
