(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSCalendarDateExtras of NSDate *)
class virtual methods_NSDate = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithString (description : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithString:")
      [make_pointer_from_object description]) : [`NSObject] Objc.id)
  method dateWithCalendarFormat_timeZone  (format : [`NSString] Objc.t) (aTimeZone : [`NSTimeZone] Objc.t) =
    let sel, args = (
      Objc.arg format "dateWithCalendarFormat" make_pointer_from_object
      ++ Objc.arg aTimeZone "timeZone" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSCalendarDate] Objc.id))
  method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptionWithLocale:")
      [make_pointer_from_object locale]) : [`NSString] Objc.id))
  method descriptionWithCalendarFormat_timeZone_locale  (format : [`NSString] Objc.t) (aTimeZone : [`NSTimeZone] Objc.t) (locale : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg format "descriptionWithCalendarFormat" make_pointer_from_object
      ++ Objc.arg aTimeZone "timeZone" make_pointer_from_object
      ++ Objc.arg locale "locale" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
end
