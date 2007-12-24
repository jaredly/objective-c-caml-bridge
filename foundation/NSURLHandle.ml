(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSURLHandle"
let _ = init()
let make_NSObject_of_NSURLHandle (o : [`NSURLHandle] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURLHandle *)
let class_NSURLHandle = object
   val repr = Classes.find "NSURLHandle"
   method _new = (Objc.objcnew repr : [`NSURLHandle] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURLHandle] nativeNSObject)
   method registerURLHandleClass (anURLHandleSubclass : [`NSObject] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "registerURLHandleClass:")[make_pointer_from_object anURLHandleSubclass]) : [`NSURLHandle] Objc.nativeNSObject)
   method l_URLHandleClassForURL (anURL : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_URLHandleClassForURL:")[make_pointer_from_object anURL]) : [`NSURLHandle] Objc.nativeNSObject)
   method canInitWithURL (anURL : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "canInitWithURL:")[make_pointer_from_object anURL]) : [`NSURLHandle] Objc.nativeNSObject)
   method cachedHandleForURL (anURL : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "cachedHandleForURL:")[make_pointer_from_object anURL]) : [`NSURLHandle] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSURLHandle *)
class native_NSURLHandle = fun (o : [`NSURLHandle] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURLHandle o) as super
   method status =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "status:")[]) : int)
   method failureReason =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "failureReason:")[]) : [`NSString] Objc.nativeNSObject)
   method addClient (client : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "addClient:")[make_pointer_from_object client]) : unit)
   method removeClient (client : [`NSObject] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "removeClient:")[make_pointer_from_object client]) : unit)
   method loadInBackground =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "loadInBackground:")[]) : unit)
   method cancelLoadInBackground =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "cancelLoadInBackground:")[]) : unit)
   method resourceData =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "resourceData:")[]) : [`NSData] Objc.nativeNSObject)
   method availableResourceData =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "availableResourceData:")[]) : [`NSData] Objc.nativeNSObject)
   method expectedResourceDataSize =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "expectedResourceDataSize:")[]) : int64)
   method flushCachedData =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "flushCachedData:")[]) : unit)
   method backgroundLoadDidFailWithReason (reason : [`NSString] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "backgroundLoadDidFailWithReason:")[make_pointer_from_object reason]) : unit)
   method didLoadBytes  ~loadComplete:(yorn : bool ) (newBytes : [`NSData] Objc.t) =
     let sel, args = (
       Objc.arg newBytes "didLoadBytes" make_pointer_from_object
       ++ Objc.arg yorn "loadComplete" make_bool
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method initWithURL  ~cached:(willCache : bool ) (anURL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg anURL "initWithURL" make_pointer_from_object
       ++ Objc.arg willCache "cached" make_bool
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method propertyForKey (propertyKey : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "propertyForKey:")[make_pointer_from_object propertyKey]) : [`NSObject] Objc.nativeNSObject)
   method propertyForKeyIfAvailable (propertyKey : [`NSString] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "propertyForKeyIfAvailable:")[make_pointer_from_object propertyKey]) : [`NSObject] Objc.nativeNSObject)
   method writeProperty  ~forKey:(propertyKey : [`NSString] Objc.t ) (propertyValue : [`NSObject] Objc.t) =
     let sel, args = (
       Objc.arg propertyValue "writeProperty" make_pointer_from_object
       ++ Objc.arg propertyKey "forKey" make_pointer_from_object
     ) ([],[]) in
       (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find_list sel) args) : bool)
   method writeData (data : [`NSData] Objc.t) =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "writeData:")[make_pointer_from_object data]) : bool)
   method loadInForeground =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "loadInForeground:")[]) : [`NSData] Objc.nativeNSObject)
   method beginLoadInBackground =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "beginLoadInBackground:")[]) : unit)
   method endLoadInBackground =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "endLoadInBackground:")[]) : unit)
end
