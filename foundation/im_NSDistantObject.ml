(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDistantObject *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithTarget_connection  (target : [`NSObject] Objc.t) (connection : [`NSConnection] Objc.t) =
    let sel, args = (
      Objc.arg target "initWithTarget" make_pointer_from_object
      ++ Objc.arg connection "connection" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method initWithLocal_connection  (target : [`NSObject] Objc.t) (connection : [`NSConnection] Objc.t) =
    let sel, args = (
      Objc.arg target "initWithLocal" make_pointer_from_object
      ++ Objc.arg connection "connection" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method setProtocolForProxy (proto : [`Protocol] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setProtocolForProxy:")
      [make_pointer_from_object proto]) : unit)
  method connectionForProxy =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "connectionForProxy")[])
       : [`NSConnection] Objc.id))
end
