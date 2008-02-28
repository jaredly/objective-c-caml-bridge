(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDistributedLock *)
class virtual methods = object (self)
  method virtual repr : [`NSDistributedLock] Objc.id
  method initWithPath (path : [`NSString] Objc.t) =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "initWithPath:")
      [make_pointer_from_object path]) : [`NSObject] Objc.id)
  method tryLock =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "tryLock")[])
       : bool)
  method unlock =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "unlock")[])
       : unit)
  method breakLock =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "breakLock")[])
       : unit)
  method lockDate =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "lockDate")[])
       : [`NSDate] Objc.id))
end
