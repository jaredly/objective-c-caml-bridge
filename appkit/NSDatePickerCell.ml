open Objc
open NSDate
open NSActionCell


external init : unit -> unit = "caml_init_NSDatePickerCell"
let _ = init()
(* Class object for NSObject *)
let class_NSObject = object
   val o = Classes.find "NSObject"
   method _new = (Objc.objcnew o : [`NSObject] nativeNSObject)
(* methods for category NSDatePickerCellDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSDatePickerCellDelegate *)
(*  UNSUPPORTED
   method datePickerCell  ~validateProposedDateValue:(proposedDateValue : (*pointer to pointer to NSDate*) unsupported ) ~timeInterval:(proposedTimeInterval : [`NSTimeInterval] Objc.t ) (aDatePickerCell : [`NSDatePickerCell] Objc.t) =
     let sel, args = (
       Objc.arg aDatePickerCell "datePickerCell" make_pointer_from_object
       ++ Objc.arg proposedDateValue "validateProposedDateValue" (*pointer to pointer to NSDate*) unsupported
       ++ Objc.arg proposedTimeInterval "timeInterval" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)

*)
end
(* Class object for NSDatePickerCell *)
let class_NSDatePickerCell = object
   val o = Classes.find "NSDatePickerCell"
   method _new = (Objc.objcnew o : [`NSDatePickerCell] nativeNSObject)
end
(* Encapsulation for native instance of NSDatePickerCell *)
class native_NSDatePickerCell = fun (o : [`NSDatePickerCell] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method datePickerStyle =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "datePickerStyle:")[]) : int)
   method setDatePickerStyle (newStyle : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDatePickerStyle:")[make_int newStyle]) : unit)
   method drawsBackground =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "drawsBackground:")[]) : bool)
   method setDrawsBackground (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDrawsBackground:")[make_bool flag]) : unit)
   method backgroundColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "backgroundColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setBackgroundColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setBackgroundColor:")[make_pointer_from_object color]) : unit)
   method textColor =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textColor:")[]) : [`NSColor] Objc.nativeNSObject)
   method setTextColor (color : [`NSColor] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTextColor:")[make_pointer_from_object color]) : unit)
   method datePickerMode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "datePickerMode:")[]) : int)
   method setDatePickerMode (newMode : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDatePickerMode:")[make_int newMode]) : unit)
(*  UNSUPPORTED
   method datePickerElements =
     ((*NSDatePickerElementFlags*) unsupported (Objc.invoke (*NSDatePickerElementFlags*) Objc.tag_unsupported o (Selector.find "datePickerElements:")[]) : (*NSDatePickerElementFlags*) unsupported)

*)
   method setDatePickerElements (elementFlags : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDatePickerElements:")[make_int elementFlags]) : unit)
   method calendar =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "calendar:")[]) : [`NSCalendar] Objc.nativeNSObject)
   method setCalendar (newCalendar : [`NSCalendar] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setCalendar:")[make_pointer_from_object newCalendar]) : unit)
   method locale =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "locale:")[]) : [`NSLocale] Objc.nativeNSObject)
   method setLocale (newLocale : [`NSLocale] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setLocale:")[make_pointer_from_object newLocale]) : unit)
   method timeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "timeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method setTimeZone (newTimeZone : [`NSTimeZone] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTimeZone:")[make_pointer_from_object newTimeZone]) : unit)
   method dateValue =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "dateValue:")[]) : [`NSDate] Objc.nativeNSObject)
   method setDateValue (newStartDate : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDateValue:")[make_pointer_from_object newStartDate]) : unit)
   method timeInterval =
     (get_float (Objc.invoke Objc.tag_float o (Selector.find "timeInterval:")[]) : float)
   method setTimeInterval (newTimeInterval : float) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setTimeInterval:")[make_float newTimeInterval]) : unit)
   method minDate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "minDate:")[]) : [`NSDate] Objc.nativeNSObject)
   method setMinDate (date : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMinDate:")[make_pointer_from_object date]) : unit)
   method maxDate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "maxDate:")[]) : [`NSDate] Objc.nativeNSObject)
   method setMaxDate (date : [`NSDate] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMaxDate:")[make_pointer_from_object date]) : unit)
   method delegate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "delegate:")[]) : [`NSObject] Objc.nativeNSObject)
   method setDelegate (anObject : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDelegate:")[make_pointer_from_object anObject]) : unit)
end
