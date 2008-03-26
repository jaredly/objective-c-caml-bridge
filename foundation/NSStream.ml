(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSSocketStreamCreationExtensions.methods_NSStream
  inherit Im_NSStream.methods
end

class t = fun (r :[`NSStream] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSStream *)
let c = Classes.find "NSStream"
let _new()= (Objc.objcnew c : [`NSStream] id)
let alloc() = (Objc.objcalloc c : [`NSStream] id)
(* class methods for category NSSocketStreamCreationExtensions of NSStream *)
(*  UNSUPPORTED
let getStreamsToHost_port_inputStream_outputStream  (host : [`NSHost] Objc.t) (port : int) (inputStream : (*pointer to pointer to NSInputStream*) unsupported) (outputStream : (*pointer to pointer to NSOutputStream*) unsupported) =
    let sel, args = (
      Objc.arg host "getStreamsToHost" make_pointer_from_object
      ++ Objc.arg port "port" make_int
      ++ Objc.arg inputStream "inputStream" (*pointer to pointer to NSInputStream*) unsupported
      ++ Objc.arg outputStream "outputStream" (*pointer to pointer to NSOutputStream*) unsupported
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)

*)
