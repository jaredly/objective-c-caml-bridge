(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSTimeZoneCreation.methods_NSTimeZone
  inherit Foundation_cati_NSExtendedTimeZone.methods_NSTimeZone
  inherit Im_NSTimeZone.methods
end

class t = fun (r :[`NSTimeZone] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSTimeZone *)
let c = Classes.find "NSTimeZone"
let _new()= (Objc.objcnew c : [`NSTimeZone] id)
let alloc() = (Objc.objcalloc c : [`NSTimeZone] id)
(* class methods for category NSTimeZoneCreation of NSTimeZone *)
let timeZoneWithName (tzName : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "timeZoneWithName:")
      [make_pointer_from_object tzName]) : [`NSTimeZone] Objc.id))
let timeZoneWithName_data  (tzName : [`NSString] Objc.t) (aData : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg tzName "timeZoneWithName" make_pointer_from_object
      ++ Objc.arg aData "data" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSTimeZone] Objc.id))
let timeZoneForSecondsFromGMT (seconds : int) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "timeZoneForSecondsFromGMT:")
      [make_int seconds]) : [`NSTimeZone] Objc.id))
let timeZoneWithAbbreviation (abbreviation : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "timeZoneWithAbbreviation:")
      [make_pointer_from_object abbreviation]) : [`NSTimeZone] Objc.id))
(* class methods for category NSExtendedTimeZone of NSTimeZone *)
let systemTimeZone () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "systemTimeZone")[])
       : [`NSTimeZone] Objc.id))
let resetSystemTimeZone () =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "resetSystemTimeZone")[])
       : unit)
let defaultTimeZone () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "defaultTimeZone")[])
       : [`NSTimeZone] Objc.id))
let setDefaultTimeZone (aTimeZone : [`NSTimeZone] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "setDefaultTimeZone:")
      [make_pointer_from_object aTimeZone]) : unit)
let localTimeZone () =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "localTimeZone")[])
       : [`NSTimeZone] Objc.id))
let knownTimeZoneNames () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "knownTimeZoneNames")[])
       : [`NSArray] Objc.id))
let abbreviationDictionary () =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "abbreviationDictionary")[])
       : [`NSDictionary] Objc.id))
