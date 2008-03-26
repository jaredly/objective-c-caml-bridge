(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSArrayCreation of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithArray (array : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithArray:")
      [make_pointer_from_object array]) : [`NSObject] Objc.id)
  method initWithArray_copyItems  (array : [`NSArray] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg array "initWithArray" make_pointer_from_object
      ++ Objc.arg flag "copyItems" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithContentsOfURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initWithObjects_count  (objects : [`id] Objc.t) (count : int) =
    let sel, args = (
      Objc.arg objects "initWithObjects" make_pointer_from_object
      ++ Objc.arg count "count" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
