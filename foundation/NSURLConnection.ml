(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSURLConnectionSynchronousLoading.methods_NSURLConnection
  inherit Im_NSURLConnection.methods
end

class t = fun (r :[`NSURLConnection] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLConnection *)
let c = Classes.find "NSURLConnection"
let _new()= (Objc.objcnew c : [`NSURLConnection] id)
let alloc() = (Objc.objcalloc c : [`NSURLConnection] id)
(* class methods for category NSURLConnectionSynchronousLoading of NSURLConnection *)
(*  UNSUPPORTED
let sendSynchronousRequest_returningResponse_error  (request : [`NSURLRequest] Objc.t) (response : (*pointer to pointer to NSURLResponse*) unsupported) (error : bool) =
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
let connectionWithRequest_delegate  (request : [`NSURLRequest] Objc.t) (delegate : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg request "connectionWithRequest" make_pointer_from_object
      ++ Objc.arg delegate "delegate" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURLConnection] Objc.id))
