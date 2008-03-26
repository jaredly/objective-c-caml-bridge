(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSHTTPCookie.methods
end

class t = fun (r :[`NSHTTPCookie] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
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
let cookiesWithResponseHeaderFields_forURL  (headerFields : [`NSDictionary] Objc.t) (_URL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg headerFields "cookiesWithResponseHeaderFields" make_pointer_from_object
      ++ Objc.arg _URL "forURL" make_pointer_from_object
    ) ([],[]) in
      ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSArray] Objc.id))
