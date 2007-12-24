(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSURLCache


external init : unit -> unit = "caml_init_NSURLProtocol"
let _ = init()
let make_NSObject_of_NSURLProtocol (o : [`NSURLProtocol] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURLProtocol *)
let class_NSURLProtocol = object
   val repr = Classes.find "NSURLProtocol"
   method _new = (Objc.objcnew repr : [`NSURLProtocol] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURLProtocol] nativeNSObject)
   method canInitWithRequest (request : [`NSURLRequest] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canInitWithRequest:")[make_pointer_from_object request]) : [`NSURLProtocol] Objc.nativeNSObject)
   method canonicalRequestForRequest (request : [`NSURLRequest] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canonicalRequestForRequest:")[make_pointer_from_object request]) : [`NSURLRequest] Objc.nativeNSObject)
   method requestIsCacheEquivalent  ~toRequest:(b : [`NSURLRequest] Objc.t ) (a : [`NSURLRequest] Objc.t) =
     let sel, args = (
       Objc.arg a "requestIsCacheEquivalent" make_pointer_from_object
       ++ Objc.arg b "toRequest" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSURLProtocol] Objc.nativeNSObject)
   method propertyForKey  ~inRequest:(request : [`NSURLRequest] Objc.t ) (key : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg key "propertyForKey" make_pointer_from_object
       ++ Objc.arg request "inRequest" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSURLProtocol] Objc.nativeNSObject)
   method setProperty  ~forKey:(key : [`NSString] Objc.t ) ~inRequest:(request : [`NSMutableURLRequest] Objc.t ) (value : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg value "setProperty" make_pointer_from_object
       ++ Objc.arg key "forKey" make_pointer_from_object
       ++ Objc.arg request "inRequest" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSURLProtocol] Objc.nativeNSObject)
   method registerClass (protocolClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "registerClass:")[make_pointer_from_object protocolClass]) : [`NSURLProtocol] Objc.nativeNSObject)
   method unregisterClass (protocolClass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "unregisterClass:")[make_pointer_from_object protocolClass]) : [`NSURLProtocol] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLProtocol *)
class native_NSURLProtocol = fun (o : [`NSURLProtocol] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURLProtocol o) as super
   method initWithRequest  ~cachedResponse:(cachedResponse : [`NSCachedURLResponse] Objc.t ) ~client:(client : [`NSObject] Objc.t ) (request : [`NSURLRequest] Objc.t) =
     let sel, args = (
       Objc.arg request "initWithRequest" make_pointer_from_object
       ++ Objc.arg cachedResponse "cachedResponse" make_pointer_from_object
       ++ Objc.arg client "client" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method client =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "client:")[]) : [`NSObject] Objc.nativeNSObject)
   method request =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "request:")[]) : [`NSURLRequest] Objc.nativeNSObject)
   method cachedResponse =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "cachedResponse:")[]) : [`NSCachedURLResponse] Objc.nativeNSObject)
   method startLoading =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "startLoading:")[]) : unit)
   method stopLoading =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "stopLoading:")[]) : unit)
end
