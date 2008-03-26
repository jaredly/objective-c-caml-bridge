(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Im_NSURLProtocol.methods
end

class t = fun (r :[`NSURLProtocol] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
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
let requestIsCacheEquivalent_toRequest  (a : [`NSURLRequest] Objc.t) (b : [`NSURLRequest] Objc.t) =
    let sel, args = (
      Objc.arg a "requestIsCacheEquivalent" make_pointer_from_object
      ++ Objc.arg b "toRequest" make_pointer_from_object
    ) ([],[]) in
      (get_bool (Objc.invoke Objc.tag_bool c (Selector.find_list sel) args)
       : bool)
let propertyForKey_inRequest  (key : [`NSString] Objc.t) (request : [`NSURLRequest] Objc.t) =
    let sel, args = (
      Objc.arg key "propertyForKey" make_pointer_from_object
      ++ Objc.arg request "inRequest" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURLProtocol] Objc.id))
let setProperty_forKey_inRequest  (value : [`NSObject] Objc.t) (key : [`NSString] Objc.t) (request : [`NSMutableURLRequest] Objc.t) =
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
