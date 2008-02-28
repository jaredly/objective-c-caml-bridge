(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSortDescriptor *)
class virtual methods = object (self)
  method virtual repr : [`NSSortDescriptor] Objc.id
  (* skipping selector initWithKey:ascending *)
  method initWithKey  ~ascending:(ascending : bool ) ?selector:(selector : selector option) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "initWithKey" make_pointer_from_object
      ++ Objc.arg ascending "ascending" make_bool
      ++ Objc.opt_arg selector "selector" make_selector
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method key =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "key")[])
       : [`NSString] Objc.id))
  method ascending =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "ascending")[])
       : bool)
  method selector =
    (get_selector (Objc.invoke Objc.tag_selector self#repr (Selector.find "selector")[])
       : selector)
  method compareObject  ~toObject:(object2 : [`NSObject] Objc.t ) (object1 : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg object1 "compareObject" make_pointer_from_object
      ++ Objc.arg object2 "toObject" make_pointer_from_object
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
  method reversedSortDescriptor =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "reversedSortDescriptor")[])
       : [`NSObject] Objc.id)
end
