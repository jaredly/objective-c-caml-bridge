(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDateCreation of NSDate *)
class virtual methods_NSDate = object (self)
  method virtual repr : [`NSObject] Objc.id
  method init =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "init")[])
       : [`NSObject] Objc.id)
  method initWithTimeIntervalSinceReferenceDate (secsToBeAdded : float) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithTimeIntervalSinceReferenceDate:")
      [make_float secsToBeAdded]) : [`NSObject] Objc.id)
  method initWithTimeInterval_sinceDate  (secsToBeAdded : float) (anotherDate : [`NSDate] Objc.t) =
    let sel, args = (
      Objc.arg secsToBeAdded "initWithTimeInterval" make_float
      ++ Objc.arg anotherDate "sinceDate" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithTimeIntervalSinceNow (secsToBeAddedToNow : float) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithTimeIntervalSinceNow:")
      [make_float secsToBeAddedToNow]) : [`NSObject] Objc.id)
end
