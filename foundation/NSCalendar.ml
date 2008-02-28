(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
(* let_NSWrapCalendarComponents = ?? *)
let _NSUndefinedDateComponent = 2147483647L


class t = fun (r :[`NSCalendar] id) -> object
  inherit Im_NSCalendar.methods
  method repr = r
end

(* Class object for NSCalendar *)
let c = Classes.find "NSCalendar"
let _new()= (Objc.objcnew c : [`NSCalendar] id)
let alloc() = (Objc.objcalloc c : [`NSCalendar] id)
let currentCalendar () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentCalendar")[])
       : [`NSCalendar] Objc.id))
