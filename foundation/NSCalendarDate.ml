(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSCalendarDate] id) -> object
  inherit Im_NSCalendarDate.methods
  method repr = r
end

(* Class object for NSCalendarDate *)
let c = Classes.find "NSCalendarDate"
let _new()= (Objc.objcnew c : [`NSCalendarDate] id)
let alloc() = (Objc.objcalloc c : [`NSCalendarDate] id)
let dateWithYear  ~month:(month : int ) ~day:(day : int ) ~hour:(hour : int ) ~minute:(minute : int ) ~second:(second : int ) ~timeZone:(aTimeZone : [`NSTimeZone] Objc.t ) (year : int) =
    let sel, args = (
      Objc.arg year "dateWithYear" make_int
      ++ Objc.arg month "month" make_int
      ++ Objc.arg day "day" make_int
      ++ Objc.arg hour "hour" make_int
      ++ Objc.arg minute "minute" make_int
      ++ Objc.arg second "second" make_int
      ++ Objc.arg aTimeZone "timeZone" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSCalendarDate] Objc.id))
  (* skipping selector dateWithString:calendarFormat *)
let dateWithString  ~calendarFormat:(format : [`NSString] Objc.t ) ?locale:(dict : [`NSDictionary] Objc.t option) (description : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg description "dateWithString" make_pointer_from_object
      ++ Objc.arg format "calendarFormat" make_pointer_from_object
      ++ Objc.opt_arg dict "locale" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSCalendarDate] Objc.id))
let calendarDate () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "calendarDate")[])
       : [`NSCalendarDate] Objc.id))
