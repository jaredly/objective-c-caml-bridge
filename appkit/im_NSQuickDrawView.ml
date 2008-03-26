(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSQuickDrawView *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method qdPort =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "qdPort")[])
       : [`void] Objc.id))
end
