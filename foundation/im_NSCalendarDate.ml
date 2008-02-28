(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCalendarDate *)
class virtual methods = object (self)
  method virtual repr : [`NSCalendarDate] Objc.id
  method initWithYear  ~month:(month : int ) ~day:(day : int ) ~hour:(hour : int ) ~minute:(minute : int ) ~second:(second : int ) ~timeZone:(aTimeZone : [`NSTimeZone] Objc.t ) (year : int) =
    let sel, args = (
      Objc.arg year "initWithYear" make_int
      ++ Objc.arg month "month" make_int
      ++ Objc.arg day "day" make_int
      ++ Objc.arg hour "hour" make_int
      ++ Objc.arg minute "minute" make_int
      ++ Objc.arg second "second" make_int
      ++ Objc.arg aTimeZone "timeZone" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithString *)
  (* skipping selector initWithString:calendarFormat *)
  method initWithString  ?calendarFormat:(format : [`NSString] Objc.t option) ?locale:(dict : [`NSDictionary] Objc.t option) (description : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg description "initWithString" make_pointer_from_object
      ++ Objc.opt_arg format "calendarFormat" make_pointer_from_object
      ++ Objc.opt_arg dict "locale" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method timeZone =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "timeZone")[])
       : [`NSTimeZone] Objc.id))
  method setTimeZone (aTimeZone : [`NSTimeZone] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTimeZone:")
      [make_pointer_from_object aTimeZone]) : unit)
  method calendarFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "calendarFormat")[])
       : [`NSString] Objc.id))
  method setCalendarFormat (format : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCalendarFormat:")
      [make_pointer_from_object format]) : unit)
  method yearOfCommonEra =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "yearOfCommonEra")[])
       : int)
  method monthOfYear =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "monthOfYear")[])
       : int)
  method dayOfMonth =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "dayOfMonth")[])
       : int)
  method dayOfWeek =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "dayOfWeek")[])
       : int)
  method dayOfYear =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "dayOfYear")[])
       : int)
  method dayOfCommonEra =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "dayOfCommonEra")[])
       : int)
  method hourOfDay =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "hourOfDay")[])
       : int)
  method minuteOfHour =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "minuteOfHour")[])
       : int)
  method secondOfMinute =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "secondOfMinute")[])
       : int)
  method dateByAddingYears  ~months:(month : int ) ~days:(day : int ) ~hours:(hour : int ) ~minutes:(minute : int ) ~seconds:(second : int ) (year : int) =
    let sel, args = (
      Objc.arg year "dateByAddingYears" make_int
      ++ Objc.arg month "months" make_int
      ++ Objc.arg day "days" make_int
      ++ Objc.arg hour "hours" make_int
      ++ Objc.arg minute "minutes" make_int
      ++ Objc.arg second "seconds" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSCalendarDate] Objc.id))
  method years  ~months:(mop : [`int] Objc.t ) ~days:(dp : [`int] Objc.t ) ~hours:(hp : [`int] Objc.t ) ~minutes:(mip : [`int] Objc.t ) ~seconds:(sp : [`int] Objc.t ) ~sinceDate:(date : [`NSCalendarDate] Objc.t ) (yp : [`int] Objc.t) =
    let sel, args = (
      Objc.arg yp "years" make_pointer_from_object
      ++ Objc.arg mop "months" make_pointer_from_object
      ++ Objc.arg dp "days" make_pointer_from_object
      ++ Objc.arg hp "hours" make_pointer_from_object
      ++ Objc.arg mip "minutes" make_pointer_from_object
      ++ Objc.arg sp "seconds" make_pointer_from_object
      ++ Objc.arg date "sinceDate" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptionWithLocale:")
      [make_pointer_from_object locale]) : [`NSString] Objc.id))
  (* skipping selector descriptionWithCalendarFormat *)
  method descriptionWithCalendarFormat  ?locale:(locale : [`NSDictionary] Objc.t option) (format : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg format "descriptionWithCalendarFormat" make_pointer_from_object
      ++ Objc.opt_arg locale "locale" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
end
