(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSDistantObjectRequest *)
class virtual methods = object (self)
  method virtual repr : [`NSDistantObjectRequest] Objc.id
  method invocation =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "invocation")[])
       : [`NSInvocation] Objc.id))
(*  UNSUPPORTED
(* unsupported: breaks compilation somewhere *)
  method connection =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "connection")[])
       : [`NSConnection] Objc.id))

*)
  method conversation =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "conversation")[])
       : [`NSObject] Objc.id)
  method replyWithException (_exception : [`NSException] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "replyWithException:")
      [make_pointer_from_object _exception]) : unit)
end
