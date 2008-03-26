(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSSortDescriptor *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithKey_ascending  (key : [`NSString] Objc.t) (ascending : bool) =
    let sel, args = (
      Objc.arg key "initWithKey" make_pointer_from_object
      ++ Objc.arg ascending "ascending" make_bool
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithKey_ascending_selector  (key : [`NSString] Objc.t) (ascending : bool) (selector : selector) =
    let sel, args = (
      Objc.arg key "initWithKey" make_pointer_from_object
      ++ Objc.arg ascending "ascending" make_bool
      ++ Objc.arg selector "selector" make_selector
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
  method compareObject_toObject  (object1 : [`NSObject] Objc.t) (object2 : [`NSObject] Objc.t) =
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
