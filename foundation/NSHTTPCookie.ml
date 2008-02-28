(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSHTTPCookie] id) -> object
  inherit Im_NSHTTPCookie.methods
  method repr = r
end

(* Class object for NSHTTPCookie *)
let c = Classes.find "NSHTTPCookie"
let _new()= (Objc.objcnew c : [`NSHTTPCookie] id)
let alloc() = (Objc.objcalloc c : [`NSHTTPCookie] id)
let cookieWithProperties (properties : [`NSDictionary] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "cookieWithProperties:")
      [make_pointer_from_object properties]) : [`NSHTTPCookie] Objc.id))
let requestHeaderFieldsWithCookies (cookies : [`NSArray] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "requestHeaderFieldsWithCookies:")
      [make_pointer_from_object cookies]) : [`NSDictionary] Objc.id))
let cookiesWithResponseHeaderFields  ~forURL:(_URL : [`NSURL] Objc.t ) (headerFields : [`NSDictionary] Objc.t) =
    let sel, args = (
      Objc.arg headerFields "cookiesWithResponseHeaderFields" make_pointer_from_object
      ++ Objc.arg _URL "forURL" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
