(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDictionaryCreation of NSDictionary *)
class virtual methods_NSDictionary = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithContentsOfFile (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithContentsOfURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initWithObjects_forKeys  (objects : [`NSArray] Objc.t) (keys : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg objects "initWithObjects" make_pointer_from_object
      ++ Objc.arg keys "forKeys" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithObjects_forKeys_count  (objects : [`id] Objc.t) (keys : [`id] Objc.t) (count : int) =
    let sel, args = (
      Objc.arg objects "initWithObjects" make_pointer_from_object
      ++ Objc.arg keys "forKeys" make_pointer_from_object
      ++ Objc.arg count "count" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithDictionary (otherDictionary : [`NSDictionary] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithDictionary:")
      [make_pointer_from_object otherDictionary]) : [`NSObject] Objc.id)
  method initWithDictionary_copyItems  (otherDictionary : [`NSDictionary] Objc.t) (aBool : bool) =
    let sel, args = (
      Objc.arg otherDictionary "initWithDictionary" make_pointer_from_object
      ++ Objc.arg aBool "copyItems" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
