(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSHTTPURLRequest.methods_NSURLRequest
  inherit Im_NSURLRequest.methods
end

class t = fun (r :[`NSURLRequest] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURLRequest *)
let c = Classes.find "NSURLRequest"
let _new()= (Objc.objcnew c : [`NSURLRequest] id)
let alloc() = (Objc.objcalloc c : [`NSURLRequest] id)
(* class methods for category NSHTTPURLRequest of NSURLRequest *)
let requestWithURL (_URL : [`NSURL] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "requestWithURL:")
      [make_pointer_from_object _URL]) : [`NSURLRequest] Objc.id))
let requestWithURL_cachePolicy_timeoutInterval  (_URL : [`NSURL] Objc.t) (cachePolicy : int) (timeoutInterval : float) =
    let sel, args = (
      Objc.arg _URL "requestWithURL" make_pointer_from_object
      ++ Objc.arg cachePolicy "cachePolicy" make_int
      ++ Objc.arg timeoutInterval "timeoutInterval" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURLRequest] Objc.id))
