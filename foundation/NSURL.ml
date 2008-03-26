(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class virtual methods = object
  inherit Foundation_cati_NSURLLoading.methods_NSURL
  inherit Im_NSURL.methods
end

class t = fun (r :[`NSURL] id) -> object
  inherit methods
  inherit NSObject.methods
  method repr = Objc.forget_type r 
  method typed_repr = r
end

(* Class object for NSURL *)
let c = Classes.find "NSURL"
let _new()= (Objc.objcnew c : [`NSURL] id)
let alloc() = (Objc.objcalloc c : [`NSURL] id)
(* class methods for category NSURLLoading of NSURL *)
let fileURLWithPath (path : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "fileURLWithPath:")
      [make_pointer_from_object path]) : [`NSURL] Objc.id))
let urlWithString (_URLString : [`NSString] Objc.t) =
    (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find "URLWithString:")
      [make_pointer_from_object _URLString]) : [`NSURL] Objc.id))
let urlWithString_relativeToURL  (_URLString : [`NSString] Objc.t) (baseURL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg _URLString "URLWithString" make_pointer_from_object
      ++ Objc.arg baseURL "relativeToURL" make_pointer_from_object
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURL] Objc.id))
