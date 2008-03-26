(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSRecursiveLock *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method tryLock =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "tryLock")[])
       : bool)
  method lockBeforeDate (limit : [`NSDate] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "lockBeforeDate:")
      [make_pointer_from_object limit]) : bool)
end
