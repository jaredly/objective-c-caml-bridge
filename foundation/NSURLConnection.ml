(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSURLConnection"
let _ = init()
let make_NSObject_of_NSURLConnection (o : [`NSURLConnection] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURLConnection *)
let class_NSURLConnection = object
   val repr = Classes.find "NSURLConnection"
   method _new = (Objc.objcnew repr : [`NSURLConnection] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURLConnection] nativeNSObject)
(* methods for category NSURLConnectionSynchronousLoading *)
(*  UNSUPPORTED
   method sendSynchronousRequest  ~returningResponse:(response : (*pointer to pointer to NSURLResponse*) unsupported ) ~error:(error : bool ) (request : [`NSURLRequest] Objc.t) =
     let sel, args = (
       Objc.arg request "sendSynchronousRequest" make_pointer_from_object
       ++ Objc.arg response "returningResponse" (*pointer to pointer to NSURLResponse*) unsupported
       ++ Objc.arg error "error" make_error
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSData] Objc.nativeNSObject)

*)
   method canHandleRequest (request : [`NSURLRequest] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canHandleRequest:")[make_pointer_from_object request]) : [`NSURLConnection] Objc.nativeNSObject)
   method connectionWithRequest  ~delegate:(delegate : [`NSObject] Objc.t ) (request : [`NSURLRequest] Objc.t) =
     let sel, args = (
       Objc.arg request "connectionWithRequest" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSURLConnection] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLConnection *)
class native_NSURLConnection = fun (o : [`NSURLConnection] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURLConnection o) as super
(* methods for category NSURLConnectionSynchronousLoading *)
   method initWithRequest  ~delegate:(delegate : [`NSObject] Objc.t ) (request : [`NSURLRequest] Objc.t) =
     let sel, args = (
       Objc.arg request "initWithRequest" make_pointer_from_object
       ++ Objc.arg delegate "delegate" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method cancel =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "cancel:")[]) : unit)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSURLConnectionDelegate *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSURLConnectionDelegate *)
   method connection  ?willSendRequest:(request : [`NSURLRequest] Objc.t option) ?redirectResponse:(response : [`NSURLResponse] Objc.t option) (connection : [`NSURLConnection] Objc.t) =
     let sel, args = (
       Objc.arg connection "connection" make_pointer_from_object
       ++ Objc.opt_arg request "willSendRequest" make_pointer_from_object
       ++ Objc.opt_arg response "redirectResponse" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSURLRequest] Objc.nativeNSObject)
   (* skipping selector connection:didReceiveAuthenticationChallenge *)
   (* skipping selector connection:didCancelAuthenticationChallenge *)
   (* skipping selector connection:didReceiveResponse *)
   (* skipping selector connection:didReceiveData *)
   method connectionDidFinishLoading (connection : [`NSURLConnection] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "connectionDidFinishLoading:")[make_pointer_from_object connection]) : unit)
   (* skipping selector connection:didFailWithError *)
   (* skipping selector connection:willCacheResponse *)
end
