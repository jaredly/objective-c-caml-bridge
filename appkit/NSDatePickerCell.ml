(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
let _NSHourMinuteDatePickerElementFlag = 12L
let _NSHourMinuteSecondDatePickerElementFlag = 14L
let _NSTimeZoneDatePickerElementFlag = 16L
let _NSYearMonthDatePickerElementFlag = 192L
let _NSYearMonthDayDatePickerElementFlag = 224L
let _NSEraDatePickerElementFlag = 256L


class t = fun (r :[`NSDatePickerCell] id) -> object
  inherit Im_NSDatePickerCell.methods
  method repr = r
end

(* Class object for NSDatePickerCell *)
let c = Classes.find "NSDatePickerCell"
let _new()= (Objc.objcnew c : [`NSDatePickerCell] id)
let alloc() = (Objc.objcalloc c : [`NSDatePickerCell] id)
