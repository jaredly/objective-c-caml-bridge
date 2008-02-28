(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSDictionaryCreation of NSDictionary *)
class virtual methods_NSDictionary = object (self)
  method virtual repr : [`NSDictionary] Objc.id
  method initWithContentsOfFile (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfFile:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method initWithContentsOfURL (url : [`NSURL] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithContentsOfURL:")
      [make_pointer_from_object url]) : [`NSObject] Objc.id)
  method initWithObjects  ~forKeys:(keys : [`NSArray] Objc.t ) (objects : [`NSArray] Objc.t) =
    let sel, args = (
      Objc.arg objects "initWithObjects" make_pointer_from_object
      ++ Objc.arg keys "forKeys" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  (* skipping selector initWithObjects:forKeys:count *)
  (* skipping selector initWithDictionary *)
  method initWithDictionary  ?copyItems:(aBool : bool option) (otherDictionary : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg otherDictionary "initWithDictionary" make_pointer_from_object
      ++ Objc.opt_arg aBool "copyItems" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
end
