open Objc
open NSDate


external init : unit -> unit = "caml_init_NSCalendarDate"
let _ = init()
(* Class object for NSDate *)
let class_NSDate = object
   val o = Classes.find "NSDate"
   method _new = (Objc.objcnew o : [`NSDate] nativeNSObject)
(* methods for category NSNaturalLangage *)
   (* skipping selector dateWithNaturalLanguageString *)
   method dateWithNaturalLanguageString  ?locale:(dict : [`NSDictionary] Objc.t option) (string : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg string "dateWithNaturalLanguageString" make_pointer_from_object
       ++ Objc.opt_arg dict "locale" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSDate] Objc.nativeNSObject)
(* methods for category NSCalendarDateExtras *)
   method dateWithString (aString : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dateWithString:")[make_pointer_from_object aString]) : [`NSDate] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDate *)
class native_NSDate = fun (o : [`NSDate] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSNaturalLangage *)
(* methods for category NSCalendarDateExtras *)
   method initWithString (description : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithString:")[make_pointer_from_object description]) : [`NSObject] Objc.nativeNSObject)
   method dateWithCalendarFormat  ~timeZone:(aTimeZone : [`NSTimeZone] Objc.t ) (format : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg format "dateWithCalendarFormat" make_pointer_from_object
       ++ Objc.arg aTimeZone "timeZone" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSCalendarDate] Objc.nativeNSObject)
   method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptionWithLocale:")[make_pointer_from_object locale]) : [`NSString] Objc.nativeNSObject)
   method descriptionWithCalendarFormat  ~timeZone:(aTimeZone : [`NSTimeZone] Objc.t ) ~locale:(locale : [`NSDictionary] Objc.t ) (format : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg format "descriptionWithCalendarFormat" make_pointer_from_object
       ++ Objc.arg aTimeZone "timeZone" make_pointer_from_object
       ++ Objc.arg locale "locale" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
end
(* Class object for NSCalendarDate *)
let class_NSCalendarDate = object
   val o = Classes.find "NSCalendarDate"
   method _new = (Objc.objcnew o : [`NSCalendarDate] nativeNSObject)
   method dateWithYear  ~month:(month : int ) ~day:(day : int ) ~hour:(hour : int ) ~minute:(minute : int ) ~second:(second : int ) ~timeZone:(aTimeZone : [`NSTimeZone] Objc.t ) (year : int) =
     let sel, args = (
       Objc.arg year "dateWithYear" make_int
       ++ Objc.arg month "month" make_int
       ++ Objc.arg day "day" make_int
       ++ Objc.arg hour "hour" make_int
       ++ Objc.arg minute "minute" make_int
       ++ Objc.arg second "second" make_int
       ++ Objc.arg aTimeZone "timeZone" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSCalendarDate] Objc.nativeNSObject)
   (* skipping selector dateWithString:calendarFormat *)
   method dateWithString  ~calendarFormat:(format : [`NSString] Objc.t ) ?locale:(dict : [`NSDictionary] Objc.t option) (description : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg description "dateWithString" make_pointer_from_object
       ++ Objc.arg format "calendarFormat" make_pointer_from_object
       ++ Objc.opt_arg dict "locale" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSCalendarDate] Objc.nativeNSObject)
   method calendarDate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "calendarDate:")[]) : [`NSCalendarDate] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSCalendarDate *)
class native_NSCalendarDate = fun (o : [`NSCalendarDate] nativeNSObject) -> object (self)
   val o = o
   method o = o
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
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithString *)
   (* skipping selector initWithString:calendarFormat *)
   method initWithString  ?calendarFormat:(format : [`NSString] Objc.t option) ?locale:(dict : [`NSDictionary] Objc.t option) (description : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg description "initWithString" make_pointer_from_object
       ++ Objc.opt_arg format "calendarFormat" make_pointer_from_object
       ++ Objc.opt_arg dict "locale" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method timeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "timeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method setTimeZone (aTimeZone : [`NSTimeZone] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTimeZone:")[make_pointer_from_object aTimeZone]) : unit)
   method calendarFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "calendarFormat:")[]) : [`NSString] Objc.nativeNSObject)
   method setCalendarFormat (format : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCalendarFormat:")[make_pointer_from_object format]) : unit)
   method yearOfCommonEra =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "yearOfCommonEra:")[]) : int)
   method monthOfYear =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "monthOfYear:")[]) : int)
   method dayOfMonth =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "dayOfMonth:")[]) : int)
   method dayOfWeek =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "dayOfWeek:")[]) : int)
   method dayOfYear =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "dayOfYear:")[]) : int)
   method dayOfCommonEra =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "dayOfCommonEra:")[]) : int)
   method hourOfDay =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "hourOfDay:")[]) : int)
   method minuteOfHour =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "minuteOfHour:")[]) : int)
   method secondOfMinute =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "secondOfMinute:")[]) : int)
   method dateByAddingYears  ~months:(month : int ) ~days:(day : int ) ~hours:(hour : int ) ~minutes:(minute : int ) ~seconds:(second : int ) (year : int) =
     let sel, args = (
       Objc.arg year "dateByAddingYears" make_int
       ++ Objc.arg month "months" make_int
       ++ Objc.arg day "days" make_int
       ++ Objc.arg hour "hours" make_int
       ++ Objc.arg minute "minutes" make_int
       ++ Objc.arg second "seconds" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSCalendarDate] Objc.nativeNSObject)
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
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   method descriptionWithLocale (locale : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "descriptionWithLocale:")[make_pointer_from_object locale]) : [`NSString] Objc.nativeNSObject)
   (* skipping selector descriptionWithCalendarFormat *)
   method descriptionWithCalendarFormat  ?locale:(locale : [`NSDictionary] Objc.t option) (format : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg format "descriptionWithCalendarFormat" make_pointer_from_object
       ++ Objc.opt_arg locale "locale" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSString] Objc.nativeNSObject)
end
