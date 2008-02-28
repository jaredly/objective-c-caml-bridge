(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSData *)
class virtual methods = object (self)
  method virtual repr : [`NSData] Objc.id
  method length =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "length")[])
       : int)
(*  UNSUPPORTED
  method bytes =
    ((*pointer to const void*) unsupported (Objc.invoke (*pointer to const void*) Objc.tag_unsupported self#repr (Selector.find "bytes")[])
       : (*pointer to const void*) unsupported)

*)
end
