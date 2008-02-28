(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDatePicker *)
class virtual methods = object (self)
  method virtual repr : [`NSDatePicker] Objc.id
(*  UNSUPPORTED
  method datePickerStyle =
    ((*NSDatePickerStyle*) unsupported (Objc.invoke (*NSDatePickerStyle*) Objc.tag_unsupported self#repr (Selector.find "datePickerStyle")[])
       : (*NSDatePickerStyle*) unsupported)

*)
(*  UNSUPPORTED
  method setDatePickerStyle (newStyle : (*NSDatePickerStyle*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDatePickerStyle:")
      [(*NSDatePickerStyle*) unsupported newStyle]) : unit)

*)
  method isBezeled =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBezeled")[])
       : bool)
  method setBezeled (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBezeled:")
      [make_bool flag]) : unit)
  method isBordered =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isBordered")[])
       : bool)
  method setBordered (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBordered:")
      [make_bool flag]) : unit)
  method drawsBackground =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "drawsBackground")[])
       : bool)
  method setDrawsBackground (flag : bool) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDrawsBackground:")
      [make_bool flag]) : unit)
  method backgroundColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "backgroundColor")[])
       : [`NSColor] Objc.id))
  method setBackgroundColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setBackgroundColor:")
      [make_pointer_from_object color]) : unit)
  method textColor =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "textColor")[])
       : [`NSColor] Objc.id))
  method setTextColor (color : [`NSColor] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTextColor:")
      [make_pointer_from_object color]) : unit)
(*  UNSUPPORTED
  method datePickerMode =
    ((*NSDatePickerMode*) unsupported (Objc.invoke (*NSDatePickerMode*) Objc.tag_unsupported self#repr (Selector.find "datePickerMode")[])
       : (*NSDatePickerMode*) unsupported)

*)
(*  UNSUPPORTED
  method setDatePickerMode (newMode : (*NSDatePickerMode*) unsupported) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDatePickerMode:")
      [(*NSDatePickerMode*) unsupported newMode]) : unit)

*)
(*  UNSUPPORTED
  method datePickerElements =
    ((*NSDatePickerElementFlags*) unsupported (Objc.invoke (*NSDatePickerElementFlags*) Objc.tag_unsupported self#repr (Selector.find "datePickerElements")[])
       : (*NSDatePickerElementFlags*) unsupported)

*)
  method setDatePickerElements (elementFlags : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDatePickerElements:")
      [make_int elementFlags]) : unit)
  method calendar =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "calendar")[])
       : [`NSCalendar] Objc.id))
  method setCalendar (newCalendar : [`NSCalendar] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCalendar:")
      [make_pointer_from_object newCalendar]) : unit)
  method locale =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "locale")[])
       : [`NSLocale] Objc.id))
  method setLocale (newLocale : [`NSLocale] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLocale:")
      [make_pointer_from_object newLocale]) : unit)
  method timeZone =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "timeZone")[])
       : [`NSTimeZone] Objc.id))
  method setTimeZone (newTimeZone : [`NSTimeZone] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTimeZone:")
      [make_pointer_from_object newTimeZone]) : unit)
  method dateValue =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "dateValue")[])
       : [`NSDate] Objc.id))
  method setDateValue (newStartDate : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDateValue:")
      [make_pointer_from_object newStartDate]) : unit)
  method timeInterval =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "timeInterval")[])
       : float)
  method setTimeInterval (newTimeInterval : float) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setTimeInterval:")
      [make_float newTimeInterval]) : unit)
  method minDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "minDate")[])
       : [`NSDate] Objc.id))
  method setMinDate (date : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinDate:")
      [make_pointer_from_object date]) : unit)
  method maxDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "maxDate")[])
       : [`NSDate] Objc.id))
  method setMaxDate (date : [`NSDate] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMaxDate:")
      [make_pointer_from_object date]) : unit)
  method delegate =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "delegate")[])
       : [`NSObject] Objc.id)
  method setDelegate (anObject : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDelegate:")
      [make_pointer_from_object anObject]) : unit)
end
