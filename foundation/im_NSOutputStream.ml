(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSOutputStream *)
class virtual methods = object (self)
  method virtual repr : [`NSOutputStream] Objc.id
(*  UNSUPPORTED
  method write  ~maxLength:(len : int ) (buffer : (*pointer to const uint8_t*) unsupported) =
    let sel, args = (
      Objc.arg buffer "write" (*pointer to const uint8_t*) unsupported
      ++ Objc.arg len "maxLength" make_int
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)

*)
  method hasSpaceAvailable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasSpaceAvailable")[])
       : bool)
end
