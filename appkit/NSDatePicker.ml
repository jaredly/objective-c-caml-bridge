(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSControl
open NSDatePickerCell


external init : unit -> unit = "caml_init_NSDatePicker"
let _ = init()
let make_NSControl_of_NSDatePicker (o : [`NSDatePicker] nativeNSObject) = (Obj.magic o : [`NSControl] nativeNSObject)
(* Class object for NSDatePicker *)
let class_NSDatePicker = object
   val repr = Classes.find "NSDatePicker"
   method _new = (Objc.objcnew repr : [`NSDatePicker] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDatePicker] nativeNSObject)
end
(* Encapsulation for native instance of NSDatePicker *)
class native_NSDatePicker = fun (o : [`NSDatePicker] nativeNSObject) -> object (self)
   inherit native_NSControl (make_NSControl_of_NSDatePicker o) as super
(*  UNSUPPORTED
   method datePickerStyle =
     ((*NSDatePickerStyle*) unsupported (Objc.invoke (*NSDatePickerStyle*) Objc.tag_unsupported repr (Selector.find "datePickerStyle:")[]) : (*NSDatePickerStyle*) unsupported)

*)
(*  UNSUPPORTED
   method setDatePickerStyle (newStyle : (*NSDatePickerStyle*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDatePickerStyle:")[(*NSDatePickerStyle*) unsupported newStyle]) : unit)

*)
   method isBezeled =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isBezeled:")[]) : bool)
   method setBezeled (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBezeled:")[make_bool flag]) : unit)
   method isBordered =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isBordered:")[]) : bool)
   method setBordered (flag : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setBordered:")[make_bool flag]) : unit)
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
(*  UNSUPPORTED
   method datePickerMode =
     ((*NSDatePickerMode*) unsupported (Objc.invoke (*NSDatePickerMode*) Objc.tag_unsupported repr (Selector.find "datePickerMode:")[]) : (*NSDatePickerMode*) unsupported)

*)
(*  UNSUPPORTED
   method setDatePickerMode (newMode : (*NSDatePickerMode*) unsupported) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setDatePickerMode:")[(*NSDatePickerMode*) unsupported newMode]) : unit)

*)
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
