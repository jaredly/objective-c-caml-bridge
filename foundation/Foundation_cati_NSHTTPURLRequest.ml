(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* instance methods for category NSHTTPURLRequest of NSURLRequest *)
class virtual methods_NSURLRequest = object (self)
  method virtual repr : [`NSObject] Objc.id
  method httpMethod =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "HTTPMethod")[])
       : [`NSString] Objc.id))
  method allHTTPHeaderFields =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "allHTTPHeaderFields")[])
       : [`NSDictionary] Objc.id))
  method valueForHTTPHeaderField (field : [`NSString] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "valueForHTTPHeaderField:")
      [make_pointer_from_object field]) : [`NSString] Objc.id))
  method httpBody =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "HTTPBody")[])
       : [`NSData] Objc.id))
  method httpBodyStream =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "HTTPBodyStream")[])
       : [`NSInputStream] Objc.id))
  method httpShouldHandleCookies =
    (get_bool (Objc.invoke Objc.tag_bool self#repr (Selector.find "HTTPShouldHandleCookies")[])
       : bool)
end
