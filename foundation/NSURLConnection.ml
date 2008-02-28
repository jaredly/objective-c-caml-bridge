(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSURLConnection] id) -> object
  inherit Cati_NSURLConnectionSynchronousLoading.methods_NSURLConnection
  inherit Im_NSURLConnection.methods
  method repr = r
end

(* Class object for NSURLConnection *)
let c = Classes.find "NSURLConnection"
let _new()= (Objc.objcnew c : [`NSURLConnection] id)
let alloc() = (Objc.objcalloc c : [`NSURLConnection] id)
(* class methods for category NSURLConnectionSynchronousLoading of NSURLConnection *)
(*  UNSUPPORTED
let sendSynchronousRequest  ~returningResponse:(response : (*pointer to pointer to NSURLResponse*) unsupported ) ~error:(error : bool ) (request : [`NSURLRequest] Objc.t) =
    let sel, args = (
      Objc.arg request "sendSynchronousRequest" make_pointer_from_object
      ++ Objc.arg response "returningResponse" (*pointer to pointer to NSURLResponse*) unsupported
      ++ Objc.arg error "error" make_error
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSData] Objc.id))

*)
let canHandleRequest (request : [`NSURLRequest] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "canHandleRequest:")
      [make_pointer_from_object request]) : bool)
let connectionWithRequest  ~delegate:(delegate : [`NSObject] Objc.t ) (request : [`NSURLRequest] Objc.t) =
    let sel, args = (
      Objc.arg request "connectionWithRequest" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURLConnection] Objc.id))
