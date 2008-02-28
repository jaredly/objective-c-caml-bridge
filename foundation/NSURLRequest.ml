(* THIS FILE IS GENERATED - ALL CHANGES WILL BE LOST AT THE NEXT BUILD *)
open Objc

class t = fun (r :[`NSURLRequest] id) -> object
  inherit Cati_NSHTTPURLRequest.methods_NSURLRequest
  inherit Im_NSURLRequest.methods
  method repr = r
end

(* Class object for NSURLRequest *)
let c = Classes.find "NSURLRequest"
let _new()= (Objc.objcnew c : [`NSURLRequest] id)
let alloc() = (Objc.objcalloc c : [`NSURLRequest] id)
(* class methods for category NSHTTPURLRequest of NSURLRequest *)
  (* skipping selector requestWithURL *)
let requestWithURL  ?cachePolicy:(cachePolicy : int option) ?timeoutInterval:(timeoutInterval : float option) (_URL : [`NSURL] Objc.t) =
    let sel, args = (
      Objc.arg _URL "requestWithURL" make_pointer_from_object
      ++ Objc.opt_arg cachePolicy "cachePolicy" make_int
      ++ Objc.opt_arg timeoutInterval "timeoutInterval" make_float
    ) ([],[]) in
      (new t (get_pointer (Objc.invoke Objc.tag_pointer c (Selector.find_list sel) args)
       : [`NSURLRequest] Objc.id))
