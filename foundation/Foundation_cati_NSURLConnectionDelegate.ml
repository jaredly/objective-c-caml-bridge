(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSURLConnectionDelegate of NSObject *)
class virtual methods_NSObject = object (self)
  method virtual repr : [`NSObject] Objc.id
  method connection_willSendRequest_redirectResponse  (connection : [`NSURLConnection] Objc.t) (request : [`NSURLRequest] Objc.t) (response : [`NSURLResponse] Objc.t) =
    let sel, args = (
      Objc.arg connection "connection" make_pointer_from_object
      ++ Objc.arg request "willSendRequest" make_pointer_from_object
      ++ Objc.arg response "redirectResponse" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSURLRequest] Objc.id))
  method connection_didReceiveAuthenticationChallenge  (connection : [`NSURLConnection] Objc.t) (challenge : [`NSURLAuthenticationChallenge] Objc.t) =
    let sel, args = (
      Objc.arg connection "connection" make_pointer_from_object
      ++ Objc.arg challenge "didReceiveAuthenticationChallenge" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method connection_didCancelAuthenticationChallenge  (connection : [`NSURLConnection] Objc.t) (challenge : [`NSURLAuthenticationChallenge] Objc.t) =
    let sel, args = (
      Objc.arg connection "connection" make_pointer_from_object
      ++ Objc.arg challenge "didCancelAuthenticationChallenge" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method connection_didReceiveResponse  (connection : [`NSURLConnection] Objc.t) (response : [`NSURLResponse] Objc.t) =
    let sel, args = (
      Objc.arg connection "connection" make_pointer_from_object
      ++ Objc.arg response "didReceiveResponse" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method connection_didReceiveData  (connection : [`NSURLConnection] Objc.t) (data : [`NSData] Objc.t) =
    let sel, args = (
      Objc.arg connection "connection" make_pointer_from_object
      ++ Objc.arg data "didReceiveData" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method connectionDidFinishLoading (connection : [`NSURLConnection] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "connectionDidFinishLoading:")
      [make_pointer_from_object connection]) : unit)
  method connection_didFailWithError  (connection : [`NSURLConnection] Objc.t) (error : [`NSError] Objc.t) =
    let sel, args = (
      Objc.arg connection "connection" make_pointer_from_object
      ++ Objc.arg error "didFailWithError" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method connection_willCacheResponse  (connection : [`NSURLConnection] Objc.t) (cachedResponse : [`NSCachedURLResponse] Objc.t) =
    let sel, args = (
      Objc.arg connection "connection" make_pointer_from_object
      ++ Objc.arg cachedResponse "willCacheResponse" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSCachedURLResponse] Objc.id))
end
