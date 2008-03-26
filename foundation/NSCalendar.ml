(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* ENUMS *)
(* let_NSWrapCalendarComponents = ?? *)
let _NSUndefinedDateComponent = 2147483647L


class virtual methods = object
  inherit Im_NSCalendar.methods
end

class t = fun (r :[`NSCalendar] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSCalendar *)
let c = Classes.find "NSCalendar"
let _new()= (Objc.objcnew c : [`NSCalendar] id)
let alloc() = (Objc.objcalloc c : [`NSCalendar] id)
let currentCalendar () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "currentCalendar")[])
       : [`NSCalendar] Objc.id))
