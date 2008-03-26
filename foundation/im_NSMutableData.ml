(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSMutableData *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method mutableBytes =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "mutableBytes")[])
       : [`void] Objc.id))
  method setLength (length : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setLength:")
      [make_int length]) : unit)
end
