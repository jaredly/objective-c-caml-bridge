(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc
open NSObject
open NSObject


external init : unit -> unit = "caml_init_NSHTTPCookieStorage"
let _ = init()
let make_NSObject_of_NSHTTPCookieStorage (o : [`NSHTTPCookieStorage] nativeNSObject) = (Obj.magic o : [`NSObject] nativeNSObject)
(* Class object for NSHTTPCookieStorage *)
let class_NSHTTPCookieStorage = object
   val repr = Classes.find "NSHTTPCookieStorage"
   method _new = (Objc.objcnew repr : [`NSHTTPCookieStorage] nativeNSObject)
   method _alloc = (Objc.objcalloc repr : [`NSHTTPCookieStorage] nativeNSObject)
   method sharedHTTPCookieStorage =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "sharedHTTPCookieStorage:")[]) : [`NSHTTPCookieStorage] Objc.nativeNSObject)
end
(* Encapsulation for native instance of NSHTTPCookieStorage *)
class native_NSHTTPCookieStorage = fun (o : [`NSHTTPCookieStorage] nativeNSObject) -> object (self)
   inherit native_NSObject (make_NSObject_of_NSHTTPCookieStorage o) as super
   method cookies =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "cookies:")[]) : [`NSArray] Objc.nativeNSObject)
   method setCookie (cookie : [`NSHTTPCookie] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCookie:")[make_pointer_from_object cookie]) : unit)
   method deleteCookie (cookie : [`NSHTTPCookie] Objc.t) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "deleteCookie:")[make_pointer_from_object cookie]) : unit)
   method cookiesForURL (_URL : [`NSURL] Objc.t) =
     (get_pointer (Objc.invoke Objc.tag_pointer repr (Selector.find "cookiesForURL:")[make_pointer_from_object _URL]) : [`NSArray] Objc.nativeNSObject)
   method setCookies  ~forURL:(_URL : [`NSURL] Objc.t ) ~mainDocumentURL:(mainDocumentURL : [`NSURL] Objc.t ) (cookies : [`NSArray] Objc.t) =
     let sel, args = (
       Objc.arg cookies "setCookies" make_pointer_from_object
       ++ Objc.arg _URL "forURL" make_pointer_from_object
       ++ Objc.arg mainDocumentURL "mainDocumentURL" make_pointer_from_object
     ) ([],[]) in
       (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find_list sel) args) : unit)
   method cookieAcceptPolicy =
     (get_int (Objc.invoke Objc.tag_int repr (Selector.find "cookieAcceptPolicy:")[]) : int)
   method setCookieAcceptPolicy (cookieAcceptPolicy : int) =
     (get_unit (Objc.invoke Objc.tag_unit repr (Selector.find "setCookieAcceptPolicy:")[make_int cookieAcceptPolicy]) : unit)
end
