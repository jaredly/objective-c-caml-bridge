(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSThread *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method threadDictionary =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "threadDictionary")[])
       : [`NSMutableDictionary] Objc.id))
end
