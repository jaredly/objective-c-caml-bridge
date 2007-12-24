(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSDate


external init : unit -> unit = "caml_init_NSURLRequest"
let _ = init()
let make_NSObject_of_NSURLRequest (o : [`NSURLRequest] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURLRequest *)
let class_NSURLRequest = object
   val repr = Classes.find "NSURLRequest"
   method _new = (Objc.objcnew repr : [`NSURLRequest] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURLRequest] nativeNSObject)
(* methods for category NSHTTPURLRequest *)
   (* skipping selector requestWithURL *)
   method requestWithURL  ?cachePolicy:(cachePolicy : int option) ?timeoutInterval:(timeoutInterval : float option) (_URL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg _URL "requestWithURL" make_pointer_from_object
       ++ Objc.opt_arg cachePolicy "cachePolicy" make_int
       ++ Objc.opt_arg timeoutInterval "timeoutInterval" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSURLRequest] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLRequest *)
class native_NSURLRequest = fun (o : [`NSURLRequest] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURLRequest o) as super
(* methods for category NSHTTPURLRequest *)
   method l_HTTPMethod =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_HTTPMethod:")[]) : [`NSString] Objc.nativeNSObject)
   method allHTTPHeaderFields =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "allHTTPHeaderFields:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method valueForHTTPHeaderField (field : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "valueForHTTPHeaderField:")[make_pointer_from_object field]) : [`NSString] Objc.nativeNSObject)
   method l_HTTPBody =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_HTTPBody:")[]) : [`NSData] Objc.nativeNSObject)
   method l_HTTPBodyStream =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_HTTPBodyStream:")[]) : [`NSInputStream] Objc.nativeNSObject)
   method l_HTTPShouldHandleCookies =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "l_HTTPShouldHandleCookies:")[]) : bool)
   (* skipping selector initWithURL *)
   method initWithURL  ?cachePolicy:(cachePolicy : int option) ?timeoutInterval:(timeoutInterval : float option) (_URL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg _URL "initWithURL" make_pointer_from_object
       ++ Objc.opt_arg cachePolicy "cachePolicy" make_int
       ++ Objc.opt_arg timeoutInterval "timeoutInterval" make_float
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method l_URL =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_URL:")[]) : [`NSURL] Objc.nativeNSObject)
   method cachePolicy =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "cachePolicy:")[]) : int)
   method timeoutInterval =
     (get_float (Objc.invoke Objc.tag_float repr (Selector.find "timeoutInterval:")[]) : float)
   method mainDocumentURL =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "mainDocumentURL:")[]) : [`NSURL] Objc.nativeNSObject)
end
let make_NSURLRequest_of_NSMutableURLRequest (o : [`NSMutableURLRequest] nativeNSObject) = (Obj.magic o : [`NSURLRequest] nativeNSObject)
(* Class object for NSMutableURLRequest *)
let class_NSMutableURLRequest = object
   val repr = Classes.find "NSMutableURLRequest"
   method _new = (Objc.objcnew repr : [`NSMutableURLRequest] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSMutableURLRequest] nativeNSObject)
(* methods for category NSMutableHTTPURLRequest *)
end
(* Encapsulation for native instance of NSMutableURLRequest *)
class native_NSMutableURLRequest = fun (o : [`NSMutableURLRequest] nativeNSObject) -> object (self)
   inherit native_NSURLRequest (make_NSURLRequest_of_NSMutableURLRequest o) as super
(* methods for category NSMutableHTTPURLRequest *)
   method setHTTPMethod (_method : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHTTPMethod:")[make_pointer_from_object _method]) : unit)
   method setAllHTTPHeaderFields (headerFields : [`NSDictionary] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setAllHTTPHeaderFields:")[make_pointer_from_object headerFields]) : unit)
   method setValue  ~forHTTPHeaderField:(field : [`NSString] Objc.t ) (value : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg value "setValue" make_pointer_from_object
       ++ Objc.arg field "forHTTPHeaderField" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method addValue  ~forHTTPHeaderField:(field : [`NSString] Objc.t ) (value : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg value "addValue" make_pointer_from_object
       ++ Objc.arg field "forHTTPHeaderField" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method setHTTPBody (data : [`NSData] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHTTPBody:")[make_pointer_from_object data]) : unit)
   method setHTTPBodyStream (inputStream : [`NSInputStream] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHTTPBodyStream:")[make_pointer_from_object inputStream]) : unit)
   method setHTTPShouldHandleCookies (should : bool) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setHTTPShouldHandleCookies:")[make_bool should]) : unit)
   method setURL (_URL : [`NSURL] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setURL:")[make_pointer_from_object _URL]) : unit)
   method setCachePolicy (policy : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCachePolicy:")[make_int policy]) : unit)
   method setTimeoutInterval (seconds : float) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setTimeoutInterval:")[make_float seconds]) : unit)
   method setMainDocumentURL (_URL : [`NSURL] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setMainDocumentURL:")[make_pointer_from_object _URL]) : unit)
end
