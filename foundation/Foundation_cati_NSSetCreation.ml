(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSSetCreation of NSSet *)
class virtual methods_NSSet = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithArray (array : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithArray:")
      [make_pointer_from_object array]) : [`NSObject] Objc.id)
  method initWithObjects_count  (objects : [`id] Objc.t) (count : int) =
    let sel, args = (
      Objc.arg objects "initWithObjects" make_pointer_from_object
      ++ Objc.arg count "count" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithSet (set : [`NSSet] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithSet:")
      [make_pointer_from_object set]) : [`NSObject] Objc.id)
  method initWithSet_copyItems  (set : [`NSSet] Objc.t) (flag : bool) =
    let sel, args = (
      Objc.arg set "initWithSet" make_pointer_from_object
      ++ Objc.arg flag "copyItems" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
