(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSExtendedDictionary of NSDictionary *)
class virtual methods_NSDictionary = object (self)
  method virtual repr : [`NSDictionary] Objc.id
  method allKeys =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allKeys")[])
       : [`NSArray] Objc.id))
  method allKeysForObject (anObject : [`NSObject] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allKeysForObject:")
      [make_pointer_from_object anObject]) : [`NSArray] Objc.id))
  method allValues =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allValues")[])
       : [`NSArray] Objc.id))
  method description =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "description")[])
       : [`NSString] Objc.id))
  method descriptionInStringsFileFormat =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "descriptionInStringsFileFormat")[])
       : [`NSString] Objc.id))
  (* skipping selector descriptionWithLocale *)
  method descriptionWithLocale  ?indent:(level : int option) (locale : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg locale "descriptionWithLocale" make_pointer_from_object
      ++ Objc.opt_arg level "indent" make_int
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSString] Objc.id))
  method isEqualToDictionary (otherDictionary : [`NSDictionary] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "isEqualToDictionary:")
      [make_pointer_from_object otherDictionary]) : bool)
  method objectEnumerator =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "objectEnumerator")[])
       : [`NSEnumerator] Objc.id))
  method objectsForKeys  ~notFoundMarker:(marker : [`NSObject] Objc.t ) (keys : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg keys "objectsForKeys" make_pointer_from_object
      ++ Objc.arg marker "notFoundMarker" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
  method writeToFile  ~atomically:(useAuxiliaryFile : bool ) (path : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg path "writeToFile" make_pointer_from_object
      ++ Objc.arg useAuxiliaryFile "atomically" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method writeToURL  ~atomically:(atomically : bool ) (url : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg url "writeToURL" make_pointer_from_object
      ++ Objc.arg atomically "atomically" make_bool
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
  method keysSortedByValueUsingSelector (comparator : selector) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "keysSortedByValueUsingSelector:")
      [make_selector comparator]) : [`NSArray] Objc.id))
end
