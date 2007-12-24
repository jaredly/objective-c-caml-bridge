(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject
open NSURLHandle
open NSString


external init : unit -> unit = "caml_init_NSURL"
let _ = init()
let make_NSObject_of_NSURL (o : [`NSURL] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURL *)
let class_NSURL = object
   val repr = Classes.find "NSURL"
   method _new = (Objc.objcnew repr : [`NSURL] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURL] nativeNSObject)
(* methods for category NSURLLoading *)
   method fileURLWithPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fileURLWithPath:")[make_pointer_from_object path]) : [`NSURL] Objc.nativeNSObject)
   (* skipping selector l_URLWithString *)
   method l_URLWithString  ?relativeToURL:(baseURL : [`NSURL] Objc.t option) (_URLString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg _URLString "l_URLWithString" make_pointer_from_object
       ++ Objc.opt_arg baseURL "relativeToURL" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSURL] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURL *)
class native_NSURL = fun (o : [`NSURL] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURL o) as super
(* methods for category NSURLLoading *)
   method resourceDataUsingCache (shouldUseCache : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resourceDataUsingCache:")[make_bool shouldUseCache]) : [`NSData] Objc.nativeNSObject)
   method loadResourceDataNotifyingClient  ~usingCache:(shouldUseCache : bool ) (client : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg client "loadResourceDataNotifyingClient" make_pointer_from_object
       ++ Objc.arg shouldUseCache "usingCache" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method propertyForKey (propertyKey : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "propertyForKey:")[make_pointer_from_object propertyKey]) : [`NSObject] Objc.nativeNSObject)
   method setResourceData (data : [`NSData] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "setResourceData:")[make_pointer_from_object data]) : bool)
   method setProperty  ~forKey:(propertyKey : [`NSString] Objc.t ) (property : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg property "setProperty" make_pointer_from_object
       ++ Objc.arg propertyKey "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method l_URLHandleUsingCache (shouldUseCache : bool) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_URLHandleUsingCache:")[make_bool shouldUseCache]) : [`NSURLHandle] Objc.nativeNSObject)
   method initWithScheme  ~host:(host : [`NSString] Objc.t ) ~path:(path : [`NSString] Objc.t ) (scheme : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg scheme "initWithScheme" make_pointer_from_object
       ++ Objc.arg host "host" make_pointer_from_object
       ++ Objc.arg path "path" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initFileURLWithPath (path : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "initFileURLWithPath:")[make_pointer_from_object path]) : [`NSObject] Objc.nativeNSObject)
   (* skipping selector initWithString *)
   method initWithString  ?relativeToURL:(baseURL : [`NSURL] Objc.t option) (_URLString : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg _URLString "initWithString" make_pointer_from_object
       ++ Objc.opt_arg baseURL "relativeToURL" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method absoluteString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "absoluteString:")[]) : [`NSString] Objc.nativeNSObject)
   method relativeString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "relativeString:")[]) : [`NSString] Objc.nativeNSObject)
   method baseURL =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "baseURL:")[]) : [`NSURL] Objc.nativeNSObject)
   method absoluteURL =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "absoluteURL:")[]) : [`NSURL] Objc.nativeNSObject)
   method scheme =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "scheme:")[]) : [`NSString] Objc.nativeNSObject)
   method resourceSpecifier =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resourceSpecifier:")[]) : [`NSString] Objc.nativeNSObject)
   method host =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "host:")[]) : [`NSString] Objc.nativeNSObject)
   method port =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "port:")[]) : [`NSNumber] Objc.nativeNSObject)
   method user =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "user:")[]) : [`NSString] Objc.nativeNSObject)
   method password =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "password:")[]) : [`NSString] Objc.nativeNSObject)
   method path =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "path:")[]) : [`NSString] Objc.nativeNSObject)
   method fragment =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "fragment:")[]) : [`NSString] Objc.nativeNSObject)
   method parameterString =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "parameterString:")[]) : [`NSString] Objc.nativeNSObject)
   method query =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "query:")[]) : [`NSString] Objc.nativeNSObject)
   method relativePath =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "relativePath:")[]) : [`NSString] Objc.nativeNSObject)
   method isFileURL =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isFileURL:")[]) : bool)
   method standardizedURL =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "standardizedURL:")[]) : [`NSURL] Objc.nativeNSObject)
end
(* Class object for NSObject *)
let class_NSObject = object
   val repr = Classes.find "NSObject"
   method _new = (Objc.objcnew repr : [`NSObject] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSObject] nativeNSObject)
(* methods for category NSURLClient *)
end
(* Encapsulation for native instance of NSObject *)
class native_NSObject = fun (o : [`NSObject] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSURLClient *)
   method l_URL  ~resourceDataDidBecomeAvailable:(newBytes : [`NSData] Objc.t ) (sender : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg sender "l_URL" make_pointer_from_object
       ++ Objc.arg newBytes "resourceDataDidBecomeAvailable" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method l_URLResourceDidFinishLoading (sender : [`NSURL] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "l_URLResourceDidFinishLoading:")[make_pointer_from_object sender]) : unit)
   method l_URLResourceDidCancelLoading (sender : [`NSURL] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "l_URLResourceDidCancelLoading:")[make_pointer_from_object sender]) : unit)
   (* skipping selector l_URL:resourceDidFailLoadingWithReason *)
end
(* Class object for NSString *)
let class_NSString = object
   val repr = Classes.find "NSString"
   method _new = (Objc.objcnew repr : [`NSString] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSString] nativeNSObject)
(* methods for category NSURLUtilities *)
end
(* Encapsulation for native instance of NSString *)
class native_NSString = fun (o : [`NSString] nativeNSObject) -> object (self)
   val repr = (Obj.magic o : [`NSObject] nativeNSObject)
   method repr = repr
(* methods for category NSURLUtilities *)
   method stringByAddingPercentEscapesUsingEncoding (enc : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringByAddingPercentEscapesUsingEncoding:")[make_int64 enc]) : [`NSString] Objc.nativeNSObject)
   method stringByReplacingPercentEscapesUsingEncoding (enc : int64) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "stringByReplacingPercentEscapesUsingEncoding:")[make_int64 enc]) : [`NSString] Objc.nativeNSObject)
end
