(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSHTTPURLRequest of NSURLRequest *)
class virtual methods_NSURLRequest = object (self)
  method virtual repr : [`NSURLRequest] Objc.id
  method l_HTTPMethod =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_HTTPMethod")[])
       : [`NSString] Objc.id))
  method allHTTPHeaderFields =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allHTTPHeaderFields")[])
       : [`NSDictionary] Objc.id))
  method valueForHTTPHeaderField (field : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForHTTPHeaderField:")
      [make_pointer_from_object field]) : [`NSString] Objc.id))
  method l_HTTPBody =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_HTTPBody")[])
       : [`NSData] Objc.id))
  method l_HTTPBodyStream =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "l_HTTPBodyStream")[])
       : [`NSInputStream] Objc.id))
  method l_HTTPShouldHandleCookies =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "l_HTTPShouldHandleCookies")[])
       : bool)
end
