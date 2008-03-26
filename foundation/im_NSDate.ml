(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDate *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method timeIntervalSinceReferenceDate =
    (get_float (Objc.invoke Objc.tag_float self#repr (Selector.find "timeIntervalSinceReferenceDate")[])
       : float)
end
