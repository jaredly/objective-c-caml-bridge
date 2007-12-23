open Objc
open NSObject
open NSRange


external init : unit -> unit = "caml_init_NSCalendar"
let _ = init()
(* Class object for NSCalendar *)
let class_NSCalendar = object
   val o = Classes.find "NSCalendar"
   method _new = (Objc.objcnew o : [`NSCalendar] nativeNSObject)
   method currentCalendar =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "currentCalendar:")[]) : [`NSCalendar] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSCalendar *)
class native_NSCalendar = fun (o : [`NSCalendar] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithCalendarIdentifier (ident : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithCalendarIdentifier:")[make_pointer_from_object ident]) : [`NSObject] Objc.nativeNSObject)
   method calendarIdentifier =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "calendarIdentifier:")[]) : [`NSString] Objc.nativeNSObject)
   method setLocale (locale : [`NSLocale] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLocale:")[make_pointer_from_object locale]) : unit)
   method locale =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "locale:")[]) : [`NSLocale] Objc.nativeNSObject)
   method setTimeZone (tz : [`NSTimeZone] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTimeZone:")[make_pointer_from_object tz]) : unit)
   method timeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "timeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method setFirstWeekday (weekday : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setFirstWeekday:")[make_int weekday]) : unit)
   method firstWeekday =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "firstWeekday:")[]) : int)
   method setMinimumDaysInFirstWeek (mdw : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinimumDaysInFirstWeek:")[make_int mdw]) : unit)
   method minimumDaysInFirstWeek =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "minimumDaysInFirstWeek:")[]) : int)
   method minimumRangeOfUnit (unit : int) =
     (get_range (Objc.invoke Objc.tag_nsrange o (Selector.find "minimumRangeOfUnit:")[make_int unit]) : (int * int))
   method maximumRangeOfUnit (unit : int) =
     (get_range (Objc.invoke Objc.tag_nsrange o (Selector.find "maximumRangeOfUnit:")[make_int unit]) : (int * int))
   method rangeOfUnit  ~inUnit:(larger : int ) ~forDate:(date : [`NSDate] Objc.t ) (smaller : int) =
     let sel, args = (
       Objc.arg smaller "rangeOfUnit" make_int
       ++ Objc.arg larger "inUnit" make_int
       ++ Objc.arg date "forDate" make_pointer_from_object
     ) ([],[]) in
       (get_range (Objc.invoke Objc.tag_nsrange o (Selector.find_list sel) args) : (int * int))
   method ordinalityOfUnit  ~inUnit:(larger : int ) ~forDate:(date : [`NSDate] Objc.t ) (smaller : int) =
     let sel, args = (
       Objc.arg smaller "ordinalityOfUnit" make_int
       ++ Objc.arg larger "inUnit" make_int
       ++ Objc.arg date "forDate" make_pointer_from_object
     ) ([],[]) in
       (get_int (Objc.invoke Objc.tag_int o (Selector.find_list sel) args) : int)
   method dateFromComponents (comps : [`NSDateComponents] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dateFromComponents:")[make_pointer_from_object comps]) : [`NSDate] Objc.nativeNSObject)
   (* skipping selector components:fromDate *)
   method dateByAddingComponents  ~toDate:(date : [`NSDate] Objc.t ) ~options:(opts : int ) (comps : [`NSDateComponents] Objc.t) =
     let sel, args = (
       Objc.arg comps "dateByAddingComponents" make_pointer_from_object
       ++ Objc.arg date "toDate" make_pointer_from_object
       ++ Objc.arg opts "options" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSDate] Objc.nativeNSObject)
   method components  ~fromDate:(startingDate : [`NSDate] Objc.t ) ?toDate:(resultDate : [`NSDate] Objc.t option) ?options:(opts : int option) (unitFlags : int) =
     let sel, args = (
       Objc.arg unitFlags "components" make_int
       ++ Objc.arg startingDate "fromDate" make_pointer_from_object
       ++ Objc.opt_arg resultDate "toDate" make_pointer_from_object
       ++ Objc.opt_arg opts "options" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSDateComponents] Objc.nativeNSObject)
end
(* Class object for NSDateComponents *)
let class_NSDateComponents = object
   val o = Classes.find "NSDateComponents"
   method _new = (Objc.objcnew o : [`NSDateComponents] nativeNSObject)
end
(* Encapsulation for native instance of NSDateComponents *)
class native_NSDateComponents = fun (o : [`NSDateComponents] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method era =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "era:")[]) : int)
   method year =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "year:")[]) : int)
   method month =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "month:")[]) : int)
   method day =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "day:")[]) : int)
   method hour =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "hour:")[]) : int)
   method minute =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "minute:")[]) : int)
   method second =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "second:")[]) : int)
   method week =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "week:")[]) : int)
   method weekday =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "weekday:")[]) : int)
   method weekdayOrdinal =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "weekdayOrdinal:")[]) : int)
   method setEra (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setEra:")[make_int v]) : unit)
   method setYear (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setYear:")[make_int v]) : unit)
   method setMonth (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMonth:")[make_int v]) : unit)
   method setDay (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDay:")[make_int v]) : unit)
   method setHour (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setHour:")[make_int v]) : unit)
   method setMinute (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinute:")[make_int v]) : unit)
   method setSecond (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setSecond:")[make_int v]) : unit)
   method setWeek (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWeek:")[make_int v]) : unit)
   method setWeekday (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWeekday:")[make_int v]) : unit)
   method setWeekdayOrdinal (v : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setWeekdayOrdinal:")[make_int v]) : unit)
end
