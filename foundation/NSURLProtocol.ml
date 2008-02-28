(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSURLProtocol] id) -> object
  inherit Im_NSURLProtocol.methods
  method repr = r
end

(* Class object for NSURLProtocol *)
let c = Classes.find "NSURLProtocol"
let _new()= (Objc.objcnew c : [`NSURLProtocol] id)
let alloc() = (Objc.objcalloc c : [`NSURLProtocol] id)
let canInitWithRequest (request : [`NSURLRequest] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "canInitWithRequest:")
      [make_pointer_from_object request]) : bool)
let canonicalRequestForRequest (request : [`NSURLRequest] Objc.t) =
    ((get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "canonicalRequestForRequest:")
      [make_pointer_from_object request]) : [`NSURLRequest] Objc.id))
let requestIsCacheEquivalent  ~toRequest:(b : [`NSURLRequest] Objc.t ) (a : [`NSURLRequest] Objc.t) =
    let sel, args = (
      Objc.arg a "requestIsCacheEquivalent" make_pointer_from_object
      ++ Objc.arg b "toRequest" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool c (Selector.find_list sel) args)
       : bool)
let propertyForKey  ~inRequest:(request : [`NSURLRequest] Objc.t ) (key : [`NSString] Objc.t) =
    let sel, args = (
      Objc.arg key "propertyForKey" make_pointer_from_object
      ++ Objc.arg request "inRequest" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURLProtocol] Objc.id))
let setProperty  ~forKey:(key : [`NSString] Objc.t ) ~inRequest:(request : [`NSMutableURLRequest] Objc.t ) (value : [`NSObject] Objc.t) =
    let sel, args = (
      Objc.arg value "setProperty" make_pointer_from_object
      ++ Objc.arg key "forKey" make_pointer_from_object
      ++ Objc.arg request "inRequest" make_pointer_from_object
    ) ([],[]) in
      (get_unit (Objc.invoke Objc.tag_unit c (Selector.find_list sel) args)
       : unit)
let registerClass (protocolClass : [`NSObject] Objc.t) =
    (get_bool (Objc.invoke Objc.tag_bool c (Selector.find "registerClass:")
      [make_pointer_from_object protocolClass]) : bool)
let unregisterClass (protocolClass : [`NSObject] Objc.t) =
    (get_unit (Objc.invoke Objc.tag_unit c (Selector.find "unregisterClass:")
      [make_pointer_from_object protocolClass]) : unit)
