(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSConditionLock *)
class virtual methods = object (self)
  method virtual repr : [`NSConditionLock] Objc.id
  method initWithCondition (condition : int) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithCondition:")
      [make_int condition]) : [`NSObject] Objc.id)
  method condition =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "condition")[])
       : int)
  (* skipping selector lockWhenCondition *)
  method tryLock =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "tryLock")[])
       : bool)
  method tryLockWhenCondition (condition : int) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "tryLockWhenCondition:")
      [make_int condition]) : bool)
  method unlockWithCondition (condition : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unlockWithCondition:")
      [make_int condition]) : unit)
  method lockBeforeDate (limit : [`NSDate] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "lockBeforeDate:")
      [make_pointer_from_object limit]) : bool)
  method lockWhenCondition  ?beforeDate:(limit : [`NSDate] Objc.t option) (condition : int) =
    let sel, args = (
      Objc.arg condition "lockWhenCondition" make_int
      ++ Objc.opt_arg limit "beforeDate" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)
end
