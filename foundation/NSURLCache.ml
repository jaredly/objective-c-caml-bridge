open Objc
open NSObject


external init : unit -> unit = "caml_init_NSURLCache"
let _ = init()
(* Class object for NSCachedURLResponse *)
let class_NSCachedURLResponse = object
   val o = Classes.find "NSCachedURLResponse"
   method _new = (Objc.objcnew o : [`NSCachedURLResponse] nativeNSObject)
end
(* Encapsulation for native instance of NSCachedURLResponse *)
class native_NSCachedURLResponse = fun (o : [`NSCachedURLResponse] nativeNSObject) -> object (self)
   val o = o
   method o = o
   (* skipping selector initWithResponse:data *)
   method initWithResponse  ~data:(data : [`NSData] Objc.t ) ?userInfo:(userInfo : [`NSDictionary] Objc.t option) ?storagePolicy:(storagePolicy : int option) (response : [`NSURLResponse] Objc.t) =
     let sel, args = (
       Objc.arg response "initWithResponse" make_pointer_from_object
       ++ Objc.arg data "data" make_pointer_from_object
       ++ Objc.opt_arg userInfo "userInfo" make_pointer_from_object
       ++ Objc.opt_arg storagePolicy "storagePolicy" make_int
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method response =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "response:")[]) : [`NSURLResponse] Objc.nativeNSObject)
   method data =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "data:")[]) : [`NSData] Objc.nativeNSObject)
   method userInfo =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "userInfo:")[]) : [`NSDictionary] Objc.nativeNSObject)
   method storagePolicy =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "storagePolicy:")[]) : int)
end
(* Class object for NSURLCache *)
let class_NSURLCache = object
   val o = Classes.find "NSURLCache"
   method _new = (Objc.objcnew o : [`NSURLCache] nativeNSObject)
   method sharedURLCache =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "sharedURLCache:")[]) : [`NSURLCache] Objc.nativeNSObject)
   method setSharedURLCache (cache : [`NSURLCache] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "setSharedURLCache:")[make_pointer_from_object cache]) : [`NSURLCache] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLCache *)
class native_NSURLCache = fun (o : [`NSURLCache] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithMemoryCapacity  ~diskCapacity:(diskCapacity : int ) ~diskPath:(path : [`NSString] Objc.t ) (memoryCapacity : int) =
     let sel, args = (
       Objc.arg memoryCapacity "initWithMemoryCapacity" make_int
       ++ Objc.arg diskCapacity "diskCapacity" make_int
       ++ Objc.arg path "diskPath" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method cachedResponseForRequest (request : [`NSURLRequest] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "cachedResponseForRequest:")[make_pointer_from_object request]) : [`NSCachedURLResponse] Objc.nativeNSObject)
   method storeCachedResponse  ~forRequest:(request : [`NSURLRequest] Objc.t ) (cachedResponse : [`NSCachedURLResponse] Objc.t) =
     let sel, args = (
       Objc.arg cachedResponse "storeCachedResponse" make_pointer_from_object
       ++ Objc.arg request "forRequest" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit o (Selector.find_list sel) args) : unit)
   method removeCachedResponseForRequest (request : [`NSURLRequest] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeCachedResponseForRequest:")[make_pointer_from_object request]) : unit)
   method removeAllCachedResponses =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "removeAllCachedResponses:")[]) : unit)
   method memoryCapacity =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "memoryCapacity:")[]) : int)
   method diskCapacity =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "diskCapacity:")[]) : int)
   method setMemoryCapacity (memoryCapacity : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setMemoryCapacity:")[make_int memoryCapacity]) : unit)
   method setDiskCapacity (diskCapacity : int) =
     (get_unit (Objc.invoke Objc.tag_unit o (Selector.find "setDiskCapacity:")[make_int diskCapacity]) : unit)
   method currentMemoryUsage =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "currentMemoryUsage:")[]) : int)
   method currentDiskUsage =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "currentDiskUsage:")[]) : int)
end
