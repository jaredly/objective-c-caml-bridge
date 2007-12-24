(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSURLProtectionSpace"
let _ = init()
let make_NSObject_of_NSURLProtectionSpace (o : [`NSURLProtectionSpace] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURLProtectionSpace *)
let class_NSURLProtectionSpace = object
   val repr = Classes.find "NSURLProtectionSpace"
   method _new = (Objc.objcnew repr : [`NSURLProtectionSpace] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURLProtectionSpace] nativeNSObject)
end
(* Encapsulation for native instance of NSURLProtectionSpace *)
class native_NSURLProtectionSpace = fun (o : [`NSURLProtectionSpace] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURLProtectionSpace o) as super
   method initWithHost  ~port:(port : int ) ~protocol:(protocol : [`NSString] Objc.t ) ~realm:(realm : [`NSString] Objc.t ) ~authenticationMethod:(authenticationMethod : [`NSString] Objc.t ) (host : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg host "initWithHost" make_pointer_from_object
       ++ Objc.arg port "port" make_int
       ++ Objc.arg protocol "protocol" make_pointer_from_object
       ++ Objc.arg realm "realm" make_pointer_from_object
       ++ Objc.arg authenticationMethod "authenticationMethod" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method initWithProxyHost  ~port:(port : int ) ~l_type:(_type : [`NSString] Objc.t ) ~realm:(realm : [`NSString] Objc.t ) ~authenticationMethod:(authenticationMethod : [`NSString] Objc.t ) (host : [`NSString] Objc.t) =
     let sel, args = (
       Objc.arg host "initWithProxyHost" make_pointer_from_object
       ++ Objc.arg port "port" make_int
       ++ Objc.arg _type "l_type" make_pointer_from_object
       ++ Objc.arg realm "realm" make_pointer_from_object
       ++ Objc.arg authenticationMethod "authenticationMethod" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method realm =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "realm:")[]) : [`NSString] Objc.nativeNSObject)
   method receivesCredentialSecurely =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "receivesCredentialSecurely:")[]) : bool)
   method isProxy =
     (get_bool (Objc.invoke Objc.tag_bool repr (Selector.find "isProxy:")[]) : bool)
   method host =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "host:")[]) : [`NSString] Objc.nativeNSObject)
   method port =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "port:")[]) : int)
   method proxyType =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "proxyType:")[]) : [`NSString] Objc.nativeNSObject)
   method protocol =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "protocol:")[]) : [`NSString] Objc.nativeNSObject)
   method authenticationMethod =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "authenticationMethod:")[]) : [`NSString] Objc.nativeNSObject)
end
