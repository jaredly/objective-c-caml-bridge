(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSURLProtocol *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method initWithRequest_cachedResponse_client  (request : [`NSURLRequest] Objc.t) (cachedResponse : [`NSCachedURLResponse] Objc.t) (client : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg request "initWithRequest" make_pointer_from_object
      ++ Objc.arg cachedResponse "cachedResponse" make_pointer_from_object
      ++ Objc.arg client "client" make_pointer_from_object
    ) ([],[]) in
      (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find_list sel) args)
       : [`NSObject] Objc.id)
  method client =
    (get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "client")[])
       : [`NSObject] Objc.id)
  method request =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "request")[])
       : [`NSURLRequest] Objc.id))
  method cachedResponse =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cachedResponse")[])
       : [`NSCachedURLResponse] Objc.id))
  method startLoading =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "startLoading")[])
       : unit)
  method stopLoading =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "stopLoading")[])
       : unit)
end
