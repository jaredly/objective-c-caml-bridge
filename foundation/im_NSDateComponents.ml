(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDateComponents *)
class virtual methods = object (self)
  method virtual repr : [`NSDateComponents] Objc.id
  method era =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "era")[])
       : int)
  method year =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "year")[])
       : int)
  method month =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "month")[])
       : int)
  method day =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "day")[])
       : int)
  method hour =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "hour")[])
       : int)
  method minute =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "minute")[])
       : int)
  method second =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "second")[])
       : int)
  method week =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "week")[])
       : int)
  method weekday =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "weekday")[])
       : int)
  method weekdayOrdinal =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "weekdayOrdinal")[])
       : int)
  method setEra (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setEra:")
      [make_int v]) : unit)
  method setYear (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setYear:")
      [make_int v]) : unit)
  method setMonth (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMonth:")
      [make_int v]) : unit)
  method setDay (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setDay:")
      [make_int v]) : unit)
  method setHour (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setHour:")
      [make_int v]) : unit)
  method setMinute (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setMinute:")
      [make_int v]) : unit)
  method setSecond (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setSecond:")
      [make_int v]) : unit)
  method setWeek (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWeek:")
      [make_int v]) : unit)
  method setWeekday (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWeekday:")
      [make_int v]) : unit)
  method setWeekdayOrdinal (v : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setWeekdayOrdinal:")
      [make_int v]) : unit)
end
