(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSInputStream *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method read_maxLength  (buffer : [`uint8_t] Objc.t) (len : int) =
    let sel, args = (
      Objc.arg buffer "read" make_pointer_from_object
      ++ Objc.arg len "maxLength" make_int
    ) ([],[]) in
      (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find_list sel) args)
       : int)
(*  UNSUPPORTED
  method getBuffer_length  (buffer : (*pointer to pointer to uint8_t*) unsupported) (len : (*pointer to unsigned int*) unsupported) =
    let sel, args = (
      Objc.arg buffer "getBuffer" (*pointer to pointer to uint8_t*) unsupported
      ++ Objc.arg len "length" (*pointer to unsigned int*) unsupported
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find_list sel) args)
       : bool)

*)
  method hasBytesAvailable =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "hasBytesAvailable")[])
       : bool)
end
