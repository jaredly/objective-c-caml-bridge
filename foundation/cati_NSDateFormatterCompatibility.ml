(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDateFormatterCompatibility of NSDateFormatter *)
class virtual methods_NSDateFormatter = object (self)
  method virtual repr : [`NSDateFormatter] Objc.id
  method initWithDateFormat  ~allowNaturalLanguage:(flag : bool ) (format : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg format "initWithDateFormat" make_pointer_from_object
      ++ Objc.arg flag "allowNaturalLanguage" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method allowsNaturalLanguage =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "allowsNaturalLanguage")[])
       : bool)
end
