open Objc
open NSObject


external init : unit -> unit = "caml_init_NSHTTPCookie"
let _ = init()
(* Class object for NSHTTPCookie *)
let class_NSHTTPCookie = object
   val o = Classes.find "NSHTTPCookie"
   method _new = (Objc.objcnew o : [`NSHTTPCookie] nativeNSObject)
   method cookieWithProperties (properties : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cookieWithProperties:")[make_pointer_from_object properties]) : [`NSHTTPCookie] Objc.nativeNSObject)
   method requestHeaderFieldsWithCookies (cookies : [`NSArray] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "requestHeaderFieldsWithCookies:")[make_pointer_from_object cookies]) : [`NSDictionary] Objc.nativeNSObject)
   method cookiesWithResponseHeaderFields  ~forURL:(_URL : [`NSURL] Objc.t ) (headerFields : [`NSDictionary] Objc.t) =
     let sel, args = (
       Objc.arg headerFields "cookiesWithResponseHeaderFields" make_pointer_from_object
       ++ Objc.arg _URL "forURL" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSArray] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSHTTPCookie *)
class native_NSHTTPCookie = fun (o : [`NSHTTPCookie] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithProperties (properties : [`NSDictionary] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "initWithProperties:")[make_pointer_from_object properties]) : [`NSObject] Objc.nativeNSObject)
   method properties =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "properties:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method version =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "version:")[]) : int)
   method name =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "name:")[]) : [`NSString] Objc.nativeNSObject)
   method value =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "value:")[]) : [`NSString] Objc.nativeNSObject)
   method expiresDate =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "expiresDate:")[]) : [`NSDate] Objc.nativeNSObject)
   method isSessionOnly =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSessionOnly:")[]) : bool)
   method domain =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "domain:")[]) : [`NSString] Objc.nativeNSObject)
   method path =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "path:")[]) : [`NSString] Objc.nativeNSObject)
   method isSecure =
     (get_bool (Objc.invoke Objc.tag_bool o (Selector.find "isSecure:")[]) : bool)
   method comment =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "comment:")[]) : [`NSString] Objc.nativeNSObject)
   method commentURL =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "commentURL:")[]) : [`NSURL] Objc.nativeNSObject)
   method portList =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "portList:")[]) : [`NSArray] Objc.nativeNSObject)
end
