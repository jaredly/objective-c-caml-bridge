(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSArrayCreation of NSArray *)
class virtual methods_NSArray = object (self)
  method virtual repr : [`NSArray] Objc.id
  (* skipping selector initWithArray *)
  method initWithArray  ?copyItems:(flag : bool option) (array : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg array "initWithArray" make_pointer_from_object
      ++ Objc.opt_arg flag "copyItems" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithContentsOfFile (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithContentsOfURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initWithObjects  ~count:(count : int ) (objects : [`id] Objc.t) =
    let sel, args = (
      Objc.arg objects "initWithObjects" make_pointer_from_object
      ++ Objc.arg count "count" make_int
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
