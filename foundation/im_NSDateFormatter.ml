(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDateFormatter *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method getObjectValue_forString_range_error  (obj : [`id] Objc.t) (string : [`NSString] Objc.t) (rangep : [`NSRange] Objc.t) (error : bool) =
    let sel, args = (
      Objc.arg obj "getObjectValue" make_pointer_from_object
      ++ Objc.arg string "forString" make_pointer_from_object
      ++ Objc.arg rangep "range" make_pointer_from_object
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method stringFromDate (date : [`NSDate] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "stringFromDate:")
      [make_pointer_from_object date]) : [`NSString] Objc.id))
  method dateFromString (string : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dateFromString:")
      [make_pointer_from_object string]) : [`NSDate] Objc.id))
  method dateFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dateFormat")[])
       : [`NSString] Objc.id))
  method dateStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "dateStyle")[])
       : int)
  method setDateStyle (style : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDateStyle:")
      [make_int style]) : unit)
  method timeStyle =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "timeStyle")[])
       : int)
  method setTimeStyle (style : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTimeStyle:")
      [make_int style]) : unit)
  method locale =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "locale")[])
       : [`NSLocale] Objc.id))
  method setLocale (locale : [`NSLocale] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLocale:")
      [make_pointer_from_object locale]) : unit)
  method generatesCalendarDates =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "generatesCalendarDates")[])
       : bool)
  method setGeneratesCalendarDates (b : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setGeneratesCalendarDates:")
      [make_bool b]) : unit)
  method formatterBehavior =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "formatterBehavior")[])
       : int)
  method setFormatterBehavior (behavior : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setFormatterBehavior:")
      [make_int behavior]) : unit)
  method setDateFormat (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDateFormat:")
      [make_pointer_from_object string]) : unit)
  method timeZone =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "timeZone")[])
       : [`NSTimeZone] Objc.id))
  method setTimeZone (tz : [`NSTimeZone] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTimeZone:")
      [make_pointer_from_object tz]) : unit)
  method calendar =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "calendar")[])
       : [`NSCalendar] Objc.id))
  method setCalendar (calendar : [`NSCalendar] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCalendar:")
      [make_pointer_from_object calendar]) : unit)
  method isLenient =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isLenient")[])
       : bool)
  method setLenient (b : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLenient:")
      [make_bool b]) : unit)
  method twoDigitStartDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "twoDigitStartDate")[])
       : [`NSDate] Objc.id))
  method setTwoDigitStartDate (date : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTwoDigitStartDate:")
      [make_pointer_from_object date]) : unit)
  method defaultDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "defaultDate")[])
       : [`NSDate] Objc.id))
  method setDefaultDate (date : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDefaultDate:")
      [make_pointer_from_object date]) : unit)
  method eraSymbols =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "eraSymbols")[])
       : [`NSArray] Objc.id))
  method setEraSymbols (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEraSymbols:")
      [make_pointer_from_object array]) : unit)
  method monthSymbols =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "monthSymbols")[])
       : [`NSArray] Objc.id))
  method setMonthSymbols (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMonthSymbols:")
      [make_pointer_from_object array]) : unit)
  method shortMonthSymbols =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "shortMonthSymbols")[])
       : [`NSArray] Objc.id))
  method setShortMonthSymbols (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShortMonthSymbols:")
      [make_pointer_from_object array]) : unit)
  method weekdaySymbols =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "weekdaySymbols")[])
       : [`NSArray] Objc.id))
  method setWeekdaySymbols (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWeekdaySymbols:")
      [make_pointer_from_object array]) : unit)
  method shortWeekdaySymbols =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "shortWeekdaySymbols")[])
       : [`NSArray] Objc.id))
  method setShortWeekdaySymbols (array : [`NSArray] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setShortWeekdaySymbols:")
      [make_pointer_from_object array]) : unit)
  method getAMSymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "AMSymbol")[])
       : [`NSString] Objc.id))
  method setAMSymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setAMSymbol:")
      [make_pointer_from_object string]) : unit)
  method getPMSymbol =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "PMSymbol")[])
       : [`NSString] Objc.id))
  method setPMSymbol (string : [`NSString] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setPMSymbol:")
      [make_pointer_from_object string]) : unit)
end
