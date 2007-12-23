open Objc
open NSObject


external init : unit -> unit = "caml_init_NSTimeZone"
let _ = init()
(* Class object for NSTimeZone *)
let class_NSTimeZone = object
   val o = Classes.find "NSTimeZone"
   method _new = (Objc.objcnew o : [`NSTimeZone] nativeNSObject)
(* methods for category NSTimeZoneCreation *)
   (* skipping selector timeZoneWithName *)
   method timeZoneWithName  ?data:(aData : [`NSData] Objc.t option) (tzName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg tzName "timeZoneWithName" make_pointer_from_object
       ++ Objc.opt_arg aData "data" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSTimeZone] Objc.nativeNSObject)
   method timeZoneForSecondsFromGMT (seconds : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "timeZoneForSecondsFromGMT:")[make_int seconds]) : [`NSTimeZone] Objc.nativeNSObject)
   method timeZoneWithAbbreviation (abbreviation : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "timeZoneWithAbbreviation:")[make_pointer_from_object abbreviation]) : [`NSTimeZone] Objc.nativeNSObject)
(* methods for category NSExtendedTimeZone *)
   method systemTimeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "systemTimeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method resetSystemTimeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "resetSystemTimeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method defaultTimeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "defaultTimeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method setDefaultTimeZone (aTimeZone : [`NSTimeZone] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setDefaultTimeZone:")[make_pointer_from_object aTimeZone]) : [`NSTimeZone] Objc.nativeNSObject)
   method localTimeZone =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localTimeZone:")[]) : [`NSTimeZone] Objc.nativeNSObject)
   method knownTimeZoneNames =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "knownTimeZoneNames:")[]) : [`NSArray] Objc.nativeNSObject)
   method abbreviationDictionary =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "abbreviationDictionary:")[]) : [`NSDictionary] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSTimeZone *)
class native_NSTimeZone = fun (o : [`NSTimeZone] nativeNSObject) -> object (self)
   val o = o
   method o = o
(* methods for category NSTimeZoneCreation *)
   (* skipping selector initWithName *)
   method initWithName  ?data:(aData : [`NSData] Objc.t option) (tzName : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg tzName "initWithName" make_pointer_from_object
       ++ Objc.opt_arg aData "data" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedTimeZone *)
   method secondsFromGMT =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "secondsFromGMT:")[]) : int)
   method abbreviation =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "abbreviation:")[]) : [`NSString] Objc.nativeNSObject)
   method isDaylightSavingTime =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isDaylightSavingTime:")[]) : bool)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   method isEqualToTimeZone (aTimeZone : [`NSTimeZone] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isEqualToTimeZone:")[make_pointer_from_object aTimeZone]) : bool)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method data =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "data:")[]) : [`NSData] Objc.nativeNSObject)
   method secondsFromGMTForDate (aDate : [`NSDate] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "secondsFromGMTForDate:")[make_pointer_from_object aDate]) : int)
   method abbreviationForDate (aDate : [`NSDate] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "abbreviationForDate:")[make_pointer_from_object aDate]) : [`NSString] Objc.nativeNSObject)
   method isDaylightSavingTimeForDate (aDate : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isDaylightSavingTimeForDate:")[make_pointer_from_object aDate]) : bool)
end
