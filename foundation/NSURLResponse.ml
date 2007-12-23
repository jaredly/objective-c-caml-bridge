open Objc
open NSObject


external init : unit -> unit = "caml_init_NSURLResponse"
let _ = init()
(* Class object for NSURLResponse *)
let class_NSURLResponse = object
   val o = Classes.find "NSURLResponse"
   method _new = (Objc.objcnew o : [`NSURLResponse] nativeNSObject)
end
(* Encapsulation for native instance of NSURLResponse *)
class native_NSURLResponse = fun (o : [`NSURLResponse] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method initWithURL  ~l_MIMEType:(_MIMEType : [`NSString] Objc.t ) ~expectedContentLength:(length : int ) ~textEncodingName:(name : [`NSString] Objc.t ) (_URL : [`NSURL] Objc.t) =
     let sel, args = (
       Objc.arg _URL "initWithURL" make_pointer_from_object
       ++ Objc.arg _MIMEType "l_MIMEType" make_pointer_from_object
       ++ Objc.arg length "expectedContentLength" make_int
       ++ Objc.arg name "textEncodingName" make_pointer_from_object
     ) ([],[]) in
       (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find_list sel) args) : [`NSObject] Objc.nativeNSObject)
   method l_URL =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_URL:")[]) : [`NSURL] Objc.nativeNSObject)
   method l_MIMEType =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "l_MIMEType:")[]) : [`NSString] Objc.nativeNSObject)
   method expectedContentLength =
     (get_int64 (Objc.invoke Objc.tag_int64 o (Selector.find "expectedContentLength:")[]) : int64)
   method textEncodingName =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "textEncodingName:")[]) : [`NSString] Objc.nativeNSObject)
   method suggestedFilename =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "suggestedFilename:")[]) : [`NSString] Objc.nativeNSObject)
end
(* Class object for NSHTTPURLResponse *)
let class_NSHTTPURLResponse = object
   val o = Classes.find "NSHTTPURLResponse"
   method _new = (Objc.objcnew o : [`NSHTTPURLResponse] nativeNSObject)
   method localizedStringForStatusCode (statusCode : int) =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "localizedStringForStatusCode:")[make_int statusCode]) : [`NSString] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSHTTPURLResponse *)
class native_NSHTTPURLResponse = fun (o : [`NSHTTPURLResponse] nativeNSObject) -> object (self)
   val o = o
   method o = o
   method statusCode =
     (get_int (Objc.invoke Objc.tag_int o (Selector.find "statusCode:")[]) : int)
   method allHeaderFields =
     (get_pointer (Objc.invoke Objc.tag_pointer o (Selector.find "allHeaderFields:")[]) : [`NSDictionary] Objc.nativeNSObject)
end
