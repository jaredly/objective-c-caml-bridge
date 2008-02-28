(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSString *)
class virtual methods = object (self)
  method virtual repr : [`NSString] Objc.id
  method length =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "length")[])
       : int)
(*  UNSUPPORTED
  method characterAtIndex (index : int) =
    ((*unichar*) unsupported (Objc.invoke (*unichar*) Objc.tag_unsupported self#repr (Selector.find "characterAtIndex:")
      [make_int index]) : (*unichar*) unsupported)

*)
end
