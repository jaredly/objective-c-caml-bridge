(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSDateCreation.methods_NSDate
  inherit Foundation_cati_NSExtendedDate.methods_NSDate
  inherit Im_NSDate.methods
  inherit Foundation_cati_NSNaturalLangage.methods_NSDate
  inherit Foundation_cati_NSCalendarDateExtras.methods_NSDate
end

class t = fun (r :[`NSDate] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
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
(* class methods for category NSNaturalLangage of NSDate *)
let dateWithNaturalLanguageString (string : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dateWithNaturalLanguageString:")
      [make_pointer_from_object string]) : [`NSDate] Objc.id))
let dateWithNaturalLanguageString_locale  (string : [`NSString] Objc.t) (dict : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg string "dateWithNaturalLanguageString" make_pointer_from_object
      ++ Objc.arg dict "locale" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSDate] Objc.id))
(* class methods for category NSCalendarDateExtras of NSDate *)
let dateWithString (aString : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "dateWithString:")
      [make_pointer_from_object aString]) : [`NSDate] Objc.id))
