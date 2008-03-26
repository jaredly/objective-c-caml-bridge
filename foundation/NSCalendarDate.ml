(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSCalendarDate.methods
end

class t = fun (r :[`NSCalendarDate] id) -> object
  inherit methods
  inherit NSDate.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCalendarDate *)
let c = Classes.find "NSCalendarDate"
let _new()= (Objc.objcnew c : [`NSCalendarDate] id)
let alloc() = (Objc.objcalloc c : [`NSCalendarDate] id)
let dateWithYear_month_day_hour_minute_second_timeZone  (year : int) (month : int) (day : int) (hour : int) (minute : int) (second : int) (aTimeZone : [`NSTimeZone] Objc.t) =
    let sel, args = (
      Objc.arg year "dateWithYear" make_int
      ++ Objc.arg month "month" make_int
      ++ Objc.arg day "day" make_int
      ++ Objc.arg hour "hour" make_int
      ++ Objc.arg minute "minute" make_int
      ++ Objc.arg second "second" make_int
      ++ Objc.arg aTimeZone "timeZone" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSCalendarDate] Objc.id))
let dateWithString_calendarFormat  (description : [`NSString] Objc.t) (format : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg description "dateWithString" make_pointer_from_object
      ++ Objc.arg format "calendarFormat" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSCalendarDate] Objc.id))
let dateWithString_calendarFormat_locale  (description : [`NSString] Objc.t) (format : [`NSString] Objc.t) (dict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg description "dateWithString" make_pointer_from_object
      ++ Objc.arg format "calendarFormat" make_pointer_from_object
      ++ Objc.arg dict "locale" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSCalendarDate] Objc.id))
let calendarDate () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "calendarDate")[])
       : [`NSCalendarDate] Objc.id))
