(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSURLResponse"
let _ = init()
let make_NSObject_of_NSURLResponse (o : [`NSURLResponse] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSURLResponse *)
let class_NSURLResponse = object
   val repr = Classes.find "NSURLResponse"
   method _new = (Objc.objcnew repr : [`NSURLResponse] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSURLResponse] nativeNSObject)
end
(* Encapsulation for native instance of NSURLResponse *)
class native_NSURLResponse = fun (o : [`NSURLResponse] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSURLResponse o) as super
   method initWithURL  ~l_MIMEType:(_MIMEType : [`NSString] Objc.t ) ~expectedContentLength:(length : int ) ~textEncodingName:(name : [`NSString] Objc.t ) (_URL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg _URL "initWithURL" make_pointer_from_object
       ++ Objc.arg _MIMEType "l_MIMEType" make_pointer_from_object
       ++ Objc.arg length "expectedContentLength" make_int
       ++ Objc.arg name "textEncodingName" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method l_URL =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_URL:")[]) : [`NSURL] Objc.nativeNSObject)
   method l_MIMEType =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "l_MIMEType:")[]) : [`NSString] Objc.nativeNSObject)
   method expectedContentLength =
     (get_int64 (Objc.invoke Objc.tag_int64 repr (Selector.find "expectedContentLength:")[]) : int64)
   method textEncodingName =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "textEncodingName:")[]) : [`NSString] Objc.nativeNSObject)
   method suggestedFilename =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "suggestedFilename:")[]) : [`NSString] Objc.nativeNSObject)
end
let make_NSURLResponse_of_NSHTTPURLResponse (o : [`NSHTTPURLResponse] nativeNSObject) = (Obj.magic o : [`NSURLResponse] nativeNSObject)
(* Class object for NSHTTPURLResponse *)
let class_NSHTTPURLResponse = object
   val repr = Classes.find "NSHTTPURLResponse"
   method _new = (Objc.objcnew repr : [`NSHTTPURLResponse] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSHTTPURLResponse] nativeNSObject)
   method localizedStringForStatusCode (statusCode : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "localizedStringForStatusCode:")[make_int statusCode]) : [`NSString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSHTTPURLResponse *)
class native_NSHTTPURLResponse = fun (o : [`NSHTTPURLResponse] nativeNSObject) -> object (self)
   inherit native_NSURLResponse (make_NSURLResponse_of_NSHTTPURLResponse o) as super
   method statusCode =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "statusCode:")[]) : int)
   method allHeaderFields =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "allHeaderFields:")[]) : [`NSDictionary] Objc.nativeNSObject)
end
