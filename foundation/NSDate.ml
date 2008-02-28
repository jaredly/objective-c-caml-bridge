(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSDate] id) -> object
  inherit Cati_NSDateCreation.methods_NSDate
  inherit Cati_NSExtendedDate.methods_NSDate
  inherit Im_NSDate.methods
  method repr = r
end

(* Class object for NSDate *)
let c = Classes.find "NSDate"
let _new()= (Objc.objcnew c : [`NSDate] id)
let alloc() = (Objc.objcalloc c : [`NSDate] id)
(* class methods for category NSDateCreation of NSDate *)
let date () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "date")[])
       : [`NSDate] Objc.id))
let dateWithTimeIntervalSinceNow (secs : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dateWithTimeIntervalSinceNow:")
      [make_float secs]) : [`NSDate] Objc.id))
let dateWithTimeIntervalSinceReferenceDate (secs : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dateWithTimeIntervalSinceReferenceDate:")
      [make_float secs]) : [`NSDate] Objc.id))
let dateWithTimeIntervalSince1970 (secs : float) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dateWithTimeIntervalSince1970:")
      [make_float secs]) : [`NSDate] Objc.id))
let distantFuture () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "distantFuture")[])
       : [`NSDate] Objc.id))
let distantPast () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "distantPast")[])
       : [`NSDate] Objc.id))
(* class methods for category NSExtendedDate of NSDate *)
let timeIntervalSinceReferenceDate () =
    (get_float (Objc.invoke Objc.tag_float c (Selector.find "timeIntervalSinceReferenceDate")[])
       : float)
