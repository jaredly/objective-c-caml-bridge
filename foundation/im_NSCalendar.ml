(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSCalendar *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithCalendarIdentifier (ident : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCalendarIdentifier:")
      [make_pointer_from_object ident]) : [`NSObject] Objc.id)
  method calendarIdentifier =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "calendarIdentifier")[])
       : [`NSString] Objc.id))
  method setLocale (locale : [`NSLocale] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLocale:")
      [make_pointer_from_object locale]) : unit)
  method locale =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "locale")[])
       : [`NSLocale] Objc.id))
  method setTimeZone (tz : [`NSTimeZone] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTimeZone:")
      [make_pointer_from_object tz]) : unit)
  method timeZone =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "timeZone")[])
       : [`NSTimeZone] Objc.id))
  method setFirstWeekday (weekday : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFirstWeekday:")
      [make_int weekday]) : unit)
  method firstWeekday =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "firstWeekday")[])
       : int)
  method setMinimumDaysInFirstWeek (mdw : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinimumDaysInFirstWeek:")
      [make_int mdw]) : unit)
  method minimumDaysInFirstWeek =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "minimumDaysInFirstWeek")[])
       : int)
  method minimumRangeOfUnit (unit : int) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "minimumRangeOfUnit:")
      [make_int unit]) : NSRange.t)
  method maximumRangeOfUnit (unit : int) =
    (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find "maximumRangeOfUnit:")
      [make_int unit]) : NSRange.t)
  method rangeOfUnit_inUnit_forDate  (smaller : int) (larger : int) (date : [`NSDate] Objc.t) =
    let sel, args = (
      Objc.arg smaller "rangeOfUnit" make_int
      ++ Objc.arg larger "inUnit" make_int
      ++ Objc.arg date "forDate" make_pointer_from_object
    ) ([],[]) in
      (get_range (Objc.invoke Objc.tag_nsrange self#repr (Selector.find_list sel) args)
       : NSRange.t)
  method ordinalityOfUnit_inUnit_forDate  (smaller : int) (larger : int) (date : [`NSDate] Objc.t) =
    let sel, args = (
      Objc.arg smaller "ordinalityOfUnit" make_int
      ++ Objc.arg larger "inUnit" make_int
      ++ Objc.arg date "forDate" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method dateFromComponents (comps : [`NSDateComponents] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dateFromComponents:")
      [make_pointer_from_object comps]) : [`NSDate] Objc.id))
  method components_fromDate  (unitFlags : int) (date : [`NSDate] Objc.t) =
    let sel, args = (
      Objc.arg unitFlags "components" make_int
      ++ Objc.arg date "fromDate" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDateComponents] Objc.id))
  method dateByAddingComponents_toDate_options  (comps : [`NSDateComponents] Objc.t) (date : [`NSDate] Objc.t) (opts : int) =
    let sel, args = (
      Objc.arg comps "dateByAddingComponents" make_pointer_from_object
      ++ Objc.arg date "toDate" make_pointer_from_object
      ++ Objc.arg opts "options" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDate] Objc.id))
  method components_fromDate_toDate_options  (unitFlags : int) (startingDate : [`NSDate] Objc.t) (resultDate : [`NSDate] Objc.t) (opts : int) =
    let sel, args = (
      Objc.arg unitFlags "components" make_int
      ++ Objc.arg startingDate "fromDate" make_pointer_from_object
      ++ Objc.arg resultDate "toDate" make_pointer_from_object
      ++ Objc.arg opts "options" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSDateComponents] Objc.id))
end
