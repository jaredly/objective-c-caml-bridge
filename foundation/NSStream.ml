(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSStream] id) -> object
  inherit Cati_NSSocketStreamCreationExtensions.methods_NSStream
  inherit Im_NSStream.methods
  method repr = r
end

(* Class object for NSStream *)
let c = Classes.find "NSStream"
let _new()= (Objc.objcnew c : [`NSStream] id)
let alloc() = (Objc.objcalloc c : [`NSStream] id)
(* class methods for category NSSocketStreamCreationExtensions of NSStream *)
(*  UNSUPPORTED
let getStreamsToHost  ~port:(port : int ) ~inputStream:(inputStream : (*pointer to pointer to NSInputStream*) unsupported ) ~outputStream:(outputStream : (*pointer to pointer to NSOutputStream*) unsupported ) (host : [`NSHost] Objc.t) =
    let sel, args = (
      Objc.arg host "getStreamsToHost" make_pointer_from_object
      ++ Objc.arg port "port" make_int
      ++ Objc.arg inputStream "inputStream" (*pointer to pointer to NSInputStream*) unsupported
      ++ Objc.arg outputStream "outputStream" (*pointer to pointer to NSOutputStream*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)

*)
