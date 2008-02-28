(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSValue *)
class virtual methods = object (self)
  method virtual repr : [`NSValue] Objc.id
  method getValue (value : [`void] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "getValue:")
      [make_pointer_from_object value]) : unit)
  method objCType =
    (get_string (Objc.invoke Objc.tag_string self#repr (Selector.find "objCType")[])
       : string)
end
