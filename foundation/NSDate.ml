(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSDate"
let _ = init()
let make_NSObject_of_NSDate (o : [`NSDate] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSDate *)
let class_NSDate = object
   val repr = Classes.find "NSDate"
   method _new = (Objc.objcnew repr : [`NSDate] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSDate] nativeNSObject)
(* methods for category NSDateCreation *)
   method date =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "date:")[]) : [`NSDate] Objc.nativeNSObject)
   method dateWithTimeIntervalSinceNow (secs : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dateWithTimeIntervalSinceNow:")[make_float secs]) : [`NSDate] Objc.nativeNSObject)
   method dateWithTimeIntervalSinceReferenceDate (secs : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dateWithTimeIntervalSinceReferenceDate:")[make_float secs]) : [`NSDate] Objc.nativeNSObject)
   method dateWithTimeIntervalSince1970 (secs : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "dateWithTimeIntervalSince1970:")[make_float secs]) : [`NSDate] Objc.nativeNSObject)
   method distantFuture =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "distantFuture:")[]) : [`NSDate] Objc.nativeNSObject)
   method distantPast =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "distantPast:")[]) : [`NSDate] Objc.nativeNSObject)
(* methods for category NSExtendedDate *)
   method timeIntervalSinceReferenceDate =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "timeIntervalSinceReferenceDate:")[]) : [`NSDate] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSDate *)
class native_NSDate = fun (o : [`NSDate] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSDate o) as super
(* methods for category NSDateCreation *)
   method init =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "init:")[]) : [`NSObject] Objc.nativeNSObject)
   method initWithTimeIntervalSinceReferenceDate (secsToBeAdded : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithTimeIntervalSinceReferenceDate:")[make_float secsToBeAdded]) : [`NSObject] Objc.nativeNSObject)
   method initWithTimeInterval  ~sinceDate:(anotherDate : [`NSDate] Objc.t ) (secsToBeAdded : float) =
     let sel, args = (
       Objc.arg secsToBeAdded "initWithTimeInterval" make_float
       ++ Objc.arg anotherDate "sinceDate" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithTimeIntervalSinceNow (secsToBeAddedToNow : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initWithTimeIntervalSinceNow:")[make_float secsToBeAddedToNow]) : [`NSObject] Objc.nativeNSObject)
(* methods for category NSExtendedDate *)
   method timeIntervalSinceDate (anotherDate : [`NSDate] Objc.t) =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "timeIntervalSinceDate:")[make_pointer_from_object anotherDate]) : float)
   method timeIntervalSinceNow =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "timeIntervalSinceNow:")[]) : float)
   method timeIntervalSince1970 =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "timeIntervalSince1970:")[]) : float)
   method addTimeInterval (seconds : float) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "addTimeInterval:")[make_float seconds]) : [`NSObject] Objc.nativeNSObject)
   method earlierDate (anotherDate : [`NSDate] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "earlierDate:")[make_pointer_from_object anotherDate]) : [`NSDate] Objc.nativeNSObject)
   method laterDate (anotherDate : [`NSDate] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "laterDate:")[make_pointer_from_object anotherDate]) : [`NSDate] Objc.nativeNSObject)
   method compare (other : [`NSDate] Objc.t) =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "compare:")[make_pointer_from_object other]) : int)
   method description =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "description:")[]) : [`NSString] Objc.nativeNSObject)
   method isEqualToDate (otherDate : [`NSDate] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isEqualToDate:")[make_pointer_from_object otherDate]) : bool)
   method timeIntervalSinceReferenceDate =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "timeIntervalSinceReferenceDate:")[]) : float)
end
