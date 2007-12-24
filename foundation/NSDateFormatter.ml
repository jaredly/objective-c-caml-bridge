(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSFormatter


external init : unit -> unit = "caml_init_NSDateFormatter"
let _ = init()
(* ENUMS *)
(* let_NSDateFormatterNoStyle = ?? *)
(* let_NSDateFormatterShortStyle = ?? *)
(* let_NSDateFormatterMediumStyle = ?? *)
(* let_NSDateFormatterLongStyle = ?? *)
(* let_NSDateFormatterFullStyle = ?? *)
let _NSDateFormatterBehaviorDefault = 0L
let _NSDateFormatterBehavior10_0 = 1000L
let _NSDateFormatterBehavior10_4 = 1040L


let make_NSFormatter_of_NSDateFormatter (o : [`NSDateFormatter] nativeNSObject) = (Obj.magic o : [`NSFormatter] nativeNSObject)
(* Class object for NSDateFormatter *)
let class_NSDateFormatter = object
   val repr = Classes.find "NSDateFormatter"
   method _new = (Objc.objcnew repr : [`NSDateFormatter] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDateFormatter] nativeNSObject)
(* methods for category NSDateFormatterCompatibility *)
   method defaultFormatterBehavior =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultFormatterBehavior:")[]) : [`NSDateFormatter] Objc.nativeNSObject)
   method setDefaultFormatterBehavior (behavior : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "setDefaultFormatterBehavior:")[make_int behavior]) : [`NSDateFormatter] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDateFormatter *)
class native_NSDateFormatter = fun (o : [`NSDateFormatter] nativeNSObject) -> object (self)
   inherit native_NSFormatter (make_NSFormatter_of_NSDateFormatter o) as super
(* methods for category NSDateFormatterCompatibility *)
   method initWithDateFormat  ~allowNaturalLanguage:(flag : bool ) (format : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg format "initWithDateFormat" make_pointer_from_object
       ++ Objc.arg flag "allowNaturalLanguage" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method allowsNaturalLanguage =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "allowsNaturalLanguage:")[]) : bool)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method getObjectValue  ~forString:(string : [`NSString] Objc.t ) ~range:(rangep : [`NSRange] Objc.t ) ~error:(error : bool ) (obj : [`id] Objc.t) =
     let sel, args = (
       Objc.arg obj "getObjectValue" make_pointer_from_object
       ++ Objc.arg string "forString" make_pointer_from_object
       ++ Objc.arg rangep "range" make_pointer_from_object
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method stringFromDate (date : [`NSDate] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringFromDate:")[make_pointer_from_object date]) : [`NSString] Objc.nativeNSObject)
   method dateFromString (string : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dateFromString:")[make_pointer_from_object string]) : [`NSDate] Objc.nativeNSObject)
   method dateFormat =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dateFormat:")[]) : [`NSString] Objc.nativeNSObject)
   method dateStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "dateStyle:")[]) : int)
   method setDateStyle (style : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDateStyle:")[make_int style]) : unit)
   method timeStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "timeStyle:")[]) : int)
   method setTimeStyle (style : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTimeStyle:")[make_int style]) : unit)
   method locale =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "locale:")[]) : [`NSLocale] Objc.nativeNSObject)
   method setLocale (locale : [`NSLocale] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLocale:")[make_pointer_from_object locale]) : unit)
   method generatesCalendarDates =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "generatesCalendarDates:")[]) : bool)
   method setGeneratesCalendarDates (b : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setGeneratesCalendarDates:")[make_bool b]) : unit)
   method formatterBehavior =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "formatterBehavior:")[]) : int)
   method setFormatterBehavior (behavior : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setFormatterBehavior:")[make_int behavior]) : unit)
   method setDateFormat (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDateFormat:")[make_pointer_from_object string]) : unit)
   method timeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "timeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method setTimeZone (tz : [`NSTimeZone] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTimeZone:")[make_pointer_from_object tz]) : unit)
   method calendar =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "calendar:")[]) : [`NSCalendar] Objc.nativeNSObject)
   method setCalendar (calendar : [`NSCalendar] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCalendar:")[make_pointer_from_object calendar]) : unit)
   method isLenient =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isLenient:")[]) : bool)
   method setLenient (b : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLenient:")[make_bool b]) : unit)
   method twoDigitStartDate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "twoDigitStartDate:")[]) : [`NSDate] Objc.nativeNSObject)
   method setTwoDigitStartDate (date : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTwoDigitStartDate:")[make_pointer_from_object date]) : unit)
   method defaultDate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "defaultDate:")[]) : [`NSDate] Objc.nativeNSObject)
   method setDefaultDate (date : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDefaultDate:")[make_pointer_from_object date]) : unit)
   method eraSymbols =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "eraSymbols:")[]) : [`NSArray] Objc.nativeNSObject)
   method setEraSymbols (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setEraSymbols:")[make_pointer_from_object array]) : unit)
   method monthSymbols =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "monthSymbols:")[]) : [`NSArray] Objc.nativeNSObject)
   method setMonthSymbols (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMonthSymbols:")[make_pointer_from_object array]) : unit)
   method shortMonthSymbols =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "shortMonthSymbols:")[]) : [`NSArray] Objc.nativeNSObject)
   method setShortMonthSymbols (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShortMonthSymbols:")[make_pointer_from_object array]) : unit)
   method weekdaySymbols =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "weekdaySymbols:")[]) : [`NSArray] Objc.nativeNSObject)
   method setWeekdaySymbols (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setWeekdaySymbols:")[make_pointer_from_object array]) : unit)
   method shortWeekdaySymbols =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "shortWeekdaySymbols:")[]) : [`NSArray] Objc.nativeNSObject)
   method setShortWeekdaySymbols (array : [`NSArray] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setShortWeekdaySymbols:")[make_pointer_from_object array]) : unit)
   method l_AMSymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_AMSymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setAMSymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAMSymbol:")[make_pointer_from_object string]) : unit)
   method l_PMSymbol =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_PMSymbol:")[]) : [`NSString] Objc.nativeNSObject)
   method setPMSymbol (string : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setPMSymbol:")[make_pointer_from_object string]) : unit)
end
