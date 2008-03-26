(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

(* Encapsulation of methods for native instance of NSHTTPCookieStorage *)
class virtual methods = object (self)
  method virtual repr : [`NSObject] Objc.id
  method cookies =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cookies")[])
       : [`NSArray] Objc.id))
  method setCookie (cookie : [`NSHTTPCookie] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCookie:")
      [make_pointer_from_object cookie]) : unit)
  method deleteCookie (cookie : [`NSHTTPCookie] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "deleteCookie:")
      [make_pointer_from_object cookie]) : unit)
  method cookiesForURL (_URL : [`NSURL] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer self#repr (Selector.find "cookiesForURL:")
      [make_pointer_from_object _URL]) : [`NSArray] Objc.id))
  method setCookies_forURL_mainDocumentURL  (cookies : [`NSArray] Objc.t) (_URL : [`NSURL] Objc.t) (mainDocumentURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg cookies "setCookies" make_pointer_from_object
      ++ Objc.arg _URL "forURL" make_pointer_from_object
      ++ Objc.arg mainDocumentURL "mainDocumentURL" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find_list sel) args)
       : unit)
  method cookieAcceptPolicy =
    (get_int (Objc.invoke Objc.tag_int self#repr (Selector.find "cookieAcceptPolicy")[])
       : int)
  method setCookieAcceptPolicy (cookieAcceptPolicy : int) =
    (get_unit (Objc.invoke Objc.tag_unit self#repr (Selector.find "setCookieAcceptPolicy:")
      [make_int cookieAcceptPolicy]) : unit)
end
