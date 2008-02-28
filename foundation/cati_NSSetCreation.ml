(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSSetCreation of NSSet *)
class virtual methods_NSSet = object (self)
  method virtual repr : [`NSSet] Objc.id
  method initWithArray (array : [`NSArray] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithArray:")
      [make_pointer_from_object array]) : [`NSObject] Objc.id)
  method initWithObjects  ~count:(count : int ) (objects : [`id] Objc.t) =
    let sel, args = (
      Objc.arg objects "initWithObjects" make_pointer_from_object
      ++ Objc.arg count "count" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithSet *)
  method initWithSet  ?copyItems:(flag : bool option) (set : [`NSSet] Objc.t) =
    let sel, args = (
      Objc.arg set "initWithSet" make_pointer_from_object
      ++ Objc.opt_arg flag "copyItems" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
