(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSDate
open NSActionCell


external init : unit -> unit = "caml_init_NSDatePickerCell"
let _ = init()
(* ENUMS *)
let _NSHourMinuteDatePickerElementFlag = 12L
let _NSHourMinuteSecondDatePickerElementFlag = 14L
let _NSTimeZoneDatePickerElementFlag = 16L
let _NSYearMonthDatePickerElementFlag = 192L
let _NSYearMonthDayDatePickerElementFlag = 224L
let _NSEraDatePickerElementFlag = 256L


let make_NSActionCell_of_NSDatePickerCell (o : [`NSDatePickerCell] nativeNSObject) = (Obj.magic o : [`NSActionCell] nativeNSObject)
(* Class object for NSDatePickerCell *)
let class_NSDatePickerCell = object
   val repr = Classes.find "NSDatePickerCell"
   method _new = (Objc.objcnew repr : [`NSDatePickerCell] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDatePickerCell] nativeNSObject)
end
(* Encapsulation for native instance of NSDatePickerCell *)
class native_NSDatePickerCell = fun (o : [`NSDatePickerCell] nativeNSObject) -> object (self)
   inherit native_NSActionCell (make_NSActionCell_of_NSDatePickerCell o) as super
   method datePickerStyle =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "datePickerStyle:")[]) : int)
   method setDatePickerStyle (newStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDatePickerStyle:")[make_int newStyle]) : unit)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "drawsBackground:")[]) : bool)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method textColor =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "textColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setTextColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTextColor:")[make_pointer_from_object color]) : unit)
   method datePickerMode =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "datePickerMode:")[]) : int)
   method setDatePickerMode (newMode : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDatePickerMode:")[make_int newMode]) : unit)
(*  UNSUPPORTED
   method datePickerElements =
     ((*NSDatePickerElementFlags*) unsupported (Objc.invoke (*NSDatePickerElementFlags*) Objc.tag_unsupported repr (Selector.find "datePickerElements:")[]) : (*NSDatePickerElementFlags*) unsupported)

*)
   method setDatePickerElements (elementFlags : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDatePickerElements:")[make_int elementFlags]) : unit)
   method calendar =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "calendar:")[]) : [`NSCalendar] Objc.nativeNSObject)
   method setCalendar (newCalendar : [`NSCalendar] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCalendar:")[make_pointer_from_object newCalendar]) : unit)
   method locale =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "locale:")[]) : [`NSLocale] Objc.nativeNSObject)
   method setLocale (newLocale : [`NSLocale] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setLocale:")[make_pointer_from_object newLocale]) : unit)
   method timeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "timeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method setTimeZone (newTimeZone : [`NSTimeZone] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTimeZone:")[make_pointer_from_object newTimeZone]) : unit)
   method dateValue =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dateValue:")[]) : [`NSDate] Objc.nativeNSObject)
   method setDateValue (newStartDate : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDateValue:")[make_pointer_from_object newStartDate]) : unit)
   method timeInterval =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "timeInterval:")[]) : float)
   method setTimeInterval (newTimeInterval : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTimeInterval:")[make_float newTimeInterval]) : unit)
   method minDate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "minDate:")[]) : [`NSDate] Objc.nativeNSObject)
   method setMinDate (date : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMinDate:")[make_pointer_from_object date]) : unit)
   method maxDate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "maxDate:")[]) : [`NSDate] Objc.nativeNSObject)
   method setMaxDate (date : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMaxDate:")[make_pointer_from_object date]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSDatePickerCellDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSDatePickerCellDelegate *)
(*  UNSUPPORTED
   method datePickerCell  ~validateProposedDateValue:(proposedDateValue : (*pointer to pointer to NSDate*) unsupported ) ~timeInterval:(proposedTimeInterval : [`NSTimeInterval] Objc.t ) (aDatePickerCell : [`NSDatePickerCell] Objc.t) =
     let sel, args = (
       Objc.arg aDatePickerCell "datePickerCell" make_pointer_from_object
       ++ Objc.arg proposedDateValue "validateProposedDateValue" (*pointer to pointer to NSDate*) unsupported
       ++ Objc.arg proposedTimeInterval "timeInterval" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)

*)
end
